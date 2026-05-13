// ##### extgen :: Auto-generated file do not edit!! #####

#pragma once
#include <cstdint>
#include <string_view>
#include <vector>
#include <array>
#include <optional>
#include "core/GMExtWire.h"

namespace gm_consts
{
}


namespace gm_enums
{
    enum class DiscordCallError : std::int64_t
    {
        None = 0,
        SignalingConnectionFailed = 1,
        SignalingUnexpectedClose = 2,
        VoiceConnectionFailed = 3,
        JoinTimeout = 4,
        Forbidden = 5
    };

    enum class DiscordCallStatus : std::int64_t
    {
        Disconnected = 0,
        Joining = 1,
        Connecting = 2,
        SignalingConnected = 3,
        Connected = 4,
        Reconnecting = 5,
        Disconnecting = 6
    };

    enum class DiscordAvatarType : std::int64_t
    {
        Gif = 0,
        Webp = 1,
        Png = 2,
        Jpeg = 3
    };

    enum class DiscordAdditionalContentType : std::int64_t
    {
        Other = 0,
        Attachment = 1,
        Poll = 2,
        VoiceMessage = 3,
        Thread = 4,
        Embed = 5,
        Sticker = 6
    };

    enum class DiscordErrorType : std::int64_t
    {
        None = 0,
        NetworkError = 1,
        HTTPError = 2,
        ClientNotReady = 3,
        Disabled = 4,
        ClientDestroyed = 5,
        ValidationError = 6,
        Aborted = 7,
        AuthorizationFailed = 8,
        RPCError = 9
    };

    enum class DiscordChannelType : std::int64_t
    {
        GuildText = 0,
        Dm = 1,
        GuildVoice = 2,
        GroupDm = 3,
        GuildCategory = 4,
        GuildNews = 5,
        GuildStore = 6,
        GuildNewsThread = 10,
        GuildPublicThread = 11,
        GuildPrivateThread = 12,
        GuildStageVoice = 13,
        GuildDirectory = 14,
        GuildForum = 15,
        GuildMedia = 16,
        Lobby = 17,
        EphemeralDm = 18
    };

    enum class DiscordStatusDisplayTypes : std::int64_t
    {
        Name = 0,
        State = 1,
        Details = 2
    };

    enum class DiscordActivityGamePlatforms : std::int64_t
    {
        Desktop = 1,
        Xbox = 2,
        Samsung = 4,
        IOS = 8,
        Android = 16,
        Embedded = 32,
        PS4 = 64,
        PS5 = 128
    };

    enum class DiscordAuthenticationExternalAuthType : std::int64_t
    {
        OIDC = 0,
        EpicOnlineServicesAccessToken = 1,
        EpicOnlineServicesIdToken = 2,
        SteamSessionTicket = 3
    };

    enum class DiscordStatusType : std::int64_t
    {
        Online = 0,
        Offline = 1,
        Blocked = 2,
        Idle = 3,
        Dnd = 4,
        Invisible = 5,
        Streaming = 6,
        Unknown = 7
    };

    enum class DiscordActivityTypes : std::int64_t
    {
        Playing = 0,
        Streaming = 1,
        Listening = 2,
        Watching = 3,
        CustomStatus = 4,
        Competing = 5,
        HangStatus = 6
    };

    enum class DiscordRelationshipType : std::int64_t
    {
        None = 0,
        Friend = 1,
        Blocked = 2,
        PendingIncoming = 3,
        PendingOutgoing = 4,
        Implicit = 5,
        Suggestion = 6
    };

    enum class DiscordRelationshipGroupType : std::int64_t
    {
        OnlinePlayingGame = 0,
        OnlineElsewhere = 1,
        Offline = 2
    };

    enum class DiscordDisclosureTypes : std::int64_t
    {
        MessageDataVisibleOnDiscord = 3
    };

    enum class DiscordActivityPartyPrivacy : std::int64_t
    {
        Private = 0,
        Public = 1
    };

    enum class DiscordClientThread : std::int64_t
    {
        Client = 0,
        Voice = 1,
        Network = 2
    };

    enum class DiscordClientStatus : std::int64_t
    {
        Disconnected = 0,
        Connecting = 1,
        Connected = 2,
        Ready = 3,
        Reconnecting = 4,
        Disconnecting = 5,
        HttpWait = 6
    };

    enum class ActivityActionTypes : std::int64_t
    {
        Invalid = 0,
        Join = 1,
        JoinRequest = 5
    };

    enum class DiscordLoggingSeverity : std::int64_t
    {
        Verbose = 0,
        Info = 1,
        Warning = 2,
        Error = 3,
        None = 4
    };

    enum class DiscordClientError : std::int64_t
    {
        None = 0,
        ConnectionFailed = 1,
        UnexpectedClose = 2,
        ConnectionCanceled = 3
    };

    enum class DiscordAuthorizationTokenType : std::int64_t
    {
        User = 0,
        Bearer = 1
    };

    enum class DiscordAudioModeType : std::int64_t
    {
        ModeUninit = 0,
        ModeVAD = 1,
        ModePTT = 2
    };

    enum class DiscordAudioSystem : std::int64_t
    {
        Standard = 0,
        Game = 1
    };

}


namespace gm_structs
{
    struct DiscordActivityInvite;
    struct DiscordAudioDevice;
    struct DiscordRelationshipSnapshot;
    struct DiscordGuildMinimal;
    struct DiscordLinkedLobby;
    struct DiscordClientResult;
    struct DiscordChannelHandle;
    struct DiscordAdditionalContent;
    struct DiscordLinkedChannel;
    struct DiscordVoiceStateHandle;
    struct DiscordActivityParty;
    struct DiscordActivitySecrets;
    struct DiscordActivityAssets;
    struct DiscordActivityButton;
    struct DiscordActivityTimestamps;
    struct DiscordUserApplicationProfileHandle;
    struct DiscordUserMessageSummary;
    struct DiscordVADThresholdSettings;
    struct DiscordAuthorizationArgs;
    struct DiscordClientCreateOptions;
    struct DiscordGuildChannel;
    struct DiscordCallVoiceStateEntry;
    struct DiscordActivity;
    struct DiscordCall;
    struct DiscordCallInfoHandle;
    struct DiscordUserHandle;
    struct DiscordRelationshipHandle;
    struct DiscordLobbyMemberHandle;
    struct DiscordLobbyHandle;
    struct DiscordMessageHandle;

    struct DiscordActivityInvite
    {
        gm_enums::ActivityActionTypes type;
        std::uint64_t sender_id;
        std::uint64_t application_id;
        std::uint64_t parent_application_id;
        std::uint64_t channel_id;
        std::uint64_t message_id;
        bool is_valid;
        std::string party_id;
        std::string session_id;
    };

    struct DiscordAudioDevice
    {
        std::string id;
        std::string name;
        bool is_default;
    };

    struct DiscordRelationshipSnapshot
    {
        std::uint64_t id;
        gm_enums::DiscordRelationshipType discord_relationship_type;
        gm_enums::DiscordRelationshipType game_relationship_type;
        bool is_spam_request;
    };

    struct DiscordGuildMinimal
    {
        std::uint64_t id;
        std::string name;
    };

    struct DiscordLinkedLobby
    {
        std::uint64_t application_id;
        std::uint64_t lobby_id;
    };

    struct DiscordClientResult
    {
        std::string error;
        std::int32_t error_code;
        bool successful;
        bool retryable;
        std::string response_body;
        std::int32_t status;
        gm_enums::DiscordErrorType type;
        float retry_after;
    };

