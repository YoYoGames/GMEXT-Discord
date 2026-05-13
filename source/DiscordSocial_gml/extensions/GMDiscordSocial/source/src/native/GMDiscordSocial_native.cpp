#include "GMDiscordSocial_native.h"

#include <atomic>
#include <deque>
#include <mutex>

#define DISCORDPP_IMPLEMENTATION
#include "discordpp.h"

using namespace gm::wire;
using namespace gm_structs;
using namespace gm_enums;

std::unique_ptr<discordpp::Client> g_client;

struct AudioFrame {
    uint64_t frame_id;
    int32_t sample_rate;
    uint64_t channels;
    std::vector<int16_t> samples; // interleaved PCM
};

struct AudioStreamQueue {
    std::deque<AudioFrame> frames;
    std::size_t maxFrames = 8; // 6–8 is a good starting point

    void push(AudioFrame&& frame)
    {
        // Drop oldest if we’re too far behind
        if (frames.size() >= maxFrames) {
            frames.pop_front(); // old frame destroyed here
        }
        frames.push_back(std::move(frame));
    }

    bool pop(AudioFrame& out)
    {
        if (frames.empty())
            return false;
        out = std::move(frames.front());
        frames.pop_front();
        return true;
    }

    bool empty() const { return frames.empty(); }
};

struct AudioCallState {
    struct PerUser {
        AudioStreamQueue received; // queue of frames per user
        uint64_t next_frame_id = 1;
    };

    std::mutex received_mu; // guards received_per_user and all PerUser queues
    std::unordered_map<uint64_t, PerUser> received_per_user;

    std::mutex captured_mu; // guards captured and next_captured_frame_id
    AudioStreamQueue captured; // queue of captured frames
    uint64_t next_captured_frame_id = 1;
};

static std::unordered_map<uint64_t, std::shared_ptr<AudioCallState>> g_calls;

inline gm_structs::DiscordActivity fromNative(const discordpp::Activity& activity);
inline gm_structs::DiscordRelationshipHandle fromNative(const discordpp::RelationshipHandle& relationship);
inline gm_structs::DiscordMessageHandle fromNative(const discordpp::MessageHandle& msg);

template<typename T>
auto fromNative(const std::vector<T>& src);

template<typename T>
auto fromNative(const std::optional<T>& src) -> std::optional<decltype(fromNative(std::declval<const T&>()))>;

// FROM NATIVE TO GM COMPATIBLE

inline gm_structs::DiscordActivityButton fromNative(const discordpp::ActivityButton& button)
{
    gm_structs::DiscordActivityButton gm {};
    if (!button) return gm;
    gm.label = button.Label();
    gm.url = button.Url();
    return gm;
}

inline gm_structs::DiscordActivityAssets fromNative(const discordpp::ActivityAssets& assets)
{
    gm_structs::DiscordActivityAssets gm {};
    if (!assets) return gm;
    gm.large_image = assets.LargeImage();
    gm.large_text = assets.LargeText();
    gm.large_url = assets.LargeUrl();
    gm.small_image = assets.SmallImage();
    gm.small_text = assets.SmallText();
    gm.small_url = assets.SmallUrl();
    gm.invite_cover_image = assets.InviteCoverImage();
    return gm;
}

inline gm_structs::DiscordActivityTimestamps fromNative(const discordpp::ActivityTimestamps& ts)
{
    gm_structs::DiscordActivityTimestamps gm {};
    if (!ts) return gm;
    if (ts.Start() != 0) {
        gm.start = ts.Start();
    }
    if (ts.End() != 0) {
        gm.end = ts.End();
    }
    return gm;
}

inline gm_structs::DiscordVoiceStateHandle fromNative(const discordpp::VoiceStateHandle& voiceState)
{
    gm_structs::DiscordVoiceStateHandle gm {};
    if (!voiceState) return gm;
    gm.self_deaf = voiceState.SelfDeaf();
    gm.self_mute = voiceState.SelfMute();
    return gm;
}

inline gm_structs::DiscordVADThresholdSettings fromNative(const discordpp::VADThresholdSettings& settings)
{
    gm_structs::DiscordVADThresholdSettings gm {};
    if (!settings) return gm;
    gm.automatic = settings.Automatic();
    gm.vad_threshold = settings.VadThreshold();
    return gm;
}

inline gm_structs::DiscordUserApplicationProfileHandle fromNative(const discordpp::UserApplicationProfileHandle& profile)
{
    gm_structs::DiscordUserApplicationProfileHandle gm {};
    if (!profile) return gm;
    gm.avatar_hash = profile.AvatarHash();
    gm.metadata = profile.Metadata();
    gm.provider_id = profile.ProviderId();
    gm.provider_issued_user_id = profile.ProviderIssuedUserId();
    gm.provider_type = static_cast<double>(profile.ProviderType());
    gm.username = profile.Username();
    return gm;
}

inline gm_structs::DiscordUserMessageSummary fromNative(const discordpp::UserMessageSummary& summary)
{
    gm_structs::DiscordUserMessageSummary gm {};
    if (!summary) return gm;
    gm.user_id = summary.UserId();
    gm.last_message_id = summary.LastMessageId();
    return gm;
}

// Call -> GM
inline gm_structs::DiscordCall fromNative(discordpp::Call& call)
{
    gm_structs::DiscordCall gm {};

    if (!call) {
        return gm;
    }

    gm.audio_mode = static_cast<gm_enums::DiscordAudioModeType>(call.GetAudioMode());
    gm.channel_id = call.GetChannelId();
    gm.guild_id = call.GetGuildId();

    std::vector<uint64_t> participants;
    for (auto participant_id : call.GetParticipants()) {
        participants.push_back(participant_id);
    }
    gm.participants = participants;

    gm.ptt_active = call.GetPTTActive();
    gm.ptt_release_delay = call.GetPTTReleaseDelay();
    gm.self_deaf = call.GetSelfDeaf();
    gm.self_mute = call.GetSelfMute();
    gm.vad_threshold = fromNative(call.GetVADThreshold());
    gm.status = (gm_enums::DiscordCallStatus)call.GetStatus();

    return gm;
}

// Adapter for const Call, used by templates / APIs that only have const
inline gm_structs::DiscordCall fromNative(const discordpp::Call& call)
{
    // We *promise* we’re only calling logically-const getters.
    return fromNative(const_cast<discordpp::Call&>(call));
}

// ActivityInvite -> GM
inline gm_structs::DiscordActivityInvite fromNative(const discordpp::ActivityInvite& activityInvite)
{
    gm_structs::DiscordActivityInvite gm {};
    if (!activityInvite) return gm;
    gm.type = static_cast<gm_enums::ActivityActionTypes>(activityInvite.Type());
    gm.sender_id = activityInvite.SenderId();
    gm.application_id = activityInvite.ApplicationId();
    gm.parent_application_id = activityInvite.ParentApplicationId();
    gm.channel_id = activityInvite.ChannelId();
    gm.message_id = activityInvite.MessageId();
    gm.is_valid = activityInvite.IsValid();
    gm.party_id = activityInvite.PartyId();
    gm.session_id = activityInvite.SessionId();
    return gm;
}

// RelationshipHandle -> DiscordRelationshipSnapshot (no user back-ref, breaks cycle)
inline gm_structs::DiscordRelationshipSnapshot fromNativeSnapshot(const discordpp::RelationshipHandle& rel)
{
    gm_structs::DiscordRelationshipSnapshot gm {};
    if (!rel) return gm;
    gm.discord_relationship_type = static_cast<gm_enums::DiscordRelationshipType>(rel.DiscordRelationshipType());
    gm.game_relationship_type = static_cast<gm_enums::DiscordRelationshipType>(rel.GameRelationshipType());
    gm.is_spam_request = rel.IsSpamRequest();
    gm.id = rel.Id();

    return gm;
}

// UserHandle -> GM
inline gm_structs::DiscordUserHandle fromNative(const discordpp::UserHandle& user)
{
    gm_structs::DiscordUserHandle gm {};
    if (!user) return gm;

    gm.id = user.Id();
    gm.username = user.Username();
    gm.display_name = user.DisplayName();
    gm.avatar = user.Avatar();
    gm.avatar_url = user.AvatarUrl(discordpp::UserHandle::AvatarType::Png, discordpp::UserHandle::AvatarType::Png);
    gm.global_name = user.GlobalName();
    gm.is_provisional = user.IsProvisional();
    gm.status = static_cast<gm_enums::DiscordStatusType>(user.Status());
    gm.avatar_type = (gm_enums::DiscordAvatarType) discordpp::UserHandle::AvatarType::Png;
    gm.avatar_type_string = user.AvatarTypeToString(discordpp::UserHandle::AvatarType::Png);
    auto rel = user.Relationship();
    if (rel) {
        gm.relationship = fromNativeSnapshot(rel);
    }
    for (const auto& profile : user.UserApplicationProfiles()) {
        gm.user_application_profiles.emplace_back(fromNative(profile));
    }
    if (user.GameActivity().has_value()) {
        gm.game_activity = fromNative(user.GameActivity().value());
    }
    return gm;
}

// RelationshipHandle -> GM
inline gm_structs::DiscordRelationshipHandle fromNative(const discordpp::RelationshipHandle& relationship)
{
    gm_structs::DiscordRelationshipHandle gm {};
    if (!relationship) return gm;
    gm.id = relationship.Id();
    gm.discord_relationship_type = static_cast<gm_enums::DiscordRelationshipType>(relationship.DiscordRelationshipType());
    gm.game_relationship_type = static_cast<gm_enums::DiscordRelationshipType>(relationship.GameRelationshipType());
    gm.is_spam_request = relationship.IsSpamRequest();

    if (relationship.User().has_value()) {
        gm.user = fromNative(relationship.User().value());
    }

    return gm;
}