    struct DiscordChannelHandle
    {
        std::uint64_t channel_id;
        std::string name;
        double type;
        std::vector<std::uint64_t> recipients;
    };

    struct DiscordAdditionalContent
    {
        gm_enums::DiscordAdditionalContentType type;
        std::string title;
        double count;
    };

    struct DiscordLinkedChannel
    {
        std::uint64_t id;
        std::uint64_t guild_id;
        std::string name;
    };

    struct DiscordVoiceStateHandle
    {
        bool self_deaf;
        bool self_mute;
    };

    struct DiscordActivityParty
    {
        std::string activity_party_id;
        std::optional<std::int32_t> current_size;
        std::optional<std::int32_t> max_size;
        gm_enums::DiscordActivityPartyPrivacy privacy;
    };

    struct DiscordActivitySecrets
    {
        std::string join;
    };

    struct DiscordActivityAssets
    {
        std::optional<std::string> large_image;
        std::optional<std::string> large_text;
        std::optional<std::string> large_url;
        std::optional<std::string> small_image;
        std::optional<std::string> small_text;
        std::optional<std::string> small_url;
        std::optional<std::string> invite_cover_image;
    };

    struct DiscordActivityButton
    {
        std::string label;
        std::string url;
    };

    struct DiscordActivityTimestamps
    {
        std::optional<std::uint64_t> start;
        std::optional<std::uint64_t> end;
    };

    struct DiscordUserApplicationProfileHandle
    {
        std::string avatar_hash;
        std::string metadata;
        std::optional<std::string> provider_id;
        std::string provider_issued_user_id;
        double provider_type;
        std::string username;
    };

    struct DiscordUserMessageSummary
    {
        std::uint64_t user_id;
        std::uint64_t last_message_id;
    };

    struct DiscordVADThresholdSettings
    {
        bool automatic;
        float vad_threshold;
    };

    struct DiscordAuthorizationArgs
    {
        std::optional<std::uint64_t> client_id;
        std::optional<std::string> scopes;
        std::optional<std::string> state;
        std::optional<std::string> nonce;
        std::optional<bool> use_code_challenge;
    };

    struct DiscordClientCreateOptions
    {
        std::string api_base;
        std::string web_base;
        gm_enums::DiscordAudioSystem experimental_audio_system;
        bool experimental_android_prevent_comms_for_bluetooth;
        std::optional<std::uint64_t> cpu_affinity_mask;
    };

    struct DiscordGuildChannel
    {
        std::uint64_t id;
        bool is_linkable;
        bool is_fully_public;
        bool is_viewable_and_writeable_by_all_members;
        std::optional<gm_structs::DiscordLinkedLobby> linked_lobby;
        std::string name;
        std::optional<std::uint64_t> parent_id;
        std::int32_t position;
        gm_enums::DiscordChannelType type;
    };

    struct DiscordCallVoiceStateEntry
    {
        std::uint64_t user_id;
        gm_structs::DiscordVoiceStateHandle voice_state_handle;
    };

    struct DiscordActivity
    {
        gm_enums::DiscordActivityTypes type;
        std::optional<std::string> details;
        std::optional<std::string> state;
        std::string name;
        std::optional<gm_enums::DiscordStatusDisplayTypes> status_display_type;
        std::optional<std::string> state_url;
        std::optional<std::string> details_url;
        std::optional<std::uint64_t> application_id;
        std::optional<std::uint64_t> parent_application_id;
        std::optional<gm_structs::DiscordActivityAssets> assets;
        std::optional<gm_structs::DiscordActivityTimestamps> timestamps;
        std::optional<gm_enums::DiscordActivityGamePlatforms> supported_platforms;
        std::optional<gm_structs::DiscordActivityParty> party;
        std::optional<gm_structs::DiscordActivitySecrets> secrets;
        std::vector<gm_structs::DiscordActivityButton> buttons;
    };

    struct DiscordCall
    {
        gm_enums::DiscordAudioModeType audio_mode;
        std::uint64_t channel_id;
        std::uint64_t guild_id;
        std::vector<std::uint64_t> participants;
        bool ptt_active;
        std::uint32_t ptt_release_delay;
        bool self_deaf;
        bool self_mute;
        gm_structs::DiscordVADThresholdSettings vad_threshold;
        gm_enums::DiscordCallStatus status;
    };

    struct DiscordCallInfoHandle
    {
        std::uint64_t channel_id;
        std::uint64_t guild_id;
        std::vector<std::uint64_t> participants;
        std::vector<gm_structs::DiscordCallVoiceStateEntry> voice_state_handles;
    };

    struct DiscordUserHandle
    {
        std::uint64_t id;
        std::string username;
        std::string display_name;
        std::optional<std::string> avatar;
        gm_enums::DiscordAvatarType avatar_type;
        std::string avatar_type_string;
        std::string avatar_url;
        std::optional<std::string> global_name;
        bool is_provisional;
        gm_enums::DiscordStatusType status;
        std::optional<gm_structs::DiscordActivity> game_activity;
        std::optional<gm_structs::DiscordRelationshipSnapshot> relationship;
        std::vector<gm_structs::DiscordUserApplicationProfileHandle> user_application_profiles;
    };

    struct DiscordRelationshipHandle
    {
        std::uint64_t id;
        gm_enums::DiscordRelationshipType discord_relationship_type;
        gm_enums::DiscordRelationshipType game_relationship_type;
        bool is_spam_request;
        std::optional<gm_structs::DiscordUserHandle> user;
    };

    struct DiscordLobbyMemberHandle
    {
        std::uint64_t id;
        bool can_link_lobby;
        bool connected;
        std::optional<gm_structs::DiscordUserHandle> user;
        gm::wire::StructStream metadata;
    };

    struct DiscordLobbyHandle
    {
        std::uint64_t id;
        std::vector<std::uint64_t> lobby_member_ids;
        std::vector<gm_structs::DiscordLobbyMemberHandle> lobby_members;
        std::optional<gm_structs::DiscordCallInfoHandle> call_info_handle;
        std::optional<gm_structs::DiscordLinkedChannel> linked_channel;
        gm::wire::StructStream metadata;
    };

    struct DiscordMessageHandle
    {
        std::uint64_t id;
        std::optional<gm_structs::DiscordUserHandle> author;
        std::uint64_t author_id;
        std::optional<gm_structs::DiscordChannelHandle> channel;
        std::uint64_t channel_id;
        std::optional<gm_enums::DiscordDisclosureTypes> disclosure_type;
        std::optional<gm_structs::DiscordLobbyHandle> lobby;
        std::string content;
        std::uint64_t edited_timestamp;
        gm::wire::StructStream metadata;
        std::optional<gm_structs::DiscordAdditionalContent> additional_content;
        std::string raw_content;
        gm_structs::DiscordUserHandle recipient;
        std::uint64_t recipient_id;
        bool sent_from_game;
        std::uint64_t sent_timestamp;
        std::optional<std::uint64_t> application_id;
        gm::wire::StructStream moderation_metadata;
    };

}

namespace gm::wire::codec
{
    template<>
    inline void writeValue<gm_structs::DiscordActivityInvite>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordActivityInvite& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.type);
        gm::wire::codec::writeValue(_buf, obj.sender_id);
        gm::wire::codec::writeValue(_buf, obj.application_id);
        gm::wire::codec::writeValue(_buf, obj.parent_application_id);
        gm::wire::codec::writeValue(_buf, obj.channel_id);
        gm::wire::codec::writeValue(_buf, obj.message_id);
        gm::wire::codec::writeValue(_buf, obj.is_valid);
        gm::wire::codec::writeValue(_buf, obj.party_id);
        gm::wire::codec::writeValue(_buf, obj.session_id);
    }

    template<>
    inline gm_structs::DiscordActivityInvite readValue<gm_structs::DiscordActivityInvite>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordActivityInvite obj;
        obj.type = gm::wire::codec::readValue<gm_enums::ActivityActionTypes>(_buf);
        obj.sender_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.application_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.parent_application_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.channel_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.message_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.is_valid = gm::wire::codec::readValue<bool>(_buf);
        obj.party_id = gm::wire::codec::readValue<std::string>(_buf);
        obj.session_id = gm::wire::codec::readValue<std::string>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordAudioDevice>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordAudioDevice& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.name);
        gm::wire::codec::writeValue(_buf, obj.is_default);
    }

    template<>
    inline gm_structs::DiscordAudioDevice readValue<gm_structs::DiscordAudioDevice>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordAudioDevice obj;
        obj.id = gm::wire::codec::readValue<std::string>(_buf);
        obj.name = gm::wire::codec::readValue<std::string>(_buf);
        obj.is_default = gm::wire::codec::readValue<bool>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordRelationshipSnapshot>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordRelationshipSnapshot& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.discord_relationship_type);
        gm::wire::codec::writeValue(_buf, obj.game_relationship_type);
        gm::wire::codec::writeValue(_buf, obj.is_spam_request);
    }

    template<>
    inline gm_structs::DiscordRelationshipSnapshot readValue<gm_structs::DiscordRelationshipSnapshot>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordRelationshipSnapshot obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.discord_relationship_type = gm::wire::codec::readValue<gm_enums::DiscordRelationshipType>(_buf);
        obj.game_relationship_type = gm::wire::codec::readValue<gm_enums::DiscordRelationshipType>(_buf);
        obj.is_spam_request = gm::wire::codec::readValue<bool>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordGuildMinimal>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordGuildMinimal& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.name);
    }

    template<>
    inline gm_structs::DiscordGuildMinimal readValue<gm_structs::DiscordGuildMinimal>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordGuildMinimal obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.name = gm::wire::codec::readValue<std::string>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordLinkedLobby>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordLinkedLobby& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.application_id);
        gm::wire::codec::writeValue(_buf, obj.lobby_id);
    }

    template<>
    inline gm_structs::DiscordLinkedLobby readValue<gm_structs::DiscordLinkedLobby>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordLinkedLobby obj;
        obj.application_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.lobby_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordClientResult>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordClientResult& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.error);
        gm::wire::codec::writeValue(_buf, obj.error_code);
        gm::wire::codec::writeValue(_buf, obj.successful);
        gm::wire::codec::writeValue(_buf, obj.retryable);
        gm::wire::codec::writeValue(_buf, obj.response_body);
        gm::wire::codec::writeValue(_buf, obj.status);
        gm::wire::codec::writeValue(_buf, obj.type);
        gm::wire::codec::writeValue(_buf, obj.retry_after);
    }

    template<>
    inline gm_structs::DiscordClientResult readValue<gm_structs::DiscordClientResult>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordClientResult obj;
        obj.error = gm::wire::codec::readValue<std::string>(_buf);
        obj.error_code = gm::wire::codec::readValue<std::int32_t>(_buf);
        obj.successful = gm::wire::codec::readValue<bool>(_buf);
        obj.retryable = gm::wire::codec::readValue<bool>(_buf);
        obj.response_body = gm::wire::codec::readValue<std::string>(_buf);
        obj.status = gm::wire::codec::readValue<std::int32_t>(_buf);
        obj.type = gm::wire::codec::readValue<gm_enums::DiscordErrorType>(_buf);
        obj.retry_after = gm::wire::codec::readValue<float>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordChannelHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordChannelHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.channel_id);
        gm::wire::codec::writeValue(_buf, obj.name);
        gm::wire::codec::writeValue(_buf, obj.type);
        gm::wire::codec::writeValue(_buf, obj.recipients);
    }

    template<>
    inline gm_structs::DiscordChannelHandle readValue<gm_structs::DiscordChannelHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordChannelHandle obj;
        obj.channel_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.name = gm::wire::codec::readValue<std::string>(_buf);
        obj.type = gm::wire::codec::readValue<double>(_buf);
        obj.recipients = gm::wire::codec::readVector<std::uint64_t>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordAdditionalContent>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordAdditionalContent& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.type);
        gm::wire::codec::writeValue(_buf, obj.title);
        gm::wire::codec::writeValue(_buf, obj.count);
    }

    template<>
    inline gm_structs::DiscordAdditionalContent readValue<gm_structs::DiscordAdditionalContent>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordAdditionalContent obj;
        obj.type = gm::wire::codec::readValue<gm_enums::DiscordAdditionalContentType>(_buf);
        obj.title = gm::wire::codec::readValue<std::string>(_buf);
        obj.count = gm::wire::codec::readValue<double>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordLinkedChannel>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordLinkedChannel& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.guild_id);
        gm::wire::codec::writeValue(_buf, obj.name);
    }

    template<>
    inline gm_structs::DiscordLinkedChannel readValue<gm_structs::DiscordLinkedChannel>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordLinkedChannel obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.guild_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.name = gm::wire::codec::readValue<std::string>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordVoiceStateHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordVoiceStateHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.self_deaf);
        gm::wire::codec::writeValue(_buf, obj.self_mute);
    }

    template<>
    inline gm_structs::DiscordVoiceStateHandle readValue<gm_structs::DiscordVoiceStateHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordVoiceStateHandle obj;
        obj.self_deaf = gm::wire::codec::readValue<bool>(_buf);
        obj.self_mute = gm::wire::codec::readValue<bool>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordActivityParty>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordActivityParty& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.activity_party_id);
        gm::wire::codec::writeValue(_buf, obj.current_size);
        gm::wire::codec::writeValue(_buf, obj.max_size);
        gm::wire::codec::writeValue(_buf, obj.privacy);
    }

    template<>
    inline gm_structs::DiscordActivityParty readValue<gm_structs::DiscordActivityParty>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordActivityParty obj;
        obj.activity_party_id = gm::wire::codec::readValue<std::string>(_buf);
        obj.current_size = gm::wire::codec::readOptional<std::int32_t>(_buf);
        obj.max_size = gm::wire::codec::readOptional<std::int32_t>(_buf);
        obj.privacy = gm::wire::codec::readValue<gm_enums::DiscordActivityPartyPrivacy>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordActivitySecrets>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordActivitySecrets& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.join);
    }

    template<>
    inline gm_structs::DiscordActivitySecrets readValue<gm_structs::DiscordActivitySecrets>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordActivitySecrets obj;
        obj.join = gm::wire::codec::readValue<std::string>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordActivityAssets>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordActivityAssets& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.large_image);
        gm::wire::codec::writeValue(_buf, obj.large_text);
        gm::wire::codec::writeValue(_buf, obj.large_url);
        gm::wire::codec::writeValue(_buf, obj.small_image);
        gm::wire::codec::writeValue(_buf, obj.small_text);
        gm::wire::codec::writeValue(_buf, obj.small_url);
        gm::wire::codec::writeValue(_buf, obj.invite_cover_image);
    }

    template<>
    inline gm_structs::DiscordActivityAssets readValue<gm_structs::DiscordActivityAssets>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordActivityAssets obj;
        obj.large_image = gm::wire::codec::readOptional<std::string>(_buf);
        obj.large_text = gm::wire::codec::readOptional<std::string>(_buf);
        obj.large_url = gm::wire::codec::readOptional<std::string>(_buf);
        obj.small_image = gm::wire::codec::readOptional<std::string>(_buf);
        obj.small_text = gm::wire::codec::readOptional<std::string>(_buf);
        obj.small_url = gm::wire::codec::readOptional<std::string>(_buf);
        obj.invite_cover_image = gm::wire::codec::readOptional<std::string>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordActivityButton>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordActivityButton& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.label);
        gm::wire::codec::writeValue(_buf, obj.url);
    }

    template<>
    inline gm_structs::DiscordActivityButton readValue<gm_structs::DiscordActivityButton>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordActivityButton obj;
        obj.label = gm::wire::codec::readValue<std::string>(_buf);
        obj.url = gm::wire::codec::readValue<std::string>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordActivityTimestamps>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordActivityTimestamps& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.start);
        gm::wire::codec::writeValue(_buf, obj.end);
    }

    template<>
    inline gm_structs::DiscordActivityTimestamps readValue<gm_structs::DiscordActivityTimestamps>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordActivityTimestamps obj;
        obj.start = gm::wire::codec::readOptional<std::uint64_t>(_buf);
        obj.end = gm::wire::codec::readOptional<std::uint64_t>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordUserApplicationProfileHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordUserApplicationProfileHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.avatar_hash);
        gm::wire::codec::writeValue(_buf, obj.metadata);
        gm::wire::codec::writeValue(_buf, obj.provider_id);
        gm::wire::codec::writeValue(_buf, obj.provider_issued_user_id);
        gm::wire::codec::writeValue(_buf, obj.provider_type);
        gm::wire::codec::writeValue(_buf, obj.username);
    }

    template<>
    inline gm_structs::DiscordUserApplicationProfileHandle readValue<gm_structs::DiscordUserApplicationProfileHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordUserApplicationProfileHandle obj;
        obj.avatar_hash = gm::wire::codec::readValue<std::string>(_buf);
        obj.metadata = gm::wire::codec::readValue<std::string>(_buf);
        obj.provider_id = gm::wire::codec::readOptional<std::string>(_buf);
        obj.provider_issued_user_id = gm::wire::codec::readValue<std::string>(_buf);
        obj.provider_type = gm::wire::codec::readValue<double>(_buf);
        obj.username = gm::wire::codec::readValue<std::string>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordUserMessageSummary>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordUserMessageSummary& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.user_id);
        gm::wire::codec::writeValue(_buf, obj.last_message_id);
    }

    template<>
    inline gm_structs::DiscordUserMessageSummary readValue<gm_structs::DiscordUserMessageSummary>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordUserMessageSummary obj;
        obj.user_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.last_message_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordVADThresholdSettings>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordVADThresholdSettings& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.automatic);
        gm::wire::codec::writeValue(_buf, obj.vad_threshold);
    }

    template<>
    inline gm_structs::DiscordVADThresholdSettings readValue<gm_structs::DiscordVADThresholdSettings>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordVADThresholdSettings obj;
        obj.automatic = gm::wire::codec::readValue<bool>(_buf);
        obj.vad_threshold = gm::wire::codec::readValue<float>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordAuthorizationArgs>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordAuthorizationArgs& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.client_id);
        gm::wire::codec::writeValue(_buf, obj.scopes);
        gm::wire::codec::writeValue(_buf, obj.state);
        gm::wire::codec::writeValue(_buf, obj.nonce);
        gm::wire::codec::writeValue(_buf, obj.use_code_challenge);
    }

    template<>
    inline gm_structs::DiscordAuthorizationArgs readValue<gm_structs::DiscordAuthorizationArgs>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordAuthorizationArgs obj;
        obj.client_id = gm::wire::codec::readOptional<std::uint64_t>(_buf);
        obj.scopes = gm::wire::codec::readOptional<std::string>(_buf);
        obj.state = gm::wire::codec::readOptional<std::string>(_buf);
        obj.nonce = gm::wire::codec::readOptional<std::string>(_buf);
        obj.use_code_challenge = gm::wire::codec::readOptional<bool>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordClientCreateOptions>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordClientCreateOptions& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.api_base);
        gm::wire::codec::writeValue(_buf, obj.web_base);
        gm::wire::codec::writeValue(_buf, obj.experimental_audio_system);
        gm::wire::codec::writeValue(_buf, obj.experimental_android_prevent_comms_for_bluetooth);
        gm::wire::codec::writeValue(_buf, obj.cpu_affinity_mask);
    }

    template<>
    inline gm_structs::DiscordClientCreateOptions readValue<gm_structs::DiscordClientCreateOptions>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordClientCreateOptions obj;
        obj.api_base = gm::wire::codec::readValue<std::string>(_buf);
        obj.web_base = gm::wire::codec::readValue<std::string>(_buf);
        obj.experimental_audio_system = gm::wire::codec::readValue<gm_enums::DiscordAudioSystem>(_buf);
        obj.experimental_android_prevent_comms_for_bluetooth = gm::wire::codec::readValue<bool>(_buf);
        obj.cpu_affinity_mask = gm::wire::codec::readOptional<std::uint64_t>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordGuildChannel>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordGuildChannel& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.is_linkable);
        gm::wire::codec::writeValue(_buf, obj.is_fully_public);
        gm::wire::codec::writeValue(_buf, obj.is_viewable_and_writeable_by_all_members);
        gm::wire::codec::writeValue(_buf, obj.linked_lobby);
        gm::wire::codec::writeValue(_buf, obj.name);
        gm::wire::codec::writeValue(_buf, obj.parent_id);
        gm::wire::codec::writeValue(_buf, obj.position);
        gm::wire::codec::writeValue(_buf, obj.type);
    }

    template<>
    inline gm_structs::DiscordGuildChannel readValue<gm_structs::DiscordGuildChannel>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordGuildChannel obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.is_linkable = gm::wire::codec::readValue<bool>(_buf);
        obj.is_fully_public = gm::wire::codec::readValue<bool>(_buf);
        obj.is_viewable_and_writeable_by_all_members = gm::wire::codec::readValue<bool>(_buf);
        obj.linked_lobby = gm::wire::codec::readOptional<gm_structs::DiscordLinkedLobby>(_buf);
        obj.name = gm::wire::codec::readValue<std::string>(_buf);
        obj.parent_id = gm::wire::codec::readOptional<std::uint64_t>(_buf);
        obj.position = gm::wire::codec::readValue<std::int32_t>(_buf);
        obj.type = gm::wire::codec::readValue<gm_enums::DiscordChannelType>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordCallVoiceStateEntry>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordCallVoiceStateEntry& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.user_id);
        gm::wire::codec::writeValue(_buf, obj.voice_state_handle);
    }

    template<>
    inline gm_structs::DiscordCallVoiceStateEntry readValue<gm_structs::DiscordCallVoiceStateEntry>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordCallVoiceStateEntry obj;
        obj.user_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.voice_state_handle = gm::wire::codec::readValue<gm_structs::DiscordVoiceStateHandle>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordActivity>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordActivity& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.type);
        gm::wire::codec::writeValue(_buf, obj.details);
        gm::wire::codec::writeValue(_buf, obj.state);
        gm::wire::codec::writeValue(_buf, obj.name);
        gm::wire::codec::writeValue(_buf, obj.status_display_type);
        gm::wire::codec::writeValue(_buf, obj.state_url);
        gm::wire::codec::writeValue(_buf, obj.details_url);
        gm::wire::codec::writeValue(_buf, obj.application_id);
        gm::wire::codec::writeValue(_buf, obj.parent_application_id);
        gm::wire::codec::writeValue(_buf, obj.assets);
        gm::wire::codec::writeValue(_buf, obj.timestamps);
        gm::wire::codec::writeValue(_buf, obj.supported_platforms);
        gm::wire::codec::writeValue(_buf, obj.party);
        gm::wire::codec::writeValue(_buf, obj.secrets);
        gm::wire::codec::writeValue(_buf, obj.buttons);
    }

    template<>
    inline gm_structs::DiscordActivity readValue<gm_structs::DiscordActivity>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordActivity obj;
        obj.type = gm::wire::codec::readValue<gm_enums::DiscordActivityTypes>(_buf);
        obj.details = gm::wire::codec::readOptional<std::string>(_buf);
        obj.state = gm::wire::codec::readOptional<std::string>(_buf);
        obj.name = gm::wire::codec::readValue<std::string>(_buf);
        obj.status_display_type = gm::wire::codec::readOptional<gm_enums::DiscordStatusDisplayTypes>(_buf);
        obj.state_url = gm::wire::codec::readOptional<std::string>(_buf);
        obj.details_url = gm::wire::codec::readOptional<std::string>(_buf);
        obj.application_id = gm::wire::codec::readOptional<std::uint64_t>(_buf);
        obj.parent_application_id = gm::wire::codec::readOptional<std::uint64_t>(_buf);
        obj.assets = gm::wire::codec::readOptional<gm_structs::DiscordActivityAssets>(_buf);
        obj.timestamps = gm::wire::codec::readOptional<gm_structs::DiscordActivityTimestamps>(_buf);
        obj.supported_platforms = gm::wire::codec::readOptional<gm_enums::DiscordActivityGamePlatforms>(_buf);
        obj.party = gm::wire::codec::readOptional<gm_structs::DiscordActivityParty>(_buf);
        obj.secrets = gm::wire::codec::readOptional<gm_structs::DiscordActivitySecrets>(_buf);
        obj.buttons = gm::wire::codec::readVector<gm_structs::DiscordActivityButton>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordCall>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordCall& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.audio_mode);
        gm::wire::codec::writeValue(_buf, obj.channel_id);
        gm::wire::codec::writeValue(_buf, obj.guild_id);
        gm::wire::codec::writeValue(_buf, obj.participants);
        gm::wire::codec::writeValue(_buf, obj.ptt_active);
        gm::wire::codec::writeValue(_buf, obj.ptt_release_delay);
        gm::wire::codec::writeValue(_buf, obj.self_deaf);
        gm::wire::codec::writeValue(_buf, obj.self_mute);
        gm::wire::codec::writeValue(_buf, obj.vad_threshold);
        gm::wire::codec::writeValue(_buf, obj.status);
    }

    template<>
    inline gm_structs::DiscordCall readValue<gm_structs::DiscordCall>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordCall obj;
        obj.audio_mode = gm::wire::codec::readValue<gm_enums::DiscordAudioModeType>(_buf);
        obj.channel_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.guild_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.participants = gm::wire::codec::readVector<std::uint64_t>(_buf);
        obj.ptt_active = gm::wire::codec::readValue<bool>(_buf);
        obj.ptt_release_delay = gm::wire::codec::readValue<std::uint32_t>(_buf);
        obj.self_deaf = gm::wire::codec::readValue<bool>(_buf);
        obj.self_mute = gm::wire::codec::readValue<bool>(_buf);
        obj.vad_threshold = gm::wire::codec::readValue<gm_structs::DiscordVADThresholdSettings>(_buf);
        obj.status = gm::wire::codec::readValue<gm_enums::DiscordCallStatus>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordCallInfoHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordCallInfoHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.channel_id);
        gm::wire::codec::writeValue(_buf, obj.guild_id);
        gm::wire::codec::writeValue(_buf, obj.participants);
        gm::wire::codec::writeValue(_buf, obj.voice_state_handles);
    }

    template<>
    inline gm_structs::DiscordCallInfoHandle readValue<gm_structs::DiscordCallInfoHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordCallInfoHandle obj;
        obj.channel_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.guild_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.participants = gm::wire::codec::readVector<std::uint64_t>(_buf);
        obj.voice_state_handles = gm::wire::codec::readVector<gm_structs::DiscordCallVoiceStateEntry>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordUserHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordUserHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.username);
        gm::wire::codec::writeValue(_buf, obj.display_name);
        gm::wire::codec::writeValue(_buf, obj.avatar);
        gm::wire::codec::writeValue(_buf, obj.avatar_type);
        gm::wire::codec::writeValue(_buf, obj.avatar_type_string);
        gm::wire::codec::writeValue(_buf, obj.avatar_url);
        gm::wire::codec::writeValue(_buf, obj.global_name);
        gm::wire::codec::writeValue(_buf, obj.is_provisional);
        gm::wire::codec::writeValue(_buf, obj.status);
        gm::wire::codec::writeValue(_buf, obj.game_activity);
        gm::wire::codec::writeValue(_buf, obj.relationship);
        gm::wire::codec::writeValue(_buf, obj.user_application_profiles);
    }

    template<>
    inline gm_structs::DiscordUserHandle readValue<gm_structs::DiscordUserHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordUserHandle obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.username = gm::wire::codec::readValue<std::string>(_buf);
        obj.display_name = gm::wire::codec::readValue<std::string>(_buf);
        obj.avatar = gm::wire::codec::readOptional<std::string>(_buf);
        obj.avatar_type = gm::wire::codec::readValue<gm_enums::DiscordAvatarType>(_buf);
        obj.avatar_type_string = gm::wire::codec::readValue<std::string>(_buf);
        obj.avatar_url = gm::wire::codec::readValue<std::string>(_buf);
        obj.global_name = gm::wire::codec::readOptional<std::string>(_buf);
        obj.is_provisional = gm::wire::codec::readValue<bool>(_buf);
        obj.status = gm::wire::codec::readValue<gm_enums::DiscordStatusType>(_buf);
        obj.game_activity = gm::wire::codec::readOptional<gm_structs::DiscordActivity>(_buf);
        obj.relationship = gm::wire::codec::readOptional<gm_structs::DiscordRelationshipSnapshot>(_buf);
        obj.user_application_profiles = gm::wire::codec::readVector<gm_structs::DiscordUserApplicationProfileHandle>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordRelationshipHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordRelationshipHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.discord_relationship_type);
        gm::wire::codec::writeValue(_buf, obj.game_relationship_type);
        gm::wire::codec::writeValue(_buf, obj.is_spam_request);
        gm::wire::codec::writeValue(_buf, obj.user);
    }

    template<>
    inline gm_structs::DiscordRelationshipHandle readValue<gm_structs::DiscordRelationshipHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordRelationshipHandle obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.discord_relationship_type = gm::wire::codec::readValue<gm_enums::DiscordRelationshipType>(_buf);
        obj.game_relationship_type = gm::wire::codec::readValue<gm_enums::DiscordRelationshipType>(_buf);
        obj.is_spam_request = gm::wire::codec::readValue<bool>(_buf);
        obj.user = gm::wire::codec::readOptional<gm_structs::DiscordUserHandle>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordLobbyMemberHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordLobbyMemberHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.can_link_lobby);
        gm::wire::codec::writeValue(_buf, obj.connected);
        gm::wire::codec::writeValue(_buf, obj.user);
        gm::wire::codec::writeValue(_buf, obj.metadata);
    }

    template<>
    inline gm_structs::DiscordLobbyMemberHandle readValue<gm_structs::DiscordLobbyMemberHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordLobbyMemberHandle obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.can_link_lobby = gm::wire::codec::readValue<bool>(_buf);
        obj.connected = gm::wire::codec::readValue<bool>(_buf);
        obj.user = gm::wire::codec::readOptional<gm_structs::DiscordUserHandle>(_buf);
        obj.metadata = gm::wire::codec::readValue<gm::wire::StructStream>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordLobbyHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordLobbyHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.lobby_member_ids);
        gm::wire::codec::writeValue(_buf, obj.lobby_members);
        gm::wire::codec::writeValue(_buf, obj.call_info_handle);
        gm::wire::codec::writeValue(_buf, obj.linked_channel);
        gm::wire::codec::writeValue(_buf, obj.metadata);
    }

    template<>
    inline gm_structs::DiscordLobbyHandle readValue<gm_structs::DiscordLobbyHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordLobbyHandle obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.lobby_member_ids = gm::wire::codec::readVector<std::uint64_t>(_buf);
        obj.lobby_members = gm::wire::codec::readVector<gm_structs::DiscordLobbyMemberHandle>(_buf);
        obj.call_info_handle = gm::wire::codec::readOptional<gm_structs::DiscordCallInfoHandle>(_buf);
        obj.linked_channel = gm::wire::codec::readOptional<gm_structs::DiscordLinkedChannel>(_buf);
        obj.metadata = gm::wire::codec::readValue<gm::wire::StructStream>(_buf);
        return obj;
    }

    template<>
    inline void writeValue<gm_structs::DiscordMessageHandle>(gm::byteio::IByteWriter& _buf, const gm_structs::DiscordMessageHandle& obj)
    {
        gm::wire::codec::writeValue(_buf, obj.id);
        gm::wire::codec::writeValue(_buf, obj.author);
        gm::wire::codec::writeValue(_buf, obj.author_id);
        gm::wire::codec::writeValue(_buf, obj.channel);
        gm::wire::codec::writeValue(_buf, obj.channel_id);
        gm::wire::codec::writeValue(_buf, obj.disclosure_type);
        gm::wire::codec::writeValue(_buf, obj.lobby);
        gm::wire::codec::writeValue(_buf, obj.content);
        gm::wire::codec::writeValue(_buf, obj.edited_timestamp);
        gm::wire::codec::writeValue(_buf, obj.metadata);
        gm::wire::codec::writeValue(_buf, obj.additional_content);
        gm::wire::codec::writeValue(_buf, obj.raw_content);
        gm::wire::codec::writeValue(_buf, obj.recipient);
        gm::wire::codec::writeValue(_buf, obj.recipient_id);
        gm::wire::codec::writeValue(_buf, obj.sent_from_game);
        gm::wire::codec::writeValue(_buf, obj.sent_timestamp);
        gm::wire::codec::writeValue(_buf, obj.application_id);
        gm::wire::codec::writeValue(_buf, obj.moderation_metadata);
    }

    template<>
    inline gm_structs::DiscordMessageHandle readValue<gm_structs::DiscordMessageHandle>(gm::byteio::BufferReader& _buf)
    {
        gm_structs::DiscordMessageHandle obj;
        obj.id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.author = gm::wire::codec::readOptional<gm_structs::DiscordUserHandle>(_buf);
        obj.author_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.channel = gm::wire::codec::readOptional<gm_structs::DiscordChannelHandle>(_buf);
        obj.channel_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.disclosure_type = gm::wire::codec::readOptional<gm_enums::DiscordDisclosureTypes>(_buf);
        obj.lobby = gm::wire::codec::readOptional<gm_structs::DiscordLobbyHandle>(_buf);
        obj.content = gm::wire::codec::readValue<std::string>(_buf);
        obj.edited_timestamp = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.metadata = gm::wire::codec::readValue<gm::wire::StructStream>(_buf);
        obj.additional_content = gm::wire::codec::readOptional<gm_structs::DiscordAdditionalContent>(_buf);
        obj.raw_content = gm::wire::codec::readValue<std::string>(_buf);
        obj.recipient = gm::wire::codec::readValue<gm_structs::DiscordUserHandle>(_buf);
        obj.recipient_id = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.sent_from_game = gm::wire::codec::readValue<bool>(_buf);
        obj.sent_timestamp = gm::wire::codec::readValue<std::uint64_t>(_buf);
        obj.application_id = gm::wire::codec::readOptional<std::uint64_t>(_buf);
        obj.moderation_metadata = gm::wire::codec::readValue<gm::wire::StructStream>(_buf);
        return obj;
    }

}