// ActivityParty -> GM
inline gm_structs::DiscordActivityParty fromNative(const discordpp::ActivityParty& party)
{
    gm_structs::DiscordActivityParty gm {};
    if (!party) return gm;
    gm.activity_party_id = party.Id();
    gm.current_size = party.CurrentSize();
    gm.max_size = party.MaxSize();
    gm.privacy = static_cast<gm_enums::DiscordActivityPartyPrivacy>(party.Privacy());
    return gm;
}

// ActivitySecrets -> GM
inline gm_structs::DiscordActivitySecrets fromNative(const discordpp::ActivitySecrets& secrets)
{
    gm_structs::DiscordActivitySecrets gm {};
    if (!secrets) return gm;
    gm.join = secrets.Join();
    return gm;
}

// Activity -> GM
inline gm_structs::DiscordActivity fromNative(const discordpp::Activity& activity)
{
    gm_structs::DiscordActivity gm {};
    if (!activity) return gm;

    gm.type = (gm_enums::DiscordActivityTypes)activity.Type();
    gm.details = activity.Details();
    gm.state = activity.State();
    gm.name = activity.Name();

    auto statusDisplayType = activity.StatusDisplayType();
    if (statusDisplayType.has_value()) {
        gm.status_display_type =
            static_cast<gm_enums::DiscordStatusDisplayTypes>(statusDisplayType.value());
    } else {
        // pick a safe default OR leave untouched
        //gm.status_display_type = gm_enums::DiscordStatusDisplayTypes::Default;
    }

    gm.state_url = activity.StateUrl();
    gm.details_url = activity.DetailsUrl();
    gm.application_id = activity.ApplicationId();
    gm.parent_application_id = activity.ParentApplicationId();
    gm.supported_platforms = static_cast<gm_enums::DiscordActivityGamePlatforms>(activity.SupportedPlatforms());

    if (activity.Assets().has_value()) {
        gm.assets = fromNative(activity.Assets().value());
    }

    if (activity.Timestamps().has_value()) {
        gm.timestamps = fromNative(activity.Timestamps().value());
    }

    if (activity.Secrets().has_value()) {
        gm.secrets = fromNative(activity.Secrets().value());
    }

    if (activity.Party().has_value()) {
        gm.party = fromNative(activity.Party().value());
    }

    gm.buttons.clear();
    for (const auto& button : activity.GetButtons()) {
        gm.buttons.emplace_back(fromNative(button));
    }

    return gm;
}

// ChannelHandle -> GM
inline gm_structs::DiscordChannelHandle fromNative(const discordpp::ChannelHandle& channel)
{
    gm_structs::DiscordChannelHandle gm {};
    if (!channel) return gm;
    gm.channel_id = channel.Id();
    gm.name = channel.Name();
    gm.type = static_cast<uint32_t>(channel.Type());
    gm.recipients = channel.Recipients();
    return gm;
}

// LobbyMemberHandle -> GM
inline gm_structs::DiscordLobbyMemberHandle fromNative(const discordpp::LobbyMemberHandle& member)
{
    gm_structs::DiscordLobbyMemberHandle gm {};
    if (!member) return gm;

    gm.id = member.Id();
    gm.can_link_lobby = member.CanLinkLobby();
    gm.connected = member.Connected();

    if (member.User().has_value()) {
        gm.user = fromNative(member.User().value());
    }

    for (const auto& item : member.Metadata()) {
        gm.metadata.addKeyValue(item.first, item.second);
    }

    return gm;
}

// LinkedChannel -> GM
inline gm_structs::DiscordLinkedChannel fromNative(const discordpp::LinkedChannel& linked)
{
    gm_structs::DiscordLinkedChannel gm {};
    if (!linked) return gm;
    gm.guild_id = linked.GuildId();
    gm.id = linked.Id();
    gm.name = linked.Name();
    return gm;
}

inline gm_structs::DiscordCallVoiceStateEntry fromNative(
    uint64_t user_id, const discordpp::VoiceStateHandle& voiceState)
{
    gm_structs::DiscordCallVoiceStateEntry gm {};
    gm.user_id = user_id;
    if (!voiceState) return gm;
    gm.voice_state_handle = fromNative(voiceState);
    return gm;
}

inline gm_structs::DiscordCallInfoHandle fromNative(const discordpp::CallInfoHandle& info)
{
    gm_structs::DiscordCallInfoHandle gm {};
    if (!info) return gm;
    gm.channel_id = info.ChannelId();
    gm.guild_id = info.GuildId();

    for (uint64_t userId : info.GetParticipants()) {
        gm.participants.emplace_back(userId);

        auto voiceState = info.GetVoiceStateHandle(userId);
        if (voiceState.has_value()) {
            gm.voice_state_handles.emplace_back(fromNative(userId, voiceState.value()));
        }
    }

    return gm;
}

// LobbyHandle -> GM
inline gm_structs::DiscordLobbyHandle fromNative(const discordpp::LobbyHandle& lobby)
{
    gm_structs::DiscordLobbyHandle gm {};
    if (!lobby) return gm;

    gm.id = lobby.Id();
    gm.lobby_member_ids = lobby.LobbyMemberIds();

    for (const auto& user : lobby.LobbyMembers()) {
        gm.lobby_members.emplace_back(fromNative(user));
    }

    for (const auto& item : lobby.Metadata()) {
        gm.metadata.addKeyValue(item.first, item.second);
    }

    if (lobby.GetCallInfoHandle().has_value()) {
        auto call_info = fromNative(lobby.GetCallInfoHandle().value());
        gm.call_info_handle = call_info;
    }

    if (lobby.LinkedChannel().has_value()) {
        gm.linked_channel = fromNative(lobby.LinkedChannel().value());
    }

    return gm;
}

// AdditionalContent -> GM
inline gm_structs::DiscordAdditionalContent fromNative(const discordpp::AdditionalContent& ac)
{
    gm_structs::DiscordAdditionalContent gm {};
    if (!ac) return gm;

    gm.type  = static_cast<gm_enums::DiscordAdditionalContentType>(ac.Type());
    gm.count = static_cast<double>(ac.Count());

    if (ac.Title().has_value()) {
        gm.title = ac.Title().value();
    } else {
        gm.title = "";
    }

    return gm;
}

// MessageHandle -> GM
inline gm_structs::DiscordMessageHandle fromNative(const discordpp::MessageHandle& msg)
{
    gm_structs::DiscordMessageHandle gm {};
    if (!msg) return gm;

    gm.id = msg.Id();

    if (msg.Author().has_value()) {
        gm.author = fromNative(msg.Author().value());
    }
    gm.author_id = msg.AuthorId();

    if (msg.Channel().has_value()) {
        gm.channel = fromNative(msg.Channel().value());
    }
    gm.channel_id = msg.ChannelId();

    if (msg.DisclosureType().has_value()) {
        gm.disclosure_type = static_cast<DiscordDisclosureTypes>(msg.DisclosureType().value());
    }

    if (msg.Lobby().has_value()) {
        gm.lobby = fromNative(msg.Lobby().value());
    }

    gm.content = msg.Content();
    gm.edited_timestamp = msg.EditedTimestamp();

    gm.metadata = {};
    for (const auto& item : msg.Metadata()) {
        gm.metadata.addKeyValue(item.first, item.second);
    }

    // CHANGED: additional_content now returns all fields (type/title/count), not a string
    if (msg.AdditionalContent().has_value()) {
        gm.additional_content = fromNative(msg.AdditionalContent().value());
    }
    // else: leave as empty optional

    gm.raw_content = msg.RawContent();

    if (msg.Recipient().has_value()) {
        gm.recipient = fromNative(msg.Recipient().value());
    }

    gm.recipient_id = msg.RecipientId();
    gm.sent_from_game = msg.SentFromGame();
    gm.sent_timestamp = msg.SentTimestamp();

    if (msg.ApplicationId().has_value()) {
        gm.application_id = msg.ApplicationId().value();
    }

    gm.moderation_metadata = {};
    for (const auto& item : msg.ModerationMetadata()) {
        gm.moderation_metadata.addKeyValue(item.first, item.second);
    }

    return gm;
}

// ClientResult -> GM
inline gm_structs::DiscordClientResult fromNative(const discordpp::ClientResult& clientResult)
{
    gm_structs::DiscordClientResult gm {};
    if (!clientResult) return gm;
    gm.error = clientResult.Error();
    gm.error_code = clientResult.ErrorCode();
    gm.successful = clientResult.Successful();
    gm.retryable = clientResult.Retryable();
    gm.response_body = clientResult.ResponseBody();
    gm.status = static_cast<int32_t>(clientResult.Status());
    gm.type = static_cast<gm_enums::DiscordErrorType>(clientResult.Type());
    gm.retry_after = clientResult.RetryAfter();
    return gm;
}

// AudioDevice -> GM
inline gm_structs::DiscordAudioDevice fromNative(const discordpp::AudioDevice& audioDevice)
{
    gm_structs::DiscordAudioDevice gm {};
    if (!audioDevice) return gm;
    gm.id = audioDevice.Id();
    gm.name = audioDevice.Name();
    gm.is_default = audioDevice.IsDefault();
    return gm;
}

// LinkedLobby -> GM (optional inner)
inline std::optional<gm_structs::DiscordLinkedLobby>
fromNative(const std::optional<discordpp::LinkedLobby>& linkedLobby)
{
    if (!linkedLobby)
        return std::nullopt;

    const auto& value = *linkedLobby;
    gm_structs::DiscordLinkedLobby gm {};
    gm.application_id = value.ApplicationId();
    gm.lobby_id = value.LobbyId();
    return gm;
}