namespace gm::wire::details
{
    template<>
    struct gm_struct_traits<gm_structs::DiscordActivityInvite>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 0;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordAudioDevice>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 1;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordRelationshipSnapshot>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 2;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordGuildMinimal>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 3;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordLinkedLobby>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 4;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordClientResult>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 5;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordChannelHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 6;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordAdditionalContent>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 7;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordLinkedChannel>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 8;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordVoiceStateHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 9;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordActivityParty>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 10;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordActivitySecrets>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 11;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordActivityAssets>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 12;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordActivityButton>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 13;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordActivityTimestamps>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 14;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordUserApplicationProfileHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 15;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordUserMessageSummary>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 16;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordVADThresholdSettings>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 17;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordAuthorizationArgs>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 18;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordClientCreateOptions>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 19;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordGuildChannel>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 20;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordCallVoiceStateEntry>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 21;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordActivity>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 22;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordCall>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 23;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordCallInfoHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 24;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordUserHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 25;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordRelationshipHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 26;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordLobbyMemberHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 27;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordLobbyHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 28;
    };

    template<>
    struct gm_struct_traits<gm_structs::DiscordMessageHandle>
    {
        static constexpr bool is_gm_struct = true;
        static constexpr std::uint32_t codec_id = 29;
    };

}