// GuildChannel -> GM
inline gm_structs::DiscordGuildChannel fromNative(const discordpp::GuildChannel& guildChannel)
{
    gm_structs::DiscordGuildChannel gm {};
    if (!guildChannel) return gm;
    gm.id = guildChannel.Id();
    gm.is_linkable = guildChannel.IsLinkable();
    gm.is_fully_public = guildChannel.IsViewableAndWriteableByAllMembers();
    gm.is_viewable_and_writeable_by_all_members = guildChannel.IsViewableAndWriteableByAllMembers();
    gm.linked_lobby = fromNative(guildChannel.LinkedLobby());
    gm.position = guildChannel.Position();
    if(guildChannel.ParentId().has_value())
        gm.parent_id = guildChannel.ParentId().value();
    gm.type = (gm_enums::DiscordChannelType) guildChannel.Type();
    gm.name = guildChannel.Name();
    return gm;
}

// GuildMinimal -> GM
inline gm_structs::DiscordGuildMinimal fromNative(const discordpp::GuildMinimal& guild)
{
    gm_structs::DiscordGuildMinimal gm {};
    if (!guild) return gm;
    gm.id = guild.Id();
    gm.name = guild.Name();
    return gm;
}

inline std::vector<gm_structs::DiscordGuildMinimal> fromNative(const std::vector<discordpp::GuildMinimal>& src)
{
    std::vector<gm_structs::DiscordGuildMinimal> out;
    out.reserve(src.size());
    for (const auto& item : src) out.emplace_back(fromNative(item));
    return out;
}

inline std::vector<gm_structs::DiscordGuildChannel> fromNative(const std::vector<discordpp::GuildChannel>& src)
{
    std::vector<gm_structs::DiscordGuildChannel> out;
    out.reserve(src.size());
    for (const auto& item : src) out.emplace_back(fromNative(item));
    return out;
}

inline std::vector<gm_structs::DiscordAudioDevice> fromNative(const std::vector<discordpp::AudioDevice>& src)
{
    std::vector<gm_structs::DiscordAudioDevice> out;
    out.reserve(src.size());
    for (const auto& item : src) out.emplace_back(fromNative(item));
    return out;
}

inline std::vector<gm_structs::DiscordRelationshipHandle> fromNative(const std::vector<discordpp::RelationshipHandle>& src)
{
    std::vector<gm_structs::DiscordRelationshipHandle> out;
    out.reserve(src.size());
    for (const auto& item : src) out.emplace_back(fromNative(item));
    return out;
}

inline std::vector<gm_structs::DiscordUserHandle> fromNative(const std::vector<discordpp::UserHandle>& src)
{
    std::vector<gm_structs::DiscordUserHandle> out;
    out.reserve(src.size());
    for (const auto& item : src) out.emplace_back(fromNative(item));
    return out;
}

inline std::vector<gm_structs::DiscordCall> fromNative(std::vector<discordpp::Call>& src)
{
    std::vector<gm_structs::DiscordCall> out;
    out.reserve(src.size());
    for (auto& item : src) out.emplace_back(fromNative(item));
    return out;
}

template<typename T>
auto fromNative(const std::vector<T>& src)
{
    using GMType = decltype(fromNative(std::declval<const T&>()));

    std::vector<GMType> out;
    out.reserve(src.size());
    for (const auto& item : src) {
        out.emplace_back(fromNative(item));
    }
    return out;
}

template<typename T>
auto fromNative(const std::optional<T>& src) -> std::optional<decltype(fromNative(std::declval<const T&>()))>
{
    using GMType = decltype(fromNative(std::declval<const T&>()));

    if (!src)
        return std::nullopt;

    return std::optional<GMType> {fromNative(*src)};
}

// FROM GM TO NATIVE COMPATIBLE

inline discordpp::ActivityButton toNative(const gm_structs::DiscordActivityButton& button)
{
    discordpp::ActivityButton native {};
    native.SetLabel(button.label);
    native.SetUrl(button.url);
    return native;
}

inline std::optional<discordpp::ActivityAssets> toNative(const std::optional<gm_structs::DiscordActivityAssets>& assets)
{
    if (!assets)
        return std::nullopt;
    const auto& value = *assets;
    discordpp::ActivityAssets native {};
    native.SetLargeImage(value.large_image);
    native.SetLargeText(value.large_text);
    native.SetLargeUrl(value.large_url);
    native.SetSmallImage(value.small_image);
    native.SetSmallText(value.small_text);
    native.SetSmallUrl(value.small_url);
    native.SetInviteCoverImage(value.invite_cover_image);
    return native;
}

inline std::optional<discordpp::ActivityTimestamps> toNative(const std::optional<gm_structs::DiscordActivityTimestamps>& ts)
{
    if (!ts)
        return std::nullopt;
    const auto& value = *ts;
    discordpp::ActivityTimestamps native {};
    if (value.start.has_value()) {
        native.SetStart(value.start.value());
    }
    if (value.end.has_value()) {
        native.SetEnd(value.end.value());
    }
    return native;
}

// GM -> ActivityInvite
inline discordpp::ActivityInvite toNative(const gm_structs::DiscordActivityInvite& activity_invite)
{
    discordpp::ActivityInvite activityInvite;

    activityInvite.SetType((discordpp::ActivityActionTypes)activity_invite.type);
    activityInvite.SetSenderId(activity_invite.sender_id);
    activityInvite.SetApplicationId(activity_invite.application_id);
    activityInvite.SetParentApplicationId(activity_invite.parent_application_id);
    activityInvite.SetChannelId(activity_invite.channel_id);
    activityInvite.SetMessageId(activity_invite.message_id);
    activityInvite.SetIsValid(activity_invite.is_valid);
    activityInvite.SetPartyId(activity_invite.party_id);
    activityInvite.SetSessionId(activity_invite.session_id);

    return activityInvite;
}

// GM -> ActivitySecrets
inline std::optional<discordpp::ActivitySecrets>
toNative(const std::optional<gm_structs::DiscordActivitySecrets>& activity_secret)
{
    if (!activity_secret)
        return std::nullopt;

    const auto& value = *activity_secret;

    discordpp::ActivitySecrets native {};
    native.SetJoin(value.join);

    return native;
}

// GM -> ActivityParty
inline std::optional<discordpp::ActivityParty>
toNative(const std::optional<gm_structs::DiscordActivityParty>& activity_party)
{
    if (!activity_party)
        return std::nullopt;

    const auto& value = *activity_party;

    discordpp::ActivityParty native;
    native.SetId(value.activity_party_id);
    if (value.current_size.has_value()) {
        native.SetCurrentSize(value.current_size.value());
    }
    if (value.max_size.has_value()) {
        native.SetMaxSize(value.max_size.value());
    }
    native.SetPrivacy((discordpp::ActivityPartyPrivacy)value.privacy);

    return native;
}

// GM -> ActivityInvite
inline discordpp::Activity toNative(const gm_structs::DiscordActivity& activity_invite)
{
    discordpp::Activity activity;
    activity.SetType((discordpp::ActivityTypes)activity_invite.type);
    activity.SetState(activity_invite.state);
    activity.SetDetails(activity_invite.details);
    activity.SetName(activity_invite.name);
    if (activity_invite.status_display_type.has_value()) {
        activity.SetStatusDisplayType(static_cast<discordpp::StatusDisplayTypes>(activity_invite.status_display_type.value()));
    }
    activity.SetStateUrl(activity_invite.state_url);
    activity.SetDetailsUrl(activity_invite.details_url);
    activity.SetAssets(toNative(activity_invite.assets));
    activity.SetTimestamps(toNative(activity_invite.timestamps));
    if (activity_invite.supported_platforms.has_value()) {
        activity.SetSupportedPlatforms(static_cast<discordpp::ActivityGamePlatforms>(activity_invite.supported_platforms.value()));
    }
    activity.SetSecrets(toNative(activity_invite.secrets));
    activity.SetParty(toNative(activity_invite.party));
    for (const auto& button : activity_invite.buttons) {
        activity.AddButton(toNative(button));
    }
    return activity;
}

// API

void discord_social_run_callbacks() { discordpp::RunCallbacks(); }

void discord_social_init(const std::optional<gm_structs::DiscordClientCreateOptions>& options)
{
    if (!options.has_value()) {
        g_client = std::make_unique<discordpp::Client>();
        return;
    }

    const auto& opts = options.value();
    discordpp::ClientCreateOptions native_options;

    if (!opts.api_base.empty()) {
        native_options.SetApiBase(opts.api_base);
    }
    if (!opts.web_base.empty()) {
        native_options.SetWebBase(opts.web_base);
    }

    native_options.SetExperimentalAudioSystem(static_cast<discordpp::AudioSystem>(opts.experimental_audio_system));
    native_options.SetExperimentalAndroidPreventCommsForBluetooth(opts.experimental_android_prevent_comms_for_bluetooth);

    if (opts.cpu_affinity_mask.has_value()) {
        native_options.SetCpuAffinityMask(opts.cpu_affinity_mask);
    }

    g_client = std::make_unique<discordpp::Client>(std::move(native_options));
}

void discord_social_shutdown()
{
    // Stop any ongoing calls first (optional but nice)
    g_client->EndCalls([]() {});

    // Disconnect the client
    g_client->Disconnect();

    // Clear audio state
    g_calls.clear();

    // Finally destroy the client object
    g_client.reset();
}

void discord_social_client_end_call(std::uint64_t channel_id, const gm::wire::GMFunction& callback)
{
    g_client->EndCall(channel_id, [channel_id, callback]() {
        g_calls.erase(channel_id);
        callback.call();
    });
}

void discord_social_client_end_calls(const gm::wire::GMFunction& callback)
{
    g_client->EndCalls([callback]() {
        g_calls.clear();
        callback.call();
    });
}

gm_structs::DiscordCall discord_social_client_get_call(std::uint64_t channel_id)
{
    discordpp::Call call = g_client->GetCall(channel_id);
    return fromNative(call);
}

std::vector<gm_structs::DiscordCall> discord_social_client_get_calls()
{
    std::vector<discordpp::Call> calls = g_client->GetCalls();
    return fromNative(calls);
}

void discord_social_client_get_current_input_device(const gm::wire::GMFunction& callback)
{
    g_client->GetCurrentInputDevice([callback](discordpp::AudioDevice device) { callback.call(fromNative(device)); });
}

void discord_social_client_get_current_output_device(const gm::wire::GMFunction& callback)
{
    g_client->GetCurrentOutputDevice([callback](discordpp::AudioDevice device) { callback.call(fromNative(device)); });
}

void discord_social_client_get_input_devices(const gm::wire::GMFunction& callback)
{
    g_client->GetInputDevices([callback](std::vector<discordpp::AudioDevice> devices) {
        gm::wire::ArrayStream stream;
        for (const auto& d : devices) stream << fromNative(d);
        callback.call(stream);
    });
}

float discord_social_client_get_input_volume() { return g_client->GetInputVolume(); }

void discord_social_client_get_output_devices(const gm::wire::GMFunction& callback)
{
    g_client->GetOutputDevices([callback](std::vector<discordpp::AudioDevice> devices) {
        gm::wire::ArrayStream stream;
        for (const auto& d : devices) stream << fromNative(d);
        callback.call(stream);
    });
}

float discord_social_client_get_output_volume() { return g_client->GetOutputVolume(); }

bool discord_social_client_get_self_deaf_all() { return g_client->GetSelfDeafAll(); }

bool discord_social_client_get_self_mute_all() { return g_client->GetSelfMuteAll(); }

void discord_social_client_set_automatic_gain_control(bool on) { g_client->SetAutomaticGainControl(on); }

void discord_social_client_remove_device_change_callback() { g_client->SetDeviceChangeCallback(nullptr); }

void discord_social_client_set_device_change_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetDeviceChangeCallback([callback](
                                          std::vector<discordpp::AudioDevice> inputDevices,
                                          std::vector<discordpp::AudioDevice> outputDevices
                                      ) {
        gm::wire::ArrayStream in_stream, out_stream;
        for (const auto& d : inputDevices) in_stream << fromNative(d);
        for (const auto& d : outputDevices) out_stream << fromNative(d);
        callback.call(in_stream, out_stream);
    });
}

void discord_social_client_set_echo_cancellation(bool on) { g_client->SetEchoCancellation(on); }