void discord_social_run_callbacks();
void discord_social_init(const std::optional<gm_structs::DiscordClientCreateOptions>& options);
void discord_social_shutdown();
void discord_social_client_end_call(std::uint64_t channel_id, const gm::wire::GMFunction& callback);
void discord_social_client_end_calls(const gm::wire::GMFunction& callback);
gm_structs::DiscordCall discord_social_client_get_call(std::uint64_t channel_id);
std::vector<gm_structs::DiscordCall> discord_social_client_get_calls();
void discord_social_client_get_current_input_device(const gm::wire::GMFunction& callback);
void discord_social_client_get_current_output_device(const gm::wire::GMFunction& callback);
void discord_social_client_get_input_devices(const gm::wire::GMFunction& callback);
float discord_social_client_get_input_volume();
void discord_social_client_get_output_devices(const gm::wire::GMFunction& callback);
float discord_social_client_get_output_volume();
bool discord_social_client_get_self_deaf_all();
bool discord_social_client_get_self_mute_all();
void discord_social_client_set_automatic_gain_control(bool on);
void discord_social_client_set_device_change_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_echo_cancellation(bool on);
void discord_social_client_set_input_device(std::string_view device_id, const gm::wire::GMFunction& callback);
void discord_social_client_set_input_volume(float vol);
void discord_social_client_set_no_audio_input_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_no_audio_input_threshold(float threshold);
void discord_social_client_set_noise_suppression(bool on);
void discord_social_client_set_opus_hardware_coding(bool encode, bool decode);
void discord_social_client_set_output_device(std::string_view device_id, const gm::wire::GMFunction& callback);
void discord_social_client_set_output_volume(float vol);
void discord_social_client_set_self_deaf_all(bool deaf);
void discord_social_client_set_self_mute_all(bool mute);
void discord_social_client_set_thread_priority(gm_enums::DiscordClientThread thread, std::int32_t priority);
void discord_social_client_set_voice_participant_changed_callback(const gm::wire::GMFunction& callback);
bool discord_social_client_show_audio_route_picker();
gm_structs::DiscordCall discord_social_client_start_call(std::uint64_t channel_id);
void discord_social_call_audio_should_mute(bool should_mute);
gm_structs::DiscordCall discord_social_client_start_call_with_audio_callbacks(std::uint64_t lobby_id, const gm::wire::GMFunction& received_callback, const gm::wire::GMFunction& captured_callback);
std::uint64_t discord_social_call_fetch_received_data(std::uint64_t lobby_id, std::uint64_t user_id, gm::wire::GMBuffer out_buffer);
std::uint64_t discord_social_call_fetch_captured_data(std::uint64_t lobby_id, gm::wire::GMBuffer out_buffer);
void discord_social_client_abort_authorize();
void discord_social_client_abort_get_token_from_device();
std::string discord_social_client_create_authorization_code_verifier();
void discord_social_client_authorize(const gm_structs::DiscordAuthorizationArgs& args, const gm::wire::GMFunction& callback);
void discord_social_client_close_authorize_device_screen();
void discord_social_client_get_provisional_token(std::uint64_t application_id, gm_enums::DiscordAuthenticationExternalAuthType token_type, std::string_view token, const gm::wire::GMFunction& callback);
void discord_social_client_get_token(std::uint64_t application_id, std::string_view code, std::string_view code_verifier, std::string_view redirect_uri, const gm::wire::GMFunction& callback);
void discord_social_client_get_token_from_device(std::uint64_t client_id, std::string_view scopes, const gm::wire::GMFunction& callback);
void discord_social_client_get_token_from_device_provisional_merge(std::uint64_t client_id, std::string_view scopes, gm_enums::DiscordAuthenticationExternalAuthType external_auth_type, std::string_view external_auth_token, const gm::wire::GMFunction& callback);
void discord_social_client_get_token_from_provisional_merge(std::uint64_t application_id, std::string_view code, std::string_view code_verifier, std::string_view redirect_uri, gm_enums::DiscordAuthenticationExternalAuthType external_auth_type, std::string_view external_auth_token, const gm::wire::GMFunction& callback);
bool discord_social_client_is_authenticated();
void discord_social_client_open_authorize_device_screen(std::uint64_t client_id, std::string_view user_code);
void discord_social_client_provisional_user_merge_completed(bool success);
void discord_social_client_refresh_token(std::uint64_t application_id, std::string_view refresh_token, const gm::wire::GMFunction& callback);
void discord_social_client_set_authorize_device_screen_closed_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_game_window_pid(std::int32_t pid);
void discord_social_client_set_token_expiration_callback(const gm::wire::GMFunction& callback);
void discord_social_client_update_provisional_account_display_name(std::string_view name, const gm::wire::GMFunction& callback);
void discord_social_client_update_token(gm_enums::DiscordAuthorizationTokenType token_type, std::string_view token, const gm::wire::GMFunction& callback);
void discord_social_client_revoke_token(std::uint64_t application_id, std::string_view token, const gm::wire::GMFunction& callback);
void discord_social_client_exchange_child_token(std::string_view parent_application_token, std::uint64_t child_application_id, const gm::wire::GMFunction& callback);
void discord_social_client_unmerge_into_provisional_account(std::uint64_t application_id, gm_enums::DiscordAuthenticationExternalAuthType external_auth_type, std::string_view external_auth_token, const gm::wire::GMFunction& callback);
void discord_social_client_register_authorize_request_callback(const gm::wire::GMFunction& callback);
bool discord_social_client_can_open_message_in_discord(std::uint64_t message_id);
void discord_social_client_delete_user_message(std::uint64_t recipient_id, std::uint64_t message_id, const gm::wire::GMFunction& callback);
std::optional<gm_structs::DiscordChannelHandle> discord_social_client_get_channel_handle(std::uint64_t channel_id);
std::optional<gm_structs::DiscordMessageHandle> discord_social_client_get_message_handle(std::uint64_t message_id);
void discord_social_client_open_message_in_discord(std::uint64_t message_id, const gm::wire::GMFunction& provisional_user_merge_required_callback, const gm::wire::GMFunction& open_message_in_discord_callback);
void discord_social_client_send_lobby_message(std::uint64_t lobby_id, std::string_view content, const gm::wire::GMFunction& callback);
void discord_social_client_send_lobby_message_with_metadata(std::uint64_t lobby_id, std::string_view content, const gm::wire::GMObjectView& metadata, const gm::wire::GMFunction& callback);
void discord_social_client_send_user_message(std::uint64_t recipient_id, std::string_view content, const gm::wire::GMFunction& callback);
void discord_social_client_send_user_message_with_metadata(std::uint64_t recipient_id, std::string_view content, const gm::wire::GMObjectView& metadata, const gm::wire::GMFunction& callback);
void discord_social_client_set_message_created_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_message_deleted_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_message_updated_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_showing_chat(bool showing_chat);
void discord_social_client_edit_user_message(std::uint64_t recipient_id, std::uint64_t message_id, std::string_view content, const gm::wire::GMFunction& callback);
void discord_social_client_get_lobby_messages_with_limit(std::uint64_t lobby_id, std::int32_t limit, const gm::wire::GMFunction& callback);
void discord_social_client_get_user_message_summaries(const gm::wire::GMFunction& callback);
void discord_social_client_get_user_messages_with_limit(std::uint64_t recipient_id, std::int32_t limit, const gm::wire::GMFunction& callback);
void discord_social_client_add_log_callback(gm_enums::DiscordLoggingSeverity min_severity, const gm::wire::GMFunction& callback);
void discord_social_client_add_voice_log_callback(gm_enums::DiscordLoggingSeverity min_severity, const gm::wire::GMFunction& callback);
void discord_social_client_connect();
void discord_social_client_disconnect();
gm_enums::DiscordClientStatus discord_social_client_get_status();
bool discord_social_client_set_log_dir(std::string_view path, gm_enums::DiscordLoggingSeverity min_severity);
void discord_social_client_set_status_changed_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_voice_log_dir(std::string_view path, gm_enums::DiscordLoggingSeverity min_severity);
void discord_social_client_create_or_join_lobby(std::string_view secret, const gm::wire::GMFunction& callback);
void discord_social_client_create_or_join_lobby_with_metadata(std::string_view secret, const gm::wire::GMObjectView& lobby_metadata_struct, const gm::wire::GMObjectView& member_metadata_struct, const gm::wire::GMFunction& callback);
void discord_social_client_get_guild_channels(std::uint64_t guild_id, const gm::wire::GMFunction& callback);
std::optional<gm_structs::DiscordLobbyHandle> discord_social_client_get_lobby_handle(std::uint64_t lobby_id);
std::vector<std::uint64_t> discord_social_client_get_lobby_ids();
void discord_social_client_get_user_guilds(const gm::wire::GMFunction& callback);
void discord_social_client_leave_lobby(std::uint64_t lobby_id, const gm::wire::GMFunction& callback);
void discord_social_client_link_channel_to_lobby(std::uint64_t lobby_id, std::uint64_t channel_id, const gm::wire::GMFunction& callback);
void discord_social_client_set_lobby_created_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_lobby_deleted_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_lobby_member_added_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_lobby_member_removed_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_lobby_member_updated_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_lobby_updated_callback(const gm::wire::GMFunction& callback);
void discord_social_client_unlink_channel_from_lobby(std::uint64_t lobby_id, const gm::wire::GMFunction& callback);
void discord_social_client_join_linked_lobby_guild(std::uint64_t lobby_id, const gm::wire::GMFunction& provisional_user_merge_required_callback, const gm::wire::GMFunction& callback);
void discord_social_client_accept_activity_invite(const gm_structs::DiscordActivityInvite& activity_invite, const gm::wire::GMFunction& callback);
void discord_social_client_clear_rich_presence();
bool discord_social_client_register_launch_command(std::uint64_t application_id, std::string_view command);
bool discord_social_client_register_launch_steam_application(std::uint64_t application_id, std::uint32_t steam_app_id);
void discord_social_client_send_activity_invite(std::uint64_t user_id, std::string_view content, const gm::wire::GMFunction& callback);
void discord_social_client_send_activity_join_request(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_send_activity_join_request_reply(const gm_structs::DiscordActivityInvite& activity_invite, const gm::wire::GMFunction& callback);
void discord_social_client_set_activity_invite_created_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_activity_invite_updated_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_activity_join_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_activity_join_with_application_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_online_status(gm_enums::DiscordClientStatus status, const gm::wire::GMFunction& callback);
void discord_social_client_update_rich_presence(const gm_structs::DiscordActivity& activity, const gm::wire::GMFunction& callback);
void discord_social_client_accept_discord_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_accept_game_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_block_user(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_cancel_discord_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_cancel_game_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback);
gm_structs::DiscordRelationshipHandle discord_social_client_get_relationship_handle(std::uint64_t user_id);
std::vector<gm_structs::DiscordRelationshipHandle> discord_social_client_get_relationships();
std::vector<gm_structs::DiscordRelationshipHandle> discord_social_client_get_relationships_by_group(gm_enums::DiscordRelationshipGroupType group_type);
void discord_social_client_reject_discord_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_reject_game_friend_request(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_remove_discord_and_game_friend(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_remove_game_friend(std::uint64_t user_id, const gm::wire::GMFunction& callback);
std::vector<gm_structs::DiscordUserHandle> discord_social_client_search_friends_by_username(std::string_view search_str);
void discord_social_client_send_discord_friend_request(std::string_view username, const gm::wire::GMFunction& callback);
void discord_social_client_send_discord_friend_request_by_id(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_send_game_friend_request(std::string_view username, const gm::wire::GMFunction& callback);
void discord_social_client_send_game_friend_request_by_id(std::uint64_t user_id, const gm::wire::GMFunction& callback);
void discord_social_client_set_relationship_created_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_relationship_deleted_callback(const gm::wire::GMFunction& callback);
void discord_social_client_set_relationship_groups_updated_callback(const gm::wire::GMFunction& callback);
void discord_social_client_unblock_user(std::uint64_t user_id, const gm::wire::GMFunction& callback);
std::optional<gm_structs::DiscordUserHandle> discord_social_client_get_current_user();
void discord_social_client_get_discord_client_connected_user(std::uint64_t application_id, const gm::wire::GMFunction& callback);
std::optional<gm_structs::DiscordUserHandle> discord_social_client_get_user(std::uint64_t user_id);
void discord_social_client_set_user_updated_callback(const gm::wire::GMFunction& callback);
std::string discord_social_client_error_to_string(gm_enums::DiscordClientError error);
std::string discord_social_client_get_default_audio_device_id();
std::string discord_social_client_get_default_communication_scopes();
std::string discord_social_client_get_default_presence_scopes();
std::string discord_social_client_get_version_hash();
std::uint32_t discord_social_client_get_version_major();
std::uint32_t discord_social_client_get_version_minor();
std::uint32_t discord_social_client_get_version_patch();
std::uint64_t discord_social_client_get_application_id();
void discord_social_client_set_application_id(std::uint64_t application_id);
void discord_social_client_is_discord_app_installed(const gm::wire::GMFunction& callback);
void discord_social_client_open_connected_games_settings_in_discord(const gm::wire::GMFunction& callback);
std::string discord_social_client_status_to_string(gm_enums::DiscordClientStatus status);
std::string discord_social_client_thread_to_string(gm_enums::DiscordClientThread thread);
bool discord_social_call_get_local_mute(std::uint64_t channel_id, std::uint64_t user_id);
float discord_social_call_get_participant_volume(std::uint64_t channel_id, std::uint64_t user_id);
std::uint32_t discord_social_call_get_ptt_release_delay(std::uint64_t channel_id);
gm_structs::DiscordVADThresholdSettings discord_social_call_get_vad_threshold(std::uint64_t channel_id);
gm_structs::DiscordVoiceStateHandle discord_social_call_get_voice_state_handle(std::uint64_t channel_id, std::uint64_t user_id);
bool discord_social_call_set_audio_mode(std::uint64_t channel_id, gm_enums::DiscordAudioModeType audio_mode);
bool discord_social_call_set_local_mute(std::uint64_t channel_id, std::uint64_t user_id, bool mute);
bool discord_social_call_set_on_voice_state_changed_callback(std::uint64_t channel_id, const gm::wire::GMFunction& callback);
bool discord_social_call_set_participant_changed_callback(std::uint64_t channel_id, const gm::wire::GMFunction& callback);
bool discord_social_call_set_participant_volume(std::uint64_t channel_id, std::uint64_t user_id, float vol);
bool discord_social_call_set_ptt_active(std::uint64_t channel_id, bool active);
bool discord_social_call_set_ptt_release_delay(std::uint64_t channel_id, std::uint32_t release_delay_ms);
bool discord_social_call_set_self_deaf(std::uint64_t channel_id, bool deaf);
bool discord_social_call_set_self_mute(std::uint64_t channel_id, bool mute);
bool discord_social_call_set_speaking_status_changed_callback(std::uint64_t channel_id, const gm::wire::GMFunction& callback);
bool discord_social_call_set_status_changed_callback(std::uint64_t channel_id, const gm::wire::GMFunction& callback);
bool discord_social_call_set_vad_threshold(std::uint64_t channel_id, bool automatic, float threshold);
void discord_social_client_remove_device_change_callback();
void discord_social_client_remove_no_audio_input_callback();
void discord_social_client_remove_voice_participant_changed_callback();
void discord_social_client_remove_authorize_device_screen_closed_callback();
void discord_social_client_remove_token_expiration_callback();
void discord_social_client_remove_message_created_callback();
void discord_social_client_remove_message_deleted_callback();
void discord_social_client_remove_message_updated_callback();
void discord_social_client_remove_log_callback();
void discord_social_client_remove_status_changed_callback();
void discord_social_client_remove_lobby_created_callback();
void discord_social_client_remove_lobby_deleted_callback();
void discord_social_client_remove_lobby_member_added_callback();
void discord_social_client_remove_lobby_member_removed_callback();
void discord_social_client_remove_lobby_member_updated_callback();
void discord_social_client_remove_lobby_updated_callback();
void discord_social_client_remove_activity_invite_created_callback();
void discord_social_client_remove_activity_invite_updated_callback();
void discord_social_client_remove_activity_join_callback();
void discord_social_client_remove_activity_join_with_application_callback();
void discord_social_client_remove_authorize_request_callback();
void discord_social_client_remove_relationship_created_callback();
void discord_social_client_remove_relationship_deleted_callback();
void discord_social_client_remove_relationship_groups_updated_callback();
void discord_social_client_remove_user_updated_callback();
void discord_social_call_remove_on_voice_state_changed_callback(std::uint64_t channel_id);
void discord_social_call_remove_participant_changed_callback(std::uint64_t channel_id);
void discord_social_call_remove_speaking_status_changed_callback(std::uint64_t channel_id);
void discord_social_call_remove_status_changed_callback(std::uint64_t channel_id);