void discord_social_client_set_input_device(std::string_view device_id, const gm::wire::GMFunction& callback)
{
    g_client->SetInputDevice(std::string(device_id), [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_set_input_volume(float vol) { g_client->SetInputVolume(vol); }

void discord_social_client_remove_no_audio_input_callback() { g_client->SetNoAudioInputCallback(nullptr); }

void discord_social_client_set_no_audio_input_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetNoAudioInputCallback([callback](bool inputDetected) { callback.call(inputDetected); });
}

void discord_social_client_set_no_audio_input_threshold(float threshold)
{
    g_client->SetNoAudioInputThreshold(threshold);
}

void discord_social_client_set_noise_suppression(bool on) { g_client->SetNoiseSuppression(on); }

void discord_social_client_set_opus_hardware_coding(bool encode, bool decode)
{
    g_client->SetOpusHardwareCoding(encode, decode);
}

void discord_social_client_set_output_device(std::string_view device_id, const gm::wire::GMFunction& callback)
{
    g_client->SetOutputDevice(std::string(device_id), [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_set_output_volume(float decode) { g_client->SetOutputVolume(static_cast<float>(decode)); }

void discord_social_client_set_self_deaf_all(bool deaf) { g_client->SetSelfDeafAll(deaf); }

void discord_social_client_set_self_mute_all(bool mute) { g_client->SetSelfMuteAll(mute); }

void discord_social_client_set_thread_priority(gm_enums::DiscordClientThread thread, std::int32_t priority)
{
    g_client->SetThreadPriority((discordpp::Client::Thread)thread, priority);
}

void discord_social_client_remove_voice_participant_changed_callback()
{
    g_client->SetVoiceParticipantChangedCallback(nullptr);
}

void discord_social_client_set_voice_participant_changed_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetVoiceParticipantChangedCallback([callback](uint64_t lobbyId, uint64_t memberId, bool added) {
        callback.call(lobbyId, memberId, added);
    });
}

bool discord_social_client_show_audio_route_picker() { return g_client->ShowAudioRoutePicker(); }

gm_structs::DiscordCall discord_social_client_start_call(std::uint64_t channel_id)
{
    discordpp::Call call = g_client->StartCall(channel_id);
    return fromNative(call);
}

std::atomic<bool> g_shouldMute{false};

void discord_social_call_audio_should_mute(bool should_mute)
{
    g_shouldMute.store(should_mute);
}

gm_structs::DiscordCall discord_social_client_start_call_with_audio_callbacks(
    std::uint64_t lobby_id, const gm::wire::GMFunction& received_callback, const gm::wire::GMFunction& captured_callback
)
{
    auto state = std::make_shared<AudioCallState>();
    g_calls[lobby_id] = state; // this line *will* work with that declaration

    discordpp::Call call = g_client->StartCallWithAudioCallbacks(
        lobby_id,
        [state, lobby_id, received_callback](
            uint64_t userId,
            int16_t const* data,
            uint64_t samplesPerChannel,
            int32_t sampleRate,
            uint64_t channels,
            bool& outShouldMute
        ) {
            const uint64_t totalSamples = samplesPerChannel * channels;

            {
                std::lock_guard<std::mutex> lock(state->received_mu);
                auto& perUser = state->received_per_user[userId];
                AudioFrame frame;
                frame.frame_id = perUser.next_frame_id++;
                frame.sample_rate = sampleRate;
                frame.channels = channels;
                frame.samples.resize(totalSamples);
                std::memcpy(frame.samples.data(), data, totalSamples * sizeof(int16_t));

                // Push into queue (drops oldest when full)
                perUser.received.push(std::move(frame));
            }

            const bool mute = g_shouldMute.load();
            received_callback.call(lobby_id, userId, samplesPerChannel, sampleRate, channels, mute);
            outShouldMute = mute;
        },
        [state,
         lobby_id,
         captured_callback](int16_t const* data, uint64_t samplesPerChannel, int32_t sampleRate, uint64_t channels) {
            const uint64_t totalSamples = samplesPerChannel * channels;

            {
                std::lock_guard<std::mutex> lock(state->captured_mu);
                AudioFrame frame;
                frame.frame_id = state->next_captured_frame_id++;
                frame.sample_rate = sampleRate;
                frame.channels = channels;
                frame.samples.resize(totalSamples);
                std::memcpy(frame.samples.data(), data, totalSamples * sizeof(int16_t));

                // Push into captured queue
                state->captured.push(std::move(frame));
            }

            captured_callback.call(lobby_id, samplesPerChannel, sampleRate, channels);
        }
    );

    return fromNative(call);
}

std::uint64_t discord_social_call_fetch_received_data(
    std::uint64_t lobby_id, std::uint64_t user_id, gm::wire::GMBuffer out_buffer
)
{
    auto callIt = g_calls.find(lobby_id);
    if (callIt == g_calls.end()) {
        return 0;
    }

    auto state = callIt->second;

    gm::wire::GMBufferWriter bw = out_buffer.getWriter();
    std::size_t capacity = bw.remaining();
    if (capacity == 0)
        return 0;

    std::lock_guard<std::mutex> lock(state->received_mu);
    auto userIt = state->received_per_user.find(user_id);
    if (userIt == state->received_per_user.end()) {
        return 0;
    }

    std::size_t totalWritten = 0;
    AudioFrame frame;

    // Drain queue into buffer
    while (capacity > 0 && userIt->second.received.pop(frame)) {
        const std::size_t bytesAvail = frame.samples.size() * sizeof(int16_t);
        std::size_t bytesToCopy = bytesAvail;

        if (bytesToCopy > capacity) {
            // Put the frame back at the front; lock is still held so the voice thread can't race
            userIt->second.received.frames.push_front(std::move(frame));
            break;
        }

        bw.writeBytes(frame.samples.data(), bytesToCopy);

        totalWritten += bytesToCopy;
        capacity -= bytesToCopy;
    }

    return totalWritten;
}

std::uint64_t discord_social_call_fetch_captured_data(std::uint64_t lobby_id, gm::wire::GMBuffer out_buffer)
{
    auto callIt = g_calls.find(lobby_id);
    if (callIt == g_calls.end()) {
        return 0;
    }

    auto state = callIt->second;

    gm::wire::GMBufferWriter bw = out_buffer.getWriter();
    std::size_t capacity = bw.remaining();
    if (capacity == 0)
        return 0;

    std::lock_guard<std::mutex> lock(state->captured_mu);
    std::size_t totalWritten = 0;
    AudioFrame frame;

    while (capacity > 0 && state->captured.pop(frame)) {
        const std::size_t bytesAvail = frame.samples.size() * sizeof(int16_t);
        std::size_t bytesToCopy = bytesAvail;

        if (bytesToCopy > capacity) {
            // Put the frame back at the front; lock is still held so the voice thread can't race
            state->captured.frames.push_front(std::move(frame));
            break;
        }

        bw.writeBytes(frame.samples.data(), bytesToCopy);

        totalWritten += bytesToCopy;
        capacity -= bytesToCopy;
    }

    return totalWritten;
}

void discord_social_client_abort_authorize() { g_client->AbortAuthorize(); }

void discord_social_client_abort_get_token_from_device() { g_client->AbortGetTokenFromDevice(); }

static std::optional<discordpp::AuthorizationCodeChallenge> g_pending_code_challenge;

std::string discord_social_client_create_authorization_code_verifier()
{
    auto codeVerifier = g_client->CreateAuthorizationCodeVerifier();
    g_pending_code_challenge = codeVerifier.Challenge();
    return codeVerifier.Verifier();
}

void discord_social_client_authorize(const gm_structs::DiscordAuthorizationArgs& args, const gm::wire::GMFunction& callback)
{
    discordpp::AuthorizationArgs authorizationArgs {};
    if (args.client_id.has_value())                                               authorizationArgs.SetClientId(args.client_id.value());
    if (args.scopes.has_value())                                                  authorizationArgs.SetScopes(args.scopes.value());
    if (args.use_code_challenge.has_value() && args.use_code_challenge.value())   authorizationArgs.SetCodeChallenge(g_pending_code_challenge);
    if (args.state.has_value())                                                   authorizationArgs.SetState(args.state.value());
    if (args.nonce.has_value())                                                   authorizationArgs.SetNonce(args.nonce.value());

    g_client->Authorize(
        authorizationArgs, [callback](discordpp::ClientResult result, std::string code, std::string redirectUri) {
            callback.call(fromNative(result), code, redirectUri);
        }
    );
}

void discord_social_client_close_authorize_device_screen() { g_client->CloseAuthorizeDeviceScreen(); }

void discord_social_client_get_provisional_token(
    std::uint64_t application_id, gm_enums::DiscordAuthenticationExternalAuthType token_type, std::string_view token, const gm::wire::GMFunction& callback
)
{
    g_client->GetProvisionalToken(
        application_id,
        (discordpp::AuthenticationExternalAuthType)token_type,
        std::string(token),
        [callback](
            discordpp::ClientResult result,
            std::string accessToken,
            std::string refreshToken,
            discordpp::AuthorizationTokenType tokenType,
            int32_t expiresIn,
            std::string scopes
        ) { callback.call(fromNative(result), accessToken, refreshToken, tokenType, expiresIn, scopes); }
    );
}

void discord_social_client_get_token(
    std::uint64_t applicationId,
    std::string_view code,
    std::string_view code_verifier,
    std::string_view redirect_uri,
    const gm::wire::GMFunction& callback
)
{
    g_client->GetToken(
        applicationId,
        std::string(code),
        std::string(code_verifier),
        std::string(redirect_uri),
        [callback](
            discordpp::ClientResult result,
            std::string accessToken,
            std::string refreshToken,
            discordpp::AuthorizationTokenType tokenType,
            int32_t expiresIn,
            std::string scopes
        ) { callback.call(fromNative(result), accessToken, refreshToken, tokenType, expiresIn, scopes); }
    );
}

void discord_social_client_get_token_from_device(
    std::uint64_t client_id, std::string_view scopes, const gm::wire::GMFunction& callback
)
{
    discordpp::DeviceAuthorizationArgs deviceAuthorizationArgs;
    deviceAuthorizationArgs.SetClientId(client_id);
    deviceAuthorizationArgs.SetScopes(std::string(scopes));

    g_client->GetTokenFromDevice(
        deviceAuthorizationArgs,
        [callback](
            discordpp::ClientResult result,
            std::string accessToken,
            std::string refreshToken,
            discordpp::AuthorizationTokenType tokenType,
            int32_t expiresIn,
            std::string scopes
        ) { callback.call(fromNative(result), accessToken, refreshToken, tokenType, expiresIn, scopes); }
    );
}

void discord_social_client_get_token_from_device_provisional_merge(
    std::uint64_t client_id,
    std::string_view scopes,
    gm_enums::DiscordAuthenticationExternalAuthType external_auth_type,
    std::string_view external_auth_token,
    const gm::wire::GMFunction& callback
)
{
    discordpp::DeviceAuthorizationArgs deviceAuthorizationArgs;
    deviceAuthorizationArgs.SetClientId(client_id);
    deviceAuthorizationArgs.SetScopes(std::string(scopes));

    g_client->GetTokenFromDeviceProvisionalMerge(
        deviceAuthorizationArgs,
        (discordpp::AuthenticationExternalAuthType)external_auth_type,
        std::string(external_auth_token),
        [callback](
            discordpp::ClientResult result,
            std::string accessToken,
            std::string refreshToken,
            discordpp::AuthorizationTokenType tokenType,
            int32_t expiresIn,
            std::string scopes
        ) { callback.call(fromNative(result), accessToken, refreshToken, tokenType, expiresIn, scopes); }
    );
}

void discord_social_client_get_token_from_provisional_merge(
    std::uint64_t application_id,
    std::string_view code,
    std::string_view code_verifier,
    std::string_view redirect_uri,
    gm_enums::DiscordAuthenticationExternalAuthType external_auth_type,
    std::string_view external_auth_token,
    const gm::wire::GMFunction& callback
)
{
    g_client->GetTokenFromProvisionalMerge(
        application_id,
        std::string(code),
        std::string(code_verifier),
        std::string(redirect_uri),
        (discordpp::AuthenticationExternalAuthType)external_auth_type,
        std::string(external_auth_token),
        [callback](
            discordpp::ClientResult result,
            std::string accessToken,
            std::string refreshToken,
            discordpp::AuthorizationTokenType tokenType,
            int32_t expiresIn,
            std::string scopes
        ) { callback.call(fromNative(result), accessToken, refreshToken, tokenType, expiresIn, scopes); }
    );
}

bool discord_social_client_is_authenticated() { return g_client->IsAuthenticated(); }

void discord_social_client_open_authorize_device_screen(std::uint64_t client_id, std::string_view user_code)
{
    g_client->OpenAuthorizeDeviceScreen(client_id, std::string(user_code));
}

void discord_social_client_provisional_user_merge_completed(bool success)
{
    g_client->ProvisionalUserMergeCompleted(success);
}

void discord_social_client_refresh_token(
    std::uint64_t application_id, std::string_view refresh_token, const gm::wire::GMFunction& callback
)
{
    g_client->RefreshToken(
        application_id,
        std::string(refresh_token),
        [callback](
            discordpp::ClientResult result,
            std::string accessToken,
            std::string refreshToken,
            discordpp::AuthorizationTokenType tokenType,
            int32_t expiresIn,
            std::string scopes
        ) { callback.call(fromNative(result), accessToken, refreshToken, tokenType, expiresIn, scopes); }
    );
}

void discord_social_client_revoke_token(
    std::uint64_t application_id, std::string_view token, const gm::wire::GMFunction& callback
)
{
    g_client->RevokeToken(application_id, std::string(token), [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_exchange_child_token(
    std::string_view parent_application_token, std::uint64_t child_application_id, const gm::wire::GMFunction& callback
)
{
    g_client->ExchangeChildToken(
        std::string(parent_application_token),
        child_application_id,
        [callback](
            discordpp::ClientResult result,
            std::string accessToken,
            discordpp::AuthorizationTokenType tokenType,
            int32_t expiresIn,
            std::string scopes
        ) { callback.call(fromNative(result), accessToken, (int32_t)tokenType, expiresIn, scopes); }
    );
}

void discord_social_client_unmerge_into_provisional_account(
    std::uint64_t application_id,
    gm_enums::DiscordAuthenticationExternalAuthType external_auth_type,
    std::string_view external_auth_token,
    const gm::wire::GMFunction& callback
)
{
    g_client->UnmergeIntoProvisionalAccount(
        application_id,
        (discordpp::AuthenticationExternalAuthType)external_auth_type,
        std::string(external_auth_token),
        [callback](discordpp::ClientResult result) { callback.call(fromNative(result)); }
    );
}

void discord_social_client_remove_authorize_device_screen_closed_callback()
{
    g_client->SetAuthorizeDeviceScreenClosedCallback(nullptr);
}

void discord_social_client_set_authorize_device_screen_closed_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetAuthorizeDeviceScreenClosedCallback([callback]() { callback.call(); });
}

void discord_social_client_set_game_window_pid(int32_t pid) { g_client->SetGameWindowPid(pid); }

void discord_social_client_remove_token_expiration_callback() { g_client->SetTokenExpirationCallback(nullptr); }

void discord_social_client_remove_authorize_request_callback()
{
    g_client->RemoveAuthorizeRequestCallback();
}

void discord_social_client_set_token_expiration_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetTokenExpirationCallback([callback]() { callback.call(); });
}

void discord_social_client_register_authorize_request_callback(const gm::wire::GMFunction& callback)
{
    g_client->RegisterAuthorizeRequestCallback([callback]() { callback.call(); });
}

void discord_social_client_update_provisional_account_display_name(
    std::string_view name, const gm::wire::GMFunction& callback
)
{
    g_client->UpdateProvisionalAccountDisplayName(std::string(name), [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_update_token(
    gm_enums::DiscordAuthorizationTokenType token_type, std::string_view token, const gm::wire::GMFunction& callback
)
{
    g_client->UpdateToken(
        (discordpp::AuthorizationTokenType)token_type, std::string(token), [callback](discordpp::ClientResult result) {
            callback.call(fromNative(result));
        }
    );
}

bool discord_social_client_can_open_message_in_discord(std::uint64_t message_id)
{
    return g_client->CanOpenMessageInDiscord(message_id);
}

void discord_social_client_delete_user_message(
    std::uint64_t recipient_id, std::uint64_t message_id, const gm::wire::GMFunction& callback
)
{
    g_client->DeleteUserMessage(recipient_id, message_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_edit_user_message(
    std::uint64_t recipient_id, std::uint64_t message_id, std::string_view content, const gm::wire::GMFunction& callback
)
{
    g_client->EditUserMessage(recipient_id, message_id, std::string(content), [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

std::optional<gm_structs::DiscordChannelHandle> discord_social_client_get_channel_handle(std::uint64_t channel_id)
{
    auto opt_channel_handle = g_client->GetChannelHandle(channel_id);
    return fromNative(opt_channel_handle);
}

std::optional<gm_structs::DiscordMessageHandle> discord_social_client_get_message_handle(std::uint64_t message_id)
{
    auto opt_message_handle = g_client->GetMessageHandle(message_id);
    return fromNative(opt_message_handle);
}

void discord_social_client_open_message_in_discord(//here
    std::uint64_t message_id,
    const gm::wire::GMFunction& provisional_user_merge_required_callback,
    const gm::wire::GMFunction& open_message_in_discord_callback
)
{
    g_client->OpenMessageInDiscord(
        message_id,
        [provisional_user_merge_required_callback]() {
            provisional_user_merge_required_callback.call();
        },
        [open_message_in_discord_callback](discordpp::ClientResult result) {
            open_message_in_discord_callback.call(fromNative(result));
        }
    );
}

void discord_social_client_send_lobby_message(
    std::uint64_t lobby_id, std::string_view content, const gm::wire::GMFunction& callback
)
{
    g_client->SendLobbyMessage(
        lobby_id, std::string(content), [callback](discordpp::ClientResult result, uint64_t messageId) {
            callback.call(fromNative(result), messageId);
        }
    );
}

void discord_social_client_send_lobby_message_with_metadata(
    std::uint64_t lobby_id,
    std::string_view content,
    const gm::wire::GMObjectView& metadata,
    const gm::wire::GMFunction& callback
)
{
    std::unordered_map<std::string, std::string> map = {};

    for (const auto& entry : metadata) {
        std::string key = std::string(entry.first);
        std::string value = std::string(entry.second.as<std::string_view>());
        map.emplace(std::move(key), std::move(value));
    }

    g_client->SendLobbyMessageWithMetadata(
        lobby_id, std::string(content), map, [callback](discordpp::ClientResult result, uint64_t messageId) {
            callback.call(fromNative(result), messageId);
        }
    );
}

void discord_social_client_get_lobby_messages_with_limit(
    std::uint64_t lobby_id, int32_t limit, const gm::wire::GMFunction& callback
)
{
    g_client->GetLobbyMessagesWithLimit(
        lobby_id, limit, [callback](discordpp::ClientResult result, std::vector<discordpp::MessageHandle> messages) {
            gm::wire::ArrayStream stream;
            for (const auto& msg : messages) stream << fromNative(msg);
            callback.call(fromNative(result), stream);
        }
    );
}

void discord_social_client_send_user_message(
    std::uint64_t recipient_id, std::string_view content, const gm::wire::GMFunction& callback
)
{
    g_client->SendUserMessage(
        recipient_id, std::string(content), [callback](discordpp::ClientResult result, uint64_t messageId) {
            callback.call(fromNative(result), messageId);
        }
    );
}

void discord_social_client_send_user_message_with_metadata(
    std::uint64_t recipient_id,
    std::string_view content,
    const gm::wire::GMObjectView& metadata,
    const gm::wire::GMFunction& callback
)
{
    std::unordered_map<std::string, std::string> map = {};

    for (const auto& entry : metadata) {
        std::string key = std::string(entry.first);
        std::string value = std::string(entry.second.as<std::string_view>());
        map.emplace(std::move(key), std::move(value));
    }

    g_client->SendUserMessageWithMetadata(
        recipient_id, std::string(content), map, [callback](discordpp::ClientResult result, uint64_t messageId) {
            callback.call(fromNative(result), messageId);
        }
    );
}

void discord_social_client_get_user_message_summaries(const gm::wire::GMFunction& callback)
{
    g_client->GetUserMessageSummaries(
        [callback](discordpp::ClientResult result, std::vector<discordpp::UserMessageSummary> summaries) {
            gm::wire::ArrayStream stream;
            for (const auto& s : summaries) stream << fromNative(s);
            callback.call(fromNative(result), stream);
        }
    );
}

void discord_social_client_get_user_messages_with_limit(
    std::uint64_t recipient_id, int32_t limit, const gm::wire::GMFunction& callback
)
{
    g_client->GetUserMessagesWithLimit(
        recipient_id, limit, [callback](discordpp::ClientResult result, std::vector<discordpp::MessageHandle> messages) {
            gm::wire::ArrayStream stream;
            for (const auto& msg : messages) stream << fromNative(msg);
            callback.call(fromNative(result), stream);
        }
    );
}

void discord_social_client_remove_message_created_callback() { g_client->SetMessageCreatedCallback(nullptr); }

void discord_social_client_set_message_created_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetMessageCreatedCallback([callback](uint64_t messageId) { callback.call(messageId); });
}

void discord_social_client_remove_message_deleted_callback() { g_client->SetMessageDeletedCallback(nullptr); }

void discord_social_client_set_message_deleted_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetMessageDeletedCallback([callback](uint64_t messageId, uint64_t channel_id) {
        callback.call(messageId, channel_id);
    });
}

void discord_social_client_remove_message_updated_callback() { g_client->SetMessageUpdatedCallback(nullptr); }

void discord_social_client_set_message_updated_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetMessageUpdatedCallback([callback](uint64_t messageId) { callback.call(messageId); });
}

void discord_social_client_set_showing_chat(bool showing_chat) { g_client->SetShowingChat(showing_chat); }

void discord_social_client_remove_log_callback()
{
    g_client->AddLogCallback(nullptr, discordpp::LoggingSeverity::None);
}

void discord_social_client_add_log_callback(
    gm_enums::DiscordLoggingSeverity min_severity, const gm::wire::GMFunction& callback
)
{
    g_client->AddLogCallback(
        [callback](std::string message, discordpp::LoggingSeverity severity) { callback.call(message, severity); },
        (discordpp::LoggingSeverity)min_severity
    );
}

void discord_social_client_add_voice_log_callback(
    gm_enums::DiscordLoggingSeverity min_severity, const gm::wire::GMFunction& callback
)
{
    g_client->AddVoiceLogCallback(
        [callback](std::string message, discordpp::LoggingSeverity min_severity) {
            callback.call(message, min_severity);
        },
        (discordpp::LoggingSeverity)min_severity
    );
}

void discord_social_client_connect() { g_client->Connect(); }

void discord_social_client_disconnect() { g_client->Disconnect(); }

gm_enums::DiscordClientStatus discord_social_client_get_status() { return (DiscordClientStatus)g_client->GetStatus(); }

bool discord_social_client_set_log_dir(std::string_view path, gm_enums::DiscordLoggingSeverity min_severity)
{
    return g_client->SetLogDir(std::string(path), (discordpp::LoggingSeverity)min_severity);
}

void discord_social_client_remove_status_changed_callback() { g_client->SetStatusChangedCallback(nullptr); }

void discord_social_client_set_status_changed_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetStatusChangedCallback(
        [callback](discordpp::Client::Status status, discordpp::Client::Error error, int32_t errorDetail) {
            callback.call(status, error, errorDetail);
        }
    );
}

void discord_social_client_set_voice_log_dir(std::string_view path, gm_enums::DiscordLoggingSeverity min_severity)
{
    g_client->SetVoiceLogDir(std::string(path), (discordpp::LoggingSeverity)min_severity);
}

void discord_social_client_create_or_join_lobby(std::string_view secret, const gm::wire::GMFunction& callback)
{
    g_client->CreateOrJoinLobby(std::string(secret), [callback](discordpp::ClientResult result, uint64_t lobbyId) {
        callback.call(fromNative(result), lobbyId);
    });
}

void discord_social_client_create_or_join_lobby_with_metadata(
    std::string_view secret,
    const gm::wire::GMObjectView& lobby_metadata_struct,
    const gm::wire::GMObjectView& member_metadata_struct,
    const gm::wire::GMFunction& callback
)
{

    std::unordered_map<std::string, std::string> lobby_map = {};
    for (const auto& entry : lobby_metadata_struct) {
        std::string key = std::string(entry.first);
        std::string value = std::string(entry.second.as<std::string_view>());
        lobby_map.emplace(std::move(key), std::move(value));
    }

    std::unordered_map<std::string, std::string> member_map = {};
    for (const auto& entry : member_metadata_struct) {
        std::string key = std::string(entry.first);
        std::string value = std::string(entry.second.as<std::string_view>());
        member_map.emplace(std::move(key), std::move(value));
    }

    g_client->CreateOrJoinLobbyWithMetadata(
        std::string(secret), lobby_map, member_map, [callback](discordpp::ClientResult result, uint64_t lobbyId) {
            callback.call(fromNative(result), lobbyId);
        }
    );
}

void discord_social_client_get_guild_channels(std::uint64_t guild_id, const gm::wire::GMFunction& callback)
{
    g_client->GetGuildChannels(
        guild_id, [callback](discordpp::ClientResult result, std::vector<discordpp::GuildChannel> guildChannels) {
            gm::wire::ArrayStream channel_stream;
            for (const auto& ch : guildChannels) {
                channel_stream << fromNative(ch);
            }
            callback.call(fromNative(result), channel_stream);
        }
    );
}

std::optional<gm_structs::DiscordLobbyHandle> discord_social_client_get_lobby_handle(std::uint64_t lobby_id)
{
    std::optional<discordpp::LobbyHandle> opt_lobby_handle = g_client->GetLobbyHandle(lobby_id);
    return fromNative(opt_lobby_handle);
}

std::vector<std::uint64_t> discord_social_client_get_lobby_ids() { return g_client->GetLobbyIds(); }

void discord_social_client_get_user_guilds(const gm::wire::GMFunction& callback)
{
    if (!g_client) return;
    g_client->GetUserGuilds([callback](discordpp::ClientResult result, std::vector<discordpp::GuildMinimal> guilds) {
        gm::wire::ArrayStream guild_stream;
        for (const auto& g : guilds) {
            guild_stream << fromNative(g);
        }
        callback.call(fromNative(result), guild_stream);
    });
}

void discord_social_client_leave_lobby(std::uint64_t lobby_id, const gm::wire::GMFunction& callback)
{
    g_client->LeaveLobby(lobby_id, [callback](discordpp::ClientResult result) { callback.call(fromNative(result)); });
}

void discord_social_client_link_channel_to_lobby(
    std::uint64_t lobby_id, std::uint64_t channel_id, const gm::wire::GMFunction& callback
)
{
    g_client->LinkChannelToLobby(lobby_id, channel_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_remove_lobby_created_callback() { g_client->SetLobbyCreatedCallback(nullptr); }

void discord_social_client_set_lobby_created_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetLobbyCreatedCallback([callback](uint64_t lobbyId) { callback.call(lobbyId); });
}

void discord_social_client_remove_lobby_deleted_callback() { g_client->SetLobbyDeletedCallback(nullptr); }

void discord_social_client_set_lobby_deleted_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetLobbyDeletedCallback([callback](uint64_t lobbyId) { callback.call(lobbyId); });
}

void discord_social_client_remove_lobby_member_added_callback() { g_client->SetLobbyMemberAddedCallback(nullptr); }

void discord_social_client_set_lobby_member_added_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetLobbyMemberAddedCallback([callback](uint64_t lobbyId, uint64_t memberId) {
        callback.call(lobbyId, memberId);
    });
}

void discord_social_client_remove_lobby_member_removed_callback() { g_client->SetLobbyMemberRemovedCallback(nullptr); }

void discord_social_client_set_lobby_member_removed_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetLobbyMemberRemovedCallback([callback](uint64_t lobbyId, uint64_t memberId) {
        callback.call(lobbyId, memberId);
    });
}

void discord_social_client_remove_lobby_member_updated_callback() { g_client->SetLobbyMemberUpdatedCallback(nullptr); }

void discord_social_client_set_lobby_member_updated_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetLobbyMemberUpdatedCallback([callback](uint64_t lobbyId, uint64_t memberId) {
        callback.call(lobbyId, memberId);
    });
}

void discord_social_client_remove_lobby_updated_callback() { g_client->SetLobbyUpdatedCallback(nullptr); }

void discord_social_client_set_lobby_updated_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetLobbyUpdatedCallback([callback](uint64_t lobbyId) { callback.call(lobbyId); });
}

void discord_social_client_unlink_channel_from_lobby(std::uint64_t lobby_id, const gm::wire::GMFunction& callback)
{
    g_client->UnlinkChannelFromLobby(lobby_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_join_linked_lobby_guild(
    std::uint64_t lobby_id,
    const gm::wire::GMFunction& provisional_user_merge_required_callback,
    const gm::wire::GMFunction& callback
)
{
    g_client->JoinLinkedLobbyGuild(
        lobby_id,
        [provisional_user_merge_required_callback]() { provisional_user_merge_required_callback.call(); },
        [callback](discordpp::ClientResult result, std::string inviteUrl) {
            callback.call(fromNative(result), inviteUrl);
        }
    );
}

void discord_social_client_accept_activity_invite(
    const gm_structs::DiscordActivityInvite& activity_invite, const gm::wire::GMFunction& callback
)
{
    discordpp::ActivityInvite activityInvite = toNative(activity_invite);

    g_client->AcceptActivityInvite(activityInvite, [callback](discordpp::ClientResult result, std::string joinSecret) {
        callback.call(fromNative(result), joinSecret);
    });
}

void discord_social_client_clear_rich_presence() { g_client->ClearRichPresence(); }

bool discord_social_client_register_launch_command(std::uint64_t application_id, std::string_view command)
{
    return g_client->RegisterLaunchCommand(application_id, std::string(command));
}

bool discord_social_client_register_launch_steam_application(std::uint64_t application_id, std::uint32_t steam_app_id)
{
    return g_client->RegisterLaunchSteamApplication(application_id, steam_app_id);
}

void discord_social_client_send_activity_invite(
    std::uint64_t user_id, std::string_view content, const gm::wire::GMFunction& callback
)
{
    g_client->SendActivityInvite(user_id, std::string(content), [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_send_activity_join_request(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->SendActivityJoinRequest(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_send_activity_join_request_reply(
    const gm_structs::DiscordActivityInvite& activity_invite, const gm::wire::GMFunction& callback
)
{
    discordpp::ActivityInvite activityInvite = toNative(activity_invite);

    g_client->SendActivityJoinRequestReply(activityInvite, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_remove_activity_invite_created_callback()
{
    g_client->SetActivityInviteCreatedCallback(nullptr);
}

void discord_social_client_set_activity_invite_created_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetActivityInviteCreatedCallback([callback](discordpp::ActivityInvite invite) {
        callback.call(fromNative(invite));
    });
}

void discord_social_client_remove_activity_invite_updated_callback()
{
    g_client->SetActivityInviteUpdatedCallback(nullptr);
}

void discord_social_client_set_activity_invite_updated_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetActivityInviteUpdatedCallback([callback](discordpp::ActivityInvite invite) {
        callback.call(fromNative(invite));
    });
}

void discord_social_client_remove_activity_join_callback() { g_client->SetActivityJoinCallback(nullptr); }

void discord_social_client_remove_activity_join_with_application_callback()
{
    g_client->SetActivityJoinWithApplicationCallback(nullptr);
}

void discord_social_client_set_activity_join_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetActivityJoinCallback([callback](std::string joinSecret) { callback.call(joinSecret); });
}

void discord_social_client_set_activity_join_with_application_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetActivityJoinWithApplicationCallback([callback](uint64_t applicationId, std::string joinSecret) {
        callback.call(applicationId, joinSecret);
    });
}

void discord_social_client_set_online_status(gm_enums::DiscordClientStatus status, const gm::wire::GMFunction& callback)
{
    g_client->SetOnlineStatus((discordpp::StatusType)status, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_update_rich_presence(
    const gm_structs::DiscordActivity& activity, const gm::wire::GMFunction& callback
)
{
    discordpp::Activity _activity = toNative(activity);
    g_client->UpdateRichPresence(_activity, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_accept_discord_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->AcceptDiscordFriendRequest(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_accept_game_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->AcceptGameFriendRequest(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_block_user(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->BlockUser(user_id, [callback](discordpp::ClientResult result) { callback.call(fromNative(result)); });
}

void discord_social_client_cancel_discord_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->CancelDiscordFriendRequest(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_cancel_game_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->CancelGameFriendRequest(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

gm_structs::DiscordRelationshipHandle discord_social_client_get_relationship_handle(std::uint64_t user_id)
{
    discordpp::RelationshipHandle relationship_handle = g_client->GetRelationshipHandle(user_id);
    return fromNative(relationship_handle);
}

std::vector<gm_structs::DiscordRelationshipHandle> discord_social_client_get_relationships()
{
    const auto& relationships = g_client->GetRelationships();
    return fromNative(relationships);
}

std::vector<gm_structs::DiscordRelationshipHandle> discord_social_client_get_relationships_by_group(gm_enums::DiscordRelationshipGroupType group_type)
{
    std::vector<discordpp::RelationshipHandle> relationships =
        g_client->GetRelationshipsByGroup(
            static_cast<discordpp::RelationshipGroupType>(group_type)
        );

    return fromNative(relationships);
}

void discord_social_client_reject_discord_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->RejectDiscordFriendRequest(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_reject_game_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->RejectGameFriendRequest(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_remove_discord_and_game_friend(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->RemoveDiscordAndGameFriend(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_remove_game_friend(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->RemoveGameFriend(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

std::vector<gm_structs::DiscordUserHandle> discord_social_client_search_friends_by_username(std::string_view search_str)
{
    std::vector<discordpp::UserHandle> users = g_client->SearchFriendsByUsername(std::string(search_str));
    return fromNative(users);
}

void discord_social_client_send_discord_friend_request(std::string_view username, const gm::wire::GMFunction& callback)
{
    g_client->SendDiscordFriendRequest(std::string(username), [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_send_discord_friend_request_by_id(
    std::uint64_t user_id, const gm::wire::GMFunction& callback
)
{
    g_client->SendDiscordFriendRequestById(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_send_game_friend_request(std::string_view username, const gm::wire::GMFunction& callback)
{
    g_client->SendGameFriendRequest(std::string(username), [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_send_game_friend_request_by_id(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->SendGameFriendRequestById(user_id, [callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

void discord_social_client_remove_relationship_created_callback() { g_client->SetRelationshipCreatedCallback(nullptr); }

void discord_social_client_set_relationship_created_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetRelationshipCreatedCallback([callback](uint64_t userId, bool isDiscordRelationshipUpdate) {
        callback.call(userId, isDiscordRelationshipUpdate);
    });
}

void discord_social_client_remove_relationship_deleted_callback() { g_client->SetRelationshipDeletedCallback(nullptr); }

void discord_social_client_remove_relationship_groups_updated_callback()
{
    g_client->SetRelationshipGroupsUpdatedCallback(nullptr);
}

void discord_social_client_set_relationship_deleted_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetRelationshipDeletedCallback([callback](uint64_t userId, bool isDiscordRelationshipUpdate) {
        callback.call(userId, isDiscordRelationshipUpdate);
    });
}

void discord_social_client_set_relationship_groups_updated_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetRelationshipGroupsUpdatedCallback([callback](uint64_t userId) { callback.call(userId); });
}

void discord_social_client_unblock_user(std::uint64_t user_id, const gm::wire::GMFunction& callback)
{
    g_client->UnblockUser(user_id, [callback](discordpp::ClientResult result) { callback.call(fromNative(result)); });
}

std::optional<gm_structs::DiscordUserHandle> discord_social_client_get_current_user()
{
    std::optional<discordpp::UserHandle> user = g_client->GetCurrentUserV2();
    return fromNative(user);
}

void discord_social_client_get_discord_client_connected_user(
    std::uint64_t application_id, const gm::wire::GMFunction& callback
)
{
    g_client->GetDiscordClientConnectedUser(
        application_id, [callback](discordpp::ClientResult result, std::optional<discordpp::UserHandle> user) {
            callback.call(fromNative(result), fromNative(user));
        }
    );
}

std::optional<gm_structs::DiscordUserHandle> discord_social_client_get_user(std::uint64_t user_id)
{
    std::optional<discordpp::UserHandle> user = g_client->GetUser(user_id);
    return fromNative(user);
}

void discord_social_client_remove_user_updated_callback() { g_client->SetUserUpdatedCallback(nullptr); }

void discord_social_client_set_user_updated_callback(const gm::wire::GMFunction& callback)
{
    g_client->SetUserUpdatedCallback([callback](uint64_t userId) { callback.call(userId); });
}

std::string discord_social_client_error_to_string(gm_enums::DiscordClientError error)
{
    return g_client->ErrorToString((discordpp::Client::Error)error);
}

std::string discord_social_client_get_default_audio_device_id() { return g_client->GetDefaultAudioDeviceId(); }

std::string discord_social_client_get_default_communication_scopes()
{
    return g_client->GetDefaultCommunicationScopes();
}

std::string discord_social_client_get_default_presence_scopes() { return g_client->GetDefaultPresenceScopes(); }

std::string discord_social_client_get_version_hash() { return g_client->GetVersionHash(); }

uint32_t discord_social_client_get_version_major() { return g_client->GetVersionMajor(); }

uint32_t discord_social_client_get_version_minor() { return g_client->GetVersionMinor(); }

uint32_t discord_social_client_get_version_patch() { return g_client->GetVersionPatch(); }

std::string discord_social_client_status_to_string(gm_enums::DiscordClientStatus status)
{
    return g_client->StatusToString((discordpp::Client::Status)status);
}

std::string discord_social_client_thread_to_string(gm_enums::DiscordClientThread thread)
{
    return g_client->ThreadToString((discordpp::Client::Thread)thread);
}

std::uint64_t discord_social_client_get_application_id()
{
    return g_client->GetApplicationId();
}

void discord_social_client_set_application_id(std::uint64_t application_id)
{
    g_client->SetApplicationId(application_id);
}

void discord_social_client_is_discord_app_installed(const gm::wire::GMFunction& callback)
{
    g_client->IsDiscordAppInstalled([callback](bool installed) { callback.call(installed); });
}

void discord_social_client_open_connected_games_settings_in_discord(const gm::wire::GMFunction& callback)
{
    g_client->OpenConnectedGamesSettingsInDiscord([callback](discordpp::ClientResult result) {
        callback.call(fromNative(result));
    });
}

template<typename F>
bool withCall(uint64_t channel_id, F&& f)
{
    auto calls = g_client->GetCalls();
    for (auto& call : calls) {
        if (call.GetChannelId() == channel_id) {
            f(call);
            return true;
        }
    }
    return false;
}

bool discord_social_call_get_local_mute(std::uint64_t channel_id, std::uint64_t user_id)
{
    bool muted = false;
    withCall(channel_id, [user_id, &muted](discordpp::Call& call) { muted = call.GetLocalMute(user_id); });
    return muted;
}

float discord_social_call_get_participant_volume(std::uint64_t channel_id, std::uint64_t user_id)
{
    float volume = 0.0f;
    withCall(channel_id, [user_id, &volume](discordpp::Call& call) { volume = call.GetParticipantVolume(user_id); });
    return volume;
}

std::uint32_t discord_social_call_get_ptt_release_delay(std::uint64_t channel_id)
{
    std::uint32_t delay = 0;
    withCall(channel_id, [&delay](discordpp::Call& call) { delay = call.GetPTTReleaseDelay(); });
    return delay;
}

gm_structs::DiscordVADThresholdSettings discord_social_call_get_vad_threshold(std::uint64_t channel_id)
{
    gm_structs::DiscordVADThresholdSettings settings {};
    withCall(channel_id, [&settings](discordpp::Call& call) { settings = fromNative(call.GetVADThreshold()); });
    return settings;
}

gm_structs::DiscordVoiceStateHandle discord_social_call_get_voice_state_handle(
    std::uint64_t channel_id, std::uint64_t user_id
)
{
    gm_structs::DiscordVoiceStateHandle voice_state {};
    withCall(channel_id, [user_id, &voice_state](discordpp::Call& call) {
        auto native_voice_state = call.GetVoiceStateHandle(user_id);
        if (native_voice_state.has_value()) {
            voice_state = fromNative(native_voice_state.value());
        }
    });
    return voice_state;
}

bool discord_social_call_set_audio_mode(std::uint64_t channel_id, gm_enums::DiscordAudioModeType audio_mode)
{
    return withCall(channel_id, [audio_mode](discordpp::Call& call) {
        call.SetAudioMode((discordpp::AudioModeType)audio_mode);
    });
}

bool discord_social_call_set_local_mute(std::uint64_t channel_id, std::uint64_t user_id, bool mute)
{
    return withCall(channel_id, [user_id, mute](discordpp::Call& call) { call.SetLocalMute(user_id, mute); });
}

void discord_social_call_remove_on_voice_state_changed_callback(std::uint64_t channel_id)
{
    withCall(channel_id, [](discordpp::Call& call) { call.SetOnVoiceStateChangedCallback(nullptr); });
}

bool discord_social_call_set_on_voice_state_changed_callback(
    std::uint64_t channel_id, const gm::wire::GMFunction& callback
)
{
    return withCall(channel_id, [callback](discordpp::Call& call) {
        call.SetOnVoiceStateChangedCallback([callback](uint64_t userId) { callback.call(userId); });
    });
}

void discord_social_call_remove_participant_changed_callback(std::uint64_t channel_id)
{
    withCall(channel_id, [](discordpp::Call& call) { call.SetParticipantChangedCallback(nullptr); });
}

bool discord_social_call_set_participant_changed_callback(
    std::uint64_t channel_id, const gm::wire::GMFunction& callback
)
{
    return withCall(channel_id, [callback](discordpp::Call& call) {
        call.SetParticipantChangedCallback([callback](uint64_t userId, bool added) { callback.call(userId, added); });
    });
}

bool discord_social_call_set_participant_volume(std::uint64_t channel_id, std::uint64_t user_id, float vol)
{
    return withCall(channel_id, [user_id, vol](discordpp::Call& call) { call.SetParticipantVolume(user_id, vol); });
}

bool discord_social_call_set_ptt_active(std::uint64_t channel_id, bool active)
{
    return withCall(channel_id, [active](discordpp::Call& call) { call.SetPTTActive(active); });
}

bool discord_social_call_set_ptt_release_delay(std::uint64_t channel_id, std::uint32_t release_delay_ms)
{
    return withCall(channel_id, [release_delay_ms](discordpp::Call& call) {
        call.SetPTTReleaseDelay(release_delay_ms);
    });
}

bool discord_social_call_set_self_deaf(std::uint64_t channel_id, bool deaf)
{
    return withCall(channel_id, [deaf](discordpp::Call& call) { call.SetSelfDeaf(deaf); });
}

bool discord_social_call_set_self_mute(std::uint64_t channel_id, bool mute)
{
    return withCall(channel_id, [mute](discordpp::Call& call) { call.SetSelfMute(mute); });
}

void discord_social_call_remove_speaking_status_changed_callback(std::uint64_t channel_id)
{
    withCall(channel_id, [](discordpp::Call& call) { call.SetSpeakingStatusChangedCallback(nullptr); });
}

bool discord_social_call_set_speaking_status_changed_callback(
    std::uint64_t channel_id, const gm::wire::GMFunction& callback
)
{
    return withCall(channel_id, [callback](discordpp::Call& call) {
        call.SetSpeakingStatusChangedCallback([callback](uint64_t userId, bool isPlayingSound) {
            callback.call(userId, isPlayingSound);
        });
    });
}

void discord_social_call_remove_status_changed_callback(std::uint64_t channel_id)
{
    withCall(channel_id, [](discordpp::Call& call) { call.SetStatusChangedCallback(nullptr); });
}

bool discord_social_call_set_status_changed_callback(
    std::uint64_t channel_id, const gm::wire::GMFunction& callback
)
{
    return withCall(channel_id, [callback](discordpp::Call& call) {
        call.SetStatusChangedCallback(
            [callback](discordpp::Call::Status status, discordpp::Call::Error error, int32_t errorDetail) {
                callback.call(status, (std::uint32_t /*(gm_enums::DiscordCallError)*/)error, errorDetail);
            }
        );
    });
}

bool discord_social_call_set_vad_threshold(std::uint64_t channel_id, bool automatic, float threshold)
{
    return withCall(channel_id, [automatic, threshold](discordpp::Call& call) {
        call.SetVADThreshold(automatic, threshold);
    });
}
