// ##### extgen :: Auto-generated file do not edit!! #####

// #####################################################################
// # Macros
// #####################################################################

// #####################################################################
// # Enums
// #####################################################################

enum DiscordCallError
{
    None = 0,
    SignalingConnectionFailed = 1,
    SignalingUnexpectedClose = 2,
    VoiceConnectionFailed = 3,
    JoinTimeout = 4,
    Forbidden = 5
}

enum DiscordCallStatus
{
    Disconnected = 0,
    Joining = 1,
    Connecting = 2,
    SignalingConnected = 3,
    Connected = 4,
    Reconnecting = 5,
    Disconnecting = 6
}

enum DiscordAvatarType
{
    Gif = 0,
    Webp = 1,
    Png = 2,
    Jpeg = 3
}

enum DiscordAdditionalContentType
{
    Other = 0,
    Attachment = 1,
    Poll = 2,
    VoiceMessage = 3,
    Thread = 4,
    Embed = 5,
    Sticker = 6
}

enum DiscordErrorType
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
}

enum DiscordChannelType
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
}

enum DiscordStatusDisplayTypes
{
    Name = 0,
    State = 1,
    Details = 2
}

enum DiscordActivityGamePlatforms
{
    Desktop = 1,
    Xbox = 2,
    Samsung = 4,
    IOS = 8,
    Android = 16,
    Embedded = 32,
    PS4 = 64,
    PS5 = 128
}

enum DiscordAuthenticationExternalAuthType
{
    OIDC = 0,
    EpicOnlineServicesAccessToken = 1,
    EpicOnlineServicesIdToken = 2,
    SteamSessionTicket = 3
}

enum DiscordStatusType
{
    Online = 0,
    Offline = 1,
    Blocked = 2,
    Idle = 3,
    Dnd = 4,
    Invisible = 5,
    Streaming = 6,
    Unknown = 7
}

enum DiscordActivityTypes
{
    Playing = 0,
    Streaming = 1,
    Listening = 2,
    Watching = 3,
    CustomStatus = 4,
    Competing = 5,
    HangStatus = 6
}

enum DiscordRelationshipType
{
    None = 0,
    Friend = 1,
    Blocked = 2,
    PendingIncoming = 3,
    PendingOutgoing = 4,
    Implicit = 5,
    Suggestion = 6
}

enum DiscordRelationshipGroupType
{
    OnlinePlayingGame = 0,
    OnlineElsewhere = 1,
    Offline = 2
}

enum DiscordDisclosureTypes
{
    MessageDataVisibleOnDiscord = 3
}

enum DiscordActivityPartyPrivacy
{
    Private = 0,
    Public = 1
}

enum DiscordClientThread
{
    Client = 0,
    Voice = 1,
    Network = 2
}

enum DiscordClientStatus
{
    Disconnected = 0,
    Connecting = 1,
    Connected = 2,
    Ready = 3,
    Reconnecting = 4,
    Disconnecting = 5,
    HttpWait = 6
}

enum ActivityActionTypes
{
    Invalid = 0,
    Join = 1,
    JoinRequest = 5
}

enum DiscordLoggingSeverity
{
    Verbose = 0,
    Info = 1,
    Warning = 2,
    Error = 3,
    None = 4
}

enum DiscordClientError
{
    None = 0,
    ConnectionFailed = 1,
    UnexpectedClose = 2,
    ConnectionCanceled = 3
}

enum DiscordAuthorizationTokenType
{
    User = 0,
    Bearer = 1
}

enum DiscordAudioModeType
{
    ModeUninit = 0,
    ModeVAD = 1,
    ModePTT = 2
}

enum DiscordAudioSystem
{
    Standard = 0,
    Game = 1
}

// #####################################################################
// # Constructors
// #####################################################################

/**
 * @returns {Struct.DiscordActivityInvite} 
 */
function DiscordActivityInvite() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 177687119;

    self.type = undefined;
    self.sender_id = undefined;
    self.application_id = undefined;
    self.parent_application_id = undefined;
    self.channel_id = undefined;
    self.message_id = undefined;
    self.is_valid = undefined;
    self.party_id = undefined;
    self.session_id = undefined;

}

/**
 * @returns {Struct.DiscordAudioDevice} 
 */
function DiscordAudioDevice() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 3858747201;

    self.id = undefined;
    self.name = undefined;
    self.is_default = undefined;

}

/**
 * @returns {Struct.DiscordRelationshipSnapshot} 
 */
function DiscordRelationshipSnapshot() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 4070977821;

    self.id = undefined;
    self.discord_relationship_type = undefined;
    self.game_relationship_type = undefined;
    self.is_spam_request = undefined;

}

/**
 * @returns {Struct.DiscordGuildMinimal} 
 */
function DiscordGuildMinimal() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 3541463613;

    self.id = undefined;
    self.name = undefined;

}

/**
 * @returns {Struct.DiscordLinkedLobby} 
 */
function DiscordLinkedLobby() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 2845990322;

    self.application_id = undefined;
    self.lobby_id = undefined;

}

/**
 * @returns {Struct.DiscordClientResult} 
 */
function DiscordClientResult() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 3500852089;

    self.error = undefined;
    self.error_code = undefined;
    self.successful = undefined;
    self.retryable = undefined;
    self.response_body = undefined;
    self.status = undefined;
    self.type = undefined;
    self.retry_after = undefined;

}

/**
 * @returns {Struct.DiscordChannelHandle} 
 */
function DiscordChannelHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1253744792;

    self.channel_id = undefined;
    self.name = undefined;
    self.type = undefined;
    self.recipients = undefined;

}

/**
 * @returns {Struct.DiscordAdditionalContent} 
 */
function DiscordAdditionalContent() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 3042072655;

    self.type = undefined;
    self.title = undefined;
    self.count = undefined;

}

/**
 * @returns {Struct.DiscordLinkedChannel} 
 */
function DiscordLinkedChannel() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 4231637701;

    self.id = undefined;
    self.guild_id = undefined;
    self.name = undefined;

}

/**
 * @returns {Struct.DiscordVoiceStateHandle} 
 */
function DiscordVoiceStateHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 586858698;

    self.self_deaf = undefined;
    self.self_mute = undefined;

}

/**
 * @returns {Struct.DiscordActivityParty} 
 */
function DiscordActivityParty() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 3139070394;

    self.activity_party_id = "";
    self.current_size = undefined;
    self.max_size = undefined;
    self.privacy = DiscordActivityPartyPrivacy.Private;

}

/**
 * @returns {Struct.DiscordActivitySecrets} 
 */
function DiscordActivitySecrets() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 2690611567;

    self.join = undefined;

}

/**
 * @returns {Struct.DiscordActivityAssets} 
 */
function DiscordActivityAssets() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1265004731;

    self.large_image = undefined;
    self.large_text = undefined;
    self.large_url = undefined;
    self.small_image = undefined;
    self.small_text = undefined;
    self.small_url = undefined;
    self.invite_cover_image = undefined;

}

/**
 * @returns {Struct.DiscordActivityButton} 
 */
function DiscordActivityButton() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1869130158;

    self.label = undefined;
    self.url = undefined;

}

/**
 * @returns {Struct.DiscordActivityTimestamps} 
 */
function DiscordActivityTimestamps() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 2943193567;

    self.start = undefined;
    self.end = undefined;

}

/**
 * @returns {Struct.DiscordUserApplicationProfileHandle} 
 */
function DiscordUserApplicationProfileHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1721643633;

    self.avatar_hash = undefined;
    self.metadata = undefined;
    self.provider_id = undefined;
    self.provider_issued_user_id = undefined;
    self.provider_type = undefined;
    self.username = undefined;

}

/**
 * @returns {Struct.DiscordUserMessageSummary} 
 */
function DiscordUserMessageSummary() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 938138933;

    self.user_id = undefined;
    self.last_message_id = undefined;

}

/**
 * @returns {Struct.DiscordVADThresholdSettings} 
 */
function DiscordVADThresholdSettings() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 4188003828;

    self.automatic = undefined;
    self.vad_threshold = undefined;

}

/**
 * @returns {Struct.DiscordAuthorizationArgs} 
 */
function DiscordAuthorizationArgs() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1344950869;

    self.client_id = undefined;
    self.scopes = undefined;
    self.state = undefined;
    self.nonce = undefined;
    self.use_code_challenge = undefined;

}

/**
 * @returns {Struct.DiscordClientCreateOptions} 
 */
function DiscordClientCreateOptions() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1415721306;

    self.api_base = "";
    self.web_base = "";
    self.experimental_audio_system = DiscordAudioSystem.Standard;
    self.experimental_android_prevent_comms_for_bluetooth = false;
    self.cpu_affinity_mask = undefined;

}

/**
 * @returns {Struct.DiscordGuildChannel} 
 */
function DiscordGuildChannel() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 3267911093;

    self.id = undefined;
    self.is_linkable = undefined;
    self.is_fully_public = undefined;
    self.is_viewable_and_writeable_by_all_members = undefined;
    self.linked_lobby = undefined;
    self.name = undefined;
    self.parent_id = undefined;
    self.position = undefined;
    self.type = undefined;

}

/**
 * @returns {Struct.DiscordCallVoiceStateEntry} 
 */
function DiscordCallVoiceStateEntry() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1084323544;

    self.user_id = undefined;
    self.voice_state_handle = undefined;

}

/**
 * @returns {Struct.DiscordActivity} 
 */
function DiscordActivity() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 2561031278;

    self.type = DiscordActivityTypes.Playing;
    self.details = undefined;
    self.state = undefined;
    self.name = "";
    self.status_display_type = undefined;
    self.state_url = undefined;
    self.details_url = undefined;
    self.application_id = undefined;
    self.parent_application_id = undefined;
    self.assets = undefined;
    self.timestamps = undefined;
    self.supported_platforms = undefined;
    self.party = undefined;
    self.secrets = undefined;
    self.buttons = [];

}

/**
 * @returns {Struct.DiscordCall} 
 */
function DiscordCall() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 2903076895;

    self.audio_mode = undefined;
    self.channel_id = undefined;
    self.guild_id = undefined;
    self.participants = undefined;
    self.ptt_active = undefined;
    self.ptt_release_delay = undefined;
    self.self_deaf = undefined;
    self.self_mute = undefined;
    self.vad_threshold = undefined;
    self.status = undefined;

}

/**
 * @returns {Struct.DiscordCallInfoHandle} 
 */
function DiscordCallInfoHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 70622077;

    self.channel_id = undefined;
    self.guild_id = undefined;
    self.participants = undefined;
    self.voice_state_handles = undefined;

}

/**
 * @returns {Struct.DiscordUserHandle} 
 */
function DiscordUserHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1178519282;

    self.id = undefined;
    self.username = undefined;
    self.display_name = undefined;
    self.avatar = undefined;
    self.avatar_type = undefined;
    self.avatar_type_string = undefined;
    self.avatar_url = undefined;
    self.global_name = undefined;
    self.is_provisional = undefined;
    self.status = undefined;
    self.game_activity = undefined;
    self.relationship = undefined;
    self.user_application_profiles = undefined;

}

/**
 * @returns {Struct.DiscordRelationshipHandle} 
 */
function DiscordRelationshipHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 3574849379;

    self.id = undefined;
    self.discord_relationship_type = undefined;
    self.game_relationship_type = undefined;
    self.is_spam_request = undefined;
    self.user = undefined;

}

/**
 * @returns {Struct.DiscordLobbyMemberHandle} 
 */
function DiscordLobbyMemberHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 1984637501;

    self.id = undefined;
    self.can_link_lobby = undefined;
    self.connected = undefined;
    self.user = undefined;
    self.metadata = undefined;

}

/**
 * @returns {Struct.DiscordLobbyHandle} 
 */
function DiscordLobbyHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 2865089355;

    self.id = undefined;
    self.lobby_member_ids = undefined;
    self.lobby_members = undefined;
    self.call_info_handle = undefined;
    self.linked_channel = undefined;
    self.metadata = undefined;

}

/**
 * @returns {Struct.DiscordMessageHandle} 
 */
function DiscordMessageHandle() constructor
{
    /**
     * Internally generated hash for quick validation
     * @ignore 
     */
    static __uid = 657131352;

    self.id = undefined;
    self.author = undefined;
    self.author_id = undefined;
    self.channel = undefined;
    self.channel_id = undefined;
    self.disclosure_type = undefined;
    self.lobby = undefined;
    self.content = undefined;
    self.edited_timestamp = undefined;
    self.metadata = undefined;
    self.additional_content = undefined;
    self.raw_content = undefined;
    self.recipient = undefined;
    self.recipient_id = undefined;
    self.sent_from_game = undefined;
    self.sent_timestamp = undefined;
    self.application_id = undefined;
    self.moderation_metadata = undefined;

}

// #####################################################################
// # Codecs
// #####################################################################

/**
 * @func __DiscordActivityInvite_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordActivityInvite} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordActivityInvite_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: type, type: enum ActivityActionTypes

        if (!is_numeric(self.type)) show_error($"{_where} :: self.type expected number", true);
        buffer_write(_buffer, buffer_u64, self.type);

        // field: sender_id, type: UInt64
        if (!is_numeric(self.sender_id)) show_error($"{_where} :: self.sender_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.sender_id);

        // field: application_id, type: UInt64
        if (!is_numeric(self.application_id)) show_error($"{_where} :: self.application_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.application_id);

        // field: parent_application_id, type: UInt64
        if (!is_numeric(self.parent_application_id)) show_error($"{_where} :: self.parent_application_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.parent_application_id);

        // field: channel_id, type: UInt64
        if (!is_numeric(self.channel_id)) show_error($"{_where} :: self.channel_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.channel_id);

        // field: message_id, type: UInt64
        if (!is_numeric(self.message_id)) show_error($"{_where} :: self.message_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.message_id);

        // field: is_valid, type: Bool
        if (!is_bool(self.is_valid)) show_error($"{_where} :: self.is_valid expected bool", true);
        buffer_write(_buffer, buffer_bool, self.is_valid);

        // field: party_id, type: String
        if (!is_string(self.party_id)) show_error($"{_where} :: self.party_id expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.party_id));
        buffer_write(_buffer, buffer_string, self.party_id);

        // field: session_id, type: String
        if (!is_string(self.session_id)) show_error($"{_where} :: self.session_id expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.session_id));
        buffer_write(_buffer, buffer_string, self.session_id);

    }
}

/**
 * @func __DiscordActivityInvite_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordActivityInvite} 
 * @ignore 
 */
function __DiscordActivityInvite_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordActivityInvite();
    with (_inst)
    {
        // field: type, type: enum ActivityActionTypes
        self.type = buffer_read(_buffer, buffer_u64);

        // field: sender_id, type: UInt64
        self.sender_id = buffer_read(_buffer, buffer_u64);

        // field: application_id, type: UInt64
        self.application_id = buffer_read(_buffer, buffer_u64);

        // field: parent_application_id, type: UInt64
        self.parent_application_id = buffer_read(_buffer, buffer_u64);

        // field: channel_id, type: UInt64
        self.channel_id = buffer_read(_buffer, buffer_u64);

        // field: message_id, type: UInt64
        self.message_id = buffer_read(_buffer, buffer_u64);

        // field: is_valid, type: Bool
        self.is_valid = buffer_read(_buffer, buffer_bool);

        // field: party_id, type: String
        buffer_read(_buffer, buffer_u32);
        self.party_id = buffer_read(_buffer, buffer_string);

        // field: session_id, type: String
        buffer_read(_buffer, buffer_u32);
        self.session_id = buffer_read(_buffer, buffer_string);

    }

    return _inst;
}

/**
 * @func __DiscordAudioDevice_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordAudioDevice} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordAudioDevice_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: String
        if (!is_string(self.id)) show_error($"{_where} :: self.id expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.id));
        buffer_write(_buffer, buffer_string, self.id);

        // field: name, type: String
        if (!is_string(self.name)) show_error($"{_where} :: self.name expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.name));
        buffer_write(_buffer, buffer_string, self.name);

        // field: is_default, type: Bool
        if (!is_bool(self.is_default)) show_error($"{_where} :: self.is_default expected bool", true);
        buffer_write(_buffer, buffer_bool, self.is_default);

    }
}

/**
 * @func __DiscordAudioDevice_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordAudioDevice} 
 * @ignore 
 */
function __DiscordAudioDevice_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordAudioDevice();
    with (_inst)
    {
        // field: id, type: String
        buffer_read(_buffer, buffer_u32);
        self.id = buffer_read(_buffer, buffer_string);

        // field: name, type: String
        buffer_read(_buffer, buffer_u32);
        self.name = buffer_read(_buffer, buffer_string);

        // field: is_default, type: Bool
        self.is_default = buffer_read(_buffer, buffer_bool);

    }

    return _inst;
}

/**
 * @func __DiscordRelationshipSnapshot_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordRelationshipSnapshot} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordRelationshipSnapshot_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: discord_relationship_type, type: enum DiscordRelationshipType

        if (!is_numeric(self.discord_relationship_type)) show_error($"{_where} :: self.discord_relationship_type expected number", true);
        buffer_write(_buffer, buffer_u64, self.discord_relationship_type);

        // field: game_relationship_type, type: enum DiscordRelationshipType

        if (!is_numeric(self.game_relationship_type)) show_error($"{_where} :: self.game_relationship_type expected number", true);
        buffer_write(_buffer, buffer_u64, self.game_relationship_type);

        // field: is_spam_request, type: Bool
        if (!is_bool(self.is_spam_request)) show_error($"{_where} :: self.is_spam_request expected bool", true);
        buffer_write(_buffer, buffer_bool, self.is_spam_request);

    }
}

/**
 * @func __DiscordRelationshipSnapshot_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordRelationshipSnapshot} 
 * @ignore 
 */
function __DiscordRelationshipSnapshot_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordRelationshipSnapshot();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: discord_relationship_type, type: enum DiscordRelationshipType
        self.discord_relationship_type = buffer_read(_buffer, buffer_u64);

        // field: game_relationship_type, type: enum DiscordRelationshipType
        self.game_relationship_type = buffer_read(_buffer, buffer_u64);

        // field: is_spam_request, type: Bool
        self.is_spam_request = buffer_read(_buffer, buffer_bool);

    }

    return _inst;
}

/**
 * @func __DiscordGuildMinimal_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordGuildMinimal} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordGuildMinimal_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: name, type: String
        if (!is_string(self.name)) show_error($"{_where} :: self.name expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.name));
        buffer_write(_buffer, buffer_string, self.name);

    }
}

/**
 * @func __DiscordGuildMinimal_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordGuildMinimal} 
 * @ignore 
 */
function __DiscordGuildMinimal_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordGuildMinimal();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: name, type: String
        buffer_read(_buffer, buffer_u32);
        self.name = buffer_read(_buffer, buffer_string);

    }

    return _inst;
}

/**
 * @func __DiscordLinkedLobby_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordLinkedLobby} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordLinkedLobby_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: application_id, type: UInt64
        if (!is_numeric(self.application_id)) show_error($"{_where} :: self.application_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.application_id);

        // field: lobby_id, type: UInt64
        if (!is_numeric(self.lobby_id)) show_error($"{_where} :: self.lobby_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.lobby_id);

    }
}

/**
 * @func __DiscordLinkedLobby_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordLinkedLobby} 
 * @ignore 
 */
function __DiscordLinkedLobby_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordLinkedLobby();
    with (_inst)
    {
        // field: application_id, type: UInt64
        self.application_id = buffer_read(_buffer, buffer_u64);

        // field: lobby_id, type: UInt64
        self.lobby_id = buffer_read(_buffer, buffer_u64);

    }

    return _inst;
}

/**
 * @func __DiscordClientResult_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordClientResult} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordClientResult_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: error, type: String
        if (!is_string(self.error)) show_error($"{_where} :: self.error expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.error));
        buffer_write(_buffer, buffer_string, self.error);

        // field: error_code, type: Int32
        if (!is_numeric(self.error_code)) show_error($"{_where} :: self.error_code expected number", true);
        buffer_write(_buffer, buffer_s32, self.error_code);

        // field: successful, type: Bool
        if (!is_bool(self.successful)) show_error($"{_where} :: self.successful expected bool", true);
        buffer_write(_buffer, buffer_bool, self.successful);

        // field: retryable, type: Bool
        if (!is_bool(self.retryable)) show_error($"{_where} :: self.retryable expected bool", true);
        buffer_write(_buffer, buffer_bool, self.retryable);

        // field: response_body, type: String
        if (!is_string(self.response_body)) show_error($"{_where} :: self.response_body expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.response_body));
        buffer_write(_buffer, buffer_string, self.response_body);

        // field: status, type: Int32
        if (!is_numeric(self.status)) show_error($"{_where} :: self.status expected number", true);
        buffer_write(_buffer, buffer_s32, self.status);

        // field: type, type: enum DiscordErrorType

        if (!is_numeric(self.type)) show_error($"{_where} :: self.type expected number", true);
        buffer_write(_buffer, buffer_u64, self.type);

        // field: retry_after, type: Float32
        if (!is_numeric(self.retry_after)) show_error($"{_where} :: self.retry_after expected number", true);
        buffer_write(_buffer, buffer_f32, self.retry_after);

    }
}

/**
 * @func __DiscordClientResult_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordClientResult} 
 * @ignore 
 */
function __DiscordClientResult_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordClientResult();
    with (_inst)
    {
        // field: error, type: String
        buffer_read(_buffer, buffer_u32);
        self.error = buffer_read(_buffer, buffer_string);

        // field: error_code, type: Int32
        self.error_code = buffer_read(_buffer, buffer_s32);

        // field: successful, type: Bool
        self.successful = buffer_read(_buffer, buffer_bool);

        // field: retryable, type: Bool
        self.retryable = buffer_read(_buffer, buffer_bool);

        // field: response_body, type: String
        buffer_read(_buffer, buffer_u32);
        self.response_body = buffer_read(_buffer, buffer_string);

        // field: status, type: Int32
        self.status = buffer_read(_buffer, buffer_s32);

        // field: type, type: enum DiscordErrorType
        self.type = buffer_read(_buffer, buffer_u64);

        // field: retry_after, type: Float32
        self.retry_after = buffer_read(_buffer, buffer_f32);

    }

    return _inst;
}

/**
 * @func __DiscordChannelHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordChannelHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordChannelHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: channel_id, type: UInt64
        if (!is_numeric(self.channel_id)) show_error($"{_where} :: self.channel_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.channel_id);

        // field: name, type: String
        if (!is_string(self.name)) show_error($"{_where} :: self.name expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.name));
        buffer_write(_buffer, buffer_string, self.name);

        // field: type, type: Float64
        if (!is_numeric(self.type)) show_error($"{_where} :: self.type expected number", true);
        buffer_write(_buffer, buffer_f64, self.type);

        // field: recipients, type: UInt64[]
        if (!is_array(self.recipients)) show_error($"{_where} :: self.recipients expected array", true);
        var _length = array_length(self.recipients);
        buffer_write(_buffer, buffer_u32, _length);
        for (var _i = 0; _i < _length; ++_i)
        {
            if (!is_numeric(self.recipients[_i])) show_error($"{_where} :: self.recipients[_i] expected number", true);
            buffer_write(_buffer, buffer_u64, self.recipients[_i]);
        }

    }
}

/**
 * @func __DiscordChannelHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordChannelHandle} 
 * @ignore 
 */
function __DiscordChannelHandle_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordChannelHandle();
    with (_inst)
    {
        // field: channel_id, type: UInt64
        self.channel_id = buffer_read(_buffer, buffer_u64);

        // field: name, type: String
        buffer_read(_buffer, buffer_u32);
        self.name = buffer_read(_buffer, buffer_string);

        // field: type, type: Float64
        self.type = buffer_read(_buffer, buffer_f64);

        // field: recipients, type: UInt64[]
        var _length = buffer_read(_buffer, buffer_u32);
        self.recipients = array_create(_length);
        for (var _i = 0; _i < _length; ++_i)
        {
            self.recipients[_i] = buffer_read(_buffer, buffer_u64);
        }

    }

    return _inst;
}

/**
 * @func __DiscordAdditionalContent_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordAdditionalContent} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordAdditionalContent_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: type, type: enum DiscordAdditionalContentType

        if (!is_numeric(self.type)) show_error($"{_where} :: self.type expected number", true);
        buffer_write(_buffer, buffer_u64, self.type);

        // field: title, type: String
        if (!is_string(self.title)) show_error($"{_where} :: self.title expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.title));
        buffer_write(_buffer, buffer_string, self.title);

        // field: count, type: Float64
        if (!is_numeric(self.count)) show_error($"{_where} :: self.count expected number", true);
        buffer_write(_buffer, buffer_f64, self.count);

    }
}

/**
 * @func __DiscordAdditionalContent_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordAdditionalContent} 
 * @ignore 
 */
function __DiscordAdditionalContent_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordAdditionalContent();
    with (_inst)
    {
        // field: type, type: enum DiscordAdditionalContentType
        self.type = buffer_read(_buffer, buffer_u64);

        // field: title, type: String
        buffer_read(_buffer, buffer_u32);
        self.title = buffer_read(_buffer, buffer_string);

        // field: count, type: Float64
        self.count = buffer_read(_buffer, buffer_f64);

    }

    return _inst;
}

/**
 * @func __DiscordLinkedChannel_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordLinkedChannel} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordLinkedChannel_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: guild_id, type: UInt64
        if (!is_numeric(self.guild_id)) show_error($"{_where} :: self.guild_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.guild_id);

        // field: name, type: String
        if (!is_string(self.name)) show_error($"{_where} :: self.name expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.name));
        buffer_write(_buffer, buffer_string, self.name);

    }
}

/**
 * @func __DiscordLinkedChannel_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordLinkedChannel} 
 * @ignore 
 */
function __DiscordLinkedChannel_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordLinkedChannel();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: guild_id, type: UInt64
        self.guild_id = buffer_read(_buffer, buffer_u64);

        // field: name, type: String
        buffer_read(_buffer, buffer_u32);
        self.name = buffer_read(_buffer, buffer_string);

    }

    return _inst;
}

/**
 * @func __DiscordVoiceStateHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordVoiceStateHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordVoiceStateHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: self_deaf, type: Bool
        if (!is_bool(self.self_deaf)) show_error($"{_where} :: self.self_deaf expected bool", true);
        buffer_write(_buffer, buffer_bool, self.self_deaf);

        // field: self_mute, type: Bool
        if (!is_bool(self.self_mute)) show_error($"{_where} :: self.self_mute expected bool", true);
        buffer_write(_buffer, buffer_bool, self.self_mute);

    }
}

/**
 * @func __DiscordVoiceStateHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordVoiceStateHandle} 
 * @ignore 
 */
function __DiscordVoiceStateHandle_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordVoiceStateHandle();
    with (_inst)
    {
        // field: self_deaf, type: Bool
        self.self_deaf = buffer_read(_buffer, buffer_bool);

        // field: self_mute, type: Bool
        self.self_mute = buffer_read(_buffer, buffer_bool);

    }

    return _inst;
}

/**
 * @func __DiscordActivityParty_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordActivityParty} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordActivityParty_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: activity_party_id, type: String
        if (!is_string(self.activity_party_id)) show_error($"{_where} :: self.activity_party_id expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.activity_party_id));
        buffer_write(_buffer, buffer_string, self.activity_party_id);

        // field: current_size, type: optional<Int32>
        if (is_undefined(self.current_size))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.current_size)) show_error($"{_where} :: self.current_size expected number", true);
            buffer_write(_buffer, buffer_s32, self.current_size);
        }

        // field: max_size, type: optional<Int32>
        if (is_undefined(self.max_size))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.max_size)) show_error($"{_where} :: self.max_size expected number", true);
            buffer_write(_buffer, buffer_s32, self.max_size);
        }

        // field: privacy, type: enum DiscordActivityPartyPrivacy

        if (!is_numeric(self.privacy)) show_error($"{_where} :: self.privacy expected number", true);
        buffer_write(_buffer, buffer_u64, self.privacy);

    }
}

/**
 * @func __DiscordActivityParty_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordActivityParty} 
 * @ignore 
 */
function __DiscordActivityParty_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordActivityParty();
    with (_inst)
    {
        // field: activity_party_id, type: String
        buffer_read(_buffer, buffer_u32);
        self.activity_party_id = buffer_read(_buffer, buffer_string);

        // field: current_size, type: optional<Int32>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.current_size = buffer_read(_buffer, buffer_s32);
        }
        else
        {
            self.current_size = undefined;
        }

        // field: max_size, type: optional<Int32>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.max_size = buffer_read(_buffer, buffer_s32);
        }
        else
        {
            self.max_size = undefined;
        }

        // field: privacy, type: enum DiscordActivityPartyPrivacy
        self.privacy = buffer_read(_buffer, buffer_u64);

    }

    return _inst;
}

/**
 * @func __DiscordActivitySecrets_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordActivitySecrets} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordActivitySecrets_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: join, type: String
        if (!is_string(self.join)) show_error($"{_where} :: self.join expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.join));
        buffer_write(_buffer, buffer_string, self.join);

    }
}

/**
 * @func __DiscordActivitySecrets_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordActivitySecrets} 
 * @ignore 
 */
function __DiscordActivitySecrets_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordActivitySecrets();
    with (_inst)
    {
        // field: join, type: String
        buffer_read(_buffer, buffer_u32);
        self.join = buffer_read(_buffer, buffer_string);

    }

    return _inst;
}

/**
 * @func __DiscordActivityAssets_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordActivityAssets} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordActivityAssets_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: large_image, type: optional<String>
        if (is_undefined(self.large_image))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.large_image)) show_error($"{_where} :: self.large_image expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.large_image));
            buffer_write(_buffer, buffer_string, self.large_image);
        }

        // field: large_text, type: optional<String>
        if (is_undefined(self.large_text))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.large_text)) show_error($"{_where} :: self.large_text expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.large_text));
            buffer_write(_buffer, buffer_string, self.large_text);
        }

        // field: large_url, type: optional<String>
        if (is_undefined(self.large_url))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.large_url)) show_error($"{_where} :: self.large_url expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.large_url));
            buffer_write(_buffer, buffer_string, self.large_url);
        }

        // field: small_image, type: optional<String>
        if (is_undefined(self.small_image))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.small_image)) show_error($"{_where} :: self.small_image expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.small_image));
            buffer_write(_buffer, buffer_string, self.small_image);
        }

        // field: small_text, type: optional<String>
        if (is_undefined(self.small_text))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.small_text)) show_error($"{_where} :: self.small_text expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.small_text));
            buffer_write(_buffer, buffer_string, self.small_text);
        }

        // field: small_url, type: optional<String>
        if (is_undefined(self.small_url))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.small_url)) show_error($"{_where} :: self.small_url expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.small_url));
            buffer_write(_buffer, buffer_string, self.small_url);
        }

        // field: invite_cover_image, type: optional<String>
        if (is_undefined(self.invite_cover_image))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.invite_cover_image)) show_error($"{_where} :: self.invite_cover_image expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.invite_cover_image));
            buffer_write(_buffer, buffer_string, self.invite_cover_image);
        }

    }
}

/**
 * @func __DiscordActivityAssets_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordActivityAssets} 
 * @ignore 
 */
function __DiscordActivityAssets_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordActivityAssets();
    with (_inst)
    {
        // field: large_image, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.large_image = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.large_image = undefined;
        }

        // field: large_text, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.large_text = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.large_text = undefined;
        }

        // field: large_url, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.large_url = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.large_url = undefined;
        }

        // field: small_image, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.small_image = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.small_image = undefined;
        }

        // field: small_text, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.small_text = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.small_text = undefined;
        }

        // field: small_url, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.small_url = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.small_url = undefined;
        }

        // field: invite_cover_image, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.invite_cover_image = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.invite_cover_image = undefined;
        }

    }

    return _inst;
}

/**
 * @func __DiscordActivityButton_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordActivityButton} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordActivityButton_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: label, type: String
        if (!is_string(self.label)) show_error($"{_where} :: self.label expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.label));
        buffer_write(_buffer, buffer_string, self.label);

        // field: url, type: String
        if (!is_string(self.url)) show_error($"{_where} :: self.url expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.url));
        buffer_write(_buffer, buffer_string, self.url);

    }
}

/**
 * @func __DiscordActivityButton_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordActivityButton} 
 * @ignore 
 */
function __DiscordActivityButton_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordActivityButton();
    with (_inst)
    {
        // field: label, type: String
        buffer_read(_buffer, buffer_u32);
        self.label = buffer_read(_buffer, buffer_string);

        // field: url, type: String
        buffer_read(_buffer, buffer_u32);
        self.url = buffer_read(_buffer, buffer_string);

    }

    return _inst;
}

/**
 * @func __DiscordActivityTimestamps_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordActivityTimestamps} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordActivityTimestamps_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: start, type: optional<UInt64>
        if (is_undefined(self.start))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.start)) show_error($"{_where} :: self.start expected number", true);
            buffer_write(_buffer, buffer_u64, self.start);
        }

        // field: end, type: optional<UInt64>
        if (is_undefined(self.end))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.end)) show_error($"{_where} :: self.end expected number", true);
            buffer_write(_buffer, buffer_u64, self.end);
        }

    }
}

/**
 * @func __DiscordActivityTimestamps_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordActivityTimestamps} 
 * @ignore 
 */
function __DiscordActivityTimestamps_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordActivityTimestamps();
    with (_inst)
    {
        // field: start, type: optional<UInt64>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.start = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.start = undefined;
        }

        // field: end, type: optional<UInt64>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.end = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.end = undefined;
        }

    }

    return _inst;
}

/**
 * @func __DiscordUserApplicationProfileHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordUserApplicationProfileHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordUserApplicationProfileHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: avatar_hash, type: String
        if (!is_string(self.avatar_hash)) show_error($"{_where} :: self.avatar_hash expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.avatar_hash));
        buffer_write(_buffer, buffer_string, self.avatar_hash);

        // field: metadata, type: String
        if (!is_string(self.metadata)) show_error($"{_where} :: self.metadata expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.metadata));
        buffer_write(_buffer, buffer_string, self.metadata);

        // field: provider_id, type: optional<String>
        if (is_undefined(self.provider_id))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.provider_id)) show_error($"{_where} :: self.provider_id expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.provider_id));
            buffer_write(_buffer, buffer_string, self.provider_id);
        }

        // field: provider_issued_user_id, type: String
        if (!is_string(self.provider_issued_user_id)) show_error($"{_where} :: self.provider_issued_user_id expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.provider_issued_user_id));
        buffer_write(_buffer, buffer_string, self.provider_issued_user_id);

        // field: provider_type, type: Float64
        if (!is_numeric(self.provider_type)) show_error($"{_where} :: self.provider_type expected number", true);
        buffer_write(_buffer, buffer_f64, self.provider_type);

        // field: username, type: String
        if (!is_string(self.username)) show_error($"{_where} :: self.username expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.username));
        buffer_write(_buffer, buffer_string, self.username);

    }
}

/**
 * @func __DiscordUserApplicationProfileHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordUserApplicationProfileHandle} 
 * @ignore 
 */
function __DiscordUserApplicationProfileHandle_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordUserApplicationProfileHandle();
    with (_inst)
    {
        // field: avatar_hash, type: String
        buffer_read(_buffer, buffer_u32);
        self.avatar_hash = buffer_read(_buffer, buffer_string);

        // field: metadata, type: String
        buffer_read(_buffer, buffer_u32);
        self.metadata = buffer_read(_buffer, buffer_string);

        // field: provider_id, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.provider_id = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.provider_id = undefined;
        }

        // field: provider_issued_user_id, type: String
        buffer_read(_buffer, buffer_u32);
        self.provider_issued_user_id = buffer_read(_buffer, buffer_string);

        // field: provider_type, type: Float64
        self.provider_type = buffer_read(_buffer, buffer_f64);

        // field: username, type: String
        buffer_read(_buffer, buffer_u32);
        self.username = buffer_read(_buffer, buffer_string);

    }

    return _inst;
}

/**
 * @func __DiscordUserMessageSummary_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordUserMessageSummary} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordUserMessageSummary_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: user_id, type: UInt64
        if (!is_numeric(self.user_id)) show_error($"{_where} :: self.user_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.user_id);

        // field: last_message_id, type: UInt64
        if (!is_numeric(self.last_message_id)) show_error($"{_where} :: self.last_message_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.last_message_id);

    }
}

/**
 * @func __DiscordUserMessageSummary_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordUserMessageSummary} 
 * @ignore 
 */
function __DiscordUserMessageSummary_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordUserMessageSummary();
    with (_inst)
    {
        // field: user_id, type: UInt64
        self.user_id = buffer_read(_buffer, buffer_u64);

        // field: last_message_id, type: UInt64
        self.last_message_id = buffer_read(_buffer, buffer_u64);

    }

    return _inst;
}

/**
 * @func __DiscordVADThresholdSettings_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordVADThresholdSettings} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordVADThresholdSettings_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: automatic, type: Bool
        if (!is_bool(self.automatic)) show_error($"{_where} :: self.automatic expected bool", true);
        buffer_write(_buffer, buffer_bool, self.automatic);

        // field: vad_threshold, type: Float32
        if (!is_numeric(self.vad_threshold)) show_error($"{_where} :: self.vad_threshold expected number", true);
        buffer_write(_buffer, buffer_f32, self.vad_threshold);

    }
}

/**
 * @func __DiscordVADThresholdSettings_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordVADThresholdSettings} 
 * @ignore 
 */
function __DiscordVADThresholdSettings_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordVADThresholdSettings();
    with (_inst)
    {
        // field: automatic, type: Bool
        self.automatic = buffer_read(_buffer, buffer_bool);

        // field: vad_threshold, type: Float32
        self.vad_threshold = buffer_read(_buffer, buffer_f32);

    }

    return _inst;
}

/**
 * @func __DiscordAuthorizationArgs_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordAuthorizationArgs} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordAuthorizationArgs_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: client_id, type: optional<UInt64>
        if (is_undefined(self.client_id))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.client_id)) show_error($"{_where} :: self.client_id expected number", true);
            buffer_write(_buffer, buffer_u64, self.client_id);
        }

        // field: scopes, type: optional<String>
        if (is_undefined(self.scopes))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.scopes)) show_error($"{_where} :: self.scopes expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.scopes));
            buffer_write(_buffer, buffer_string, self.scopes);
        }

        // field: state, type: optional<String>
        if (is_undefined(self.state))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.state)) show_error($"{_where} :: self.state expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.state));
            buffer_write(_buffer, buffer_string, self.state);
        }

        // field: nonce, type: optional<String>
        if (is_undefined(self.nonce))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.nonce)) show_error($"{_where} :: self.nonce expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.nonce));
            buffer_write(_buffer, buffer_string, self.nonce);
        }

        // field: use_code_challenge, type: optional<Bool>
        if (is_undefined(self.use_code_challenge))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_bool(self.use_code_challenge)) show_error($"{_where} :: self.use_code_challenge expected bool", true);
            buffer_write(_buffer, buffer_bool, self.use_code_challenge);
        }

    }
}

/**
 * @func __DiscordAuthorizationArgs_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordAuthorizationArgs} 
 * @ignore 
 */
function __DiscordAuthorizationArgs_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordAuthorizationArgs();
    with (_inst)
    {
        // field: client_id, type: optional<UInt64>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.client_id = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.client_id = undefined;
        }

        // field: scopes, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.scopes = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.scopes = undefined;
        }

        // field: state, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.state = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.state = undefined;
        }

        // field: nonce, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.nonce = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.nonce = undefined;
        }

        // field: use_code_challenge, type: optional<Bool>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.use_code_challenge = buffer_read(_buffer, buffer_bool);
        }
        else
        {
            self.use_code_challenge = undefined;
        }

    }

    return _inst;
}

/**
 * @func __DiscordClientCreateOptions_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordClientCreateOptions} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordClientCreateOptions_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: api_base, type: String
        if (!is_string(self.api_base)) show_error($"{_where} :: self.api_base expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.api_base));
        buffer_write(_buffer, buffer_string, self.api_base);

        // field: web_base, type: String
        if (!is_string(self.web_base)) show_error($"{_where} :: self.web_base expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.web_base));
        buffer_write(_buffer, buffer_string, self.web_base);

        // field: experimental_audio_system, type: enum DiscordAudioSystem

        if (!is_numeric(self.experimental_audio_system)) show_error($"{_where} :: self.experimental_audio_system expected number", true);
        buffer_write(_buffer, buffer_u64, self.experimental_audio_system);

        // field: experimental_android_prevent_comms_for_bluetooth, type: Bool
        if (!is_bool(self.experimental_android_prevent_comms_for_bluetooth)) show_error($"{_where} :: self.experimental_android_prevent_comms_for_bluetooth expected bool", true);
        buffer_write(_buffer, buffer_bool, self.experimental_android_prevent_comms_for_bluetooth);

        // field: cpu_affinity_mask, type: optional<UInt64>
        if (is_undefined(self.cpu_affinity_mask))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.cpu_affinity_mask)) show_error($"{_where} :: self.cpu_affinity_mask expected number", true);
            buffer_write(_buffer, buffer_u64, self.cpu_affinity_mask);
        }

    }
}

/**
 * @func __DiscordClientCreateOptions_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordClientCreateOptions} 
 * @ignore 
 */
function __DiscordClientCreateOptions_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordClientCreateOptions();
    with (_inst)
    {
        // field: api_base, type: String
        buffer_read(_buffer, buffer_u32);
        self.api_base = buffer_read(_buffer, buffer_string);

        // field: web_base, type: String
        buffer_read(_buffer, buffer_u32);
        self.web_base = buffer_read(_buffer, buffer_string);

        // field: experimental_audio_system, type: enum DiscordAudioSystem
        self.experimental_audio_system = buffer_read(_buffer, buffer_u64);

        // field: experimental_android_prevent_comms_for_bluetooth, type: Bool
        self.experimental_android_prevent_comms_for_bluetooth = buffer_read(_buffer, buffer_bool);

        // field: cpu_affinity_mask, type: optional<UInt64>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.cpu_affinity_mask = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.cpu_affinity_mask = undefined;
        }

    }

    return _inst;
}

/**
 * @func __DiscordGuildChannel_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordGuildChannel} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordGuildChannel_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: is_linkable, type: Bool
        if (!is_bool(self.is_linkable)) show_error($"{_where} :: self.is_linkable expected bool", true);
        buffer_write(_buffer, buffer_bool, self.is_linkable);

        // field: is_fully_public, type: Bool
        if (!is_bool(self.is_fully_public)) show_error($"{_where} :: self.is_fully_public expected bool", true);
        buffer_write(_buffer, buffer_bool, self.is_fully_public);

        // field: is_viewable_and_writeable_by_all_members, type: Bool
        if (!is_bool(self.is_viewable_and_writeable_by_all_members)) show_error($"{_where} :: self.is_viewable_and_writeable_by_all_members expected bool", true);
        buffer_write(_buffer, buffer_bool, self.is_viewable_and_writeable_by_all_members);

        // field: linked_lobby, type: optional<struct DiscordLinkedLobby>
        if (is_undefined(self.linked_lobby))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.linked_lobby.__uid != 2845990322) show_error($"{_where} :: self.linked_lobby expected DiscordLinkedLobby", true);
            __DiscordLinkedLobby_encode(self.linked_lobby, _buffer, buffer_tell(_buffer), _where);
        }

        // field: name, type: String
        if (!is_string(self.name)) show_error($"{_where} :: self.name expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.name));
        buffer_write(_buffer, buffer_string, self.name);

        // field: parent_id, type: optional<UInt64>
        if (is_undefined(self.parent_id))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.parent_id)) show_error($"{_where} :: self.parent_id expected number", true);
            buffer_write(_buffer, buffer_u64, self.parent_id);
        }

        // field: position, type: Int32
        if (!is_numeric(self.position)) show_error($"{_where} :: self.position expected number", true);
        buffer_write(_buffer, buffer_s32, self.position);

        // field: type, type: enum DiscordChannelType

        if (!is_numeric(self.type)) show_error($"{_where} :: self.type expected number", true);
        buffer_write(_buffer, buffer_u64, self.type);

    }
}

/**
 * @func __DiscordGuildChannel_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordGuildChannel} 
 * @ignore 
 */
function __DiscordGuildChannel_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordGuildChannel();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: is_linkable, type: Bool
        self.is_linkable = buffer_read(_buffer, buffer_bool);

        // field: is_fully_public, type: Bool
        self.is_fully_public = buffer_read(_buffer, buffer_bool);

        // field: is_viewable_and_writeable_by_all_members, type: Bool
        self.is_viewable_and_writeable_by_all_members = buffer_read(_buffer, buffer_bool);

        // field: linked_lobby, type: optional<struct DiscordLinkedLobby>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.linked_lobby = __DiscordLinkedLobby_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.linked_lobby = undefined;
        }

        // field: name, type: String
        buffer_read(_buffer, buffer_u32);
        self.name = buffer_read(_buffer, buffer_string);

        // field: parent_id, type: optional<UInt64>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.parent_id = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.parent_id = undefined;
        }

        // field: position, type: Int32
        self.position = buffer_read(_buffer, buffer_s32);

        // field: type, type: enum DiscordChannelType
        self.type = buffer_read(_buffer, buffer_u64);

    }

    return _inst;
}

/**
 * @func __DiscordCallVoiceStateEntry_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordCallVoiceStateEntry} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordCallVoiceStateEntry_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: user_id, type: UInt64
        if (!is_numeric(self.user_id)) show_error($"{_where} :: self.user_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.user_id);

        // field: voice_state_handle, type: struct DiscordVoiceStateHandle
        if (self.voice_state_handle.__uid != 586858698) show_error($"{_where} :: self.voice_state_handle expected DiscordVoiceStateHandle", true);
        __DiscordVoiceStateHandle_encode(self.voice_state_handle, _buffer, buffer_tell(_buffer), _where);

    }
}

/**
 * @func __DiscordCallVoiceStateEntry_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordCallVoiceStateEntry} 
 * @ignore 
 */
function __DiscordCallVoiceStateEntry_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordCallVoiceStateEntry();
    with (_inst)
    {
        // field: user_id, type: UInt64
        self.user_id = buffer_read(_buffer, buffer_u64);

        // field: voice_state_handle, type: struct DiscordVoiceStateHandle
        self.voice_state_handle = __DiscordVoiceStateHandle_decode(_buffer, buffer_tell(_buffer));

    }

    return _inst;
}

/**
 * @func __DiscordActivity_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordActivity} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordActivity_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: type, type: enum DiscordActivityTypes

        if (!is_numeric(self.type)) show_error($"{_where} :: self.type expected number", true);
        buffer_write(_buffer, buffer_u64, self.type);

        // field: details, type: optional<String>
        if (is_undefined(self.details))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.details)) show_error($"{_where} :: self.details expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.details));
            buffer_write(_buffer, buffer_string, self.details);
        }

        // field: state, type: optional<String>
        if (is_undefined(self.state))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.state)) show_error($"{_where} :: self.state expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.state));
            buffer_write(_buffer, buffer_string, self.state);
        }

        // field: name, type: String
        if (!is_string(self.name)) show_error($"{_where} :: self.name expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.name));
        buffer_write(_buffer, buffer_string, self.name);

        // field: status_display_type, type: optional<enum DiscordStatusDisplayTypes>
        if (is_undefined(self.status_display_type))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);

            if (!is_numeric(self.status_display_type)) show_error($"{_where} :: self.status_display_type expected number", true);
            buffer_write(_buffer, buffer_u64, self.status_display_type);
        }

        // field: state_url, type: optional<String>
        if (is_undefined(self.state_url))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.state_url)) show_error($"{_where} :: self.state_url expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.state_url));
            buffer_write(_buffer, buffer_string, self.state_url);
        }

        // field: details_url, type: optional<String>
        if (is_undefined(self.details_url))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.details_url)) show_error($"{_where} :: self.details_url expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.details_url));
            buffer_write(_buffer, buffer_string, self.details_url);
        }

        // field: application_id, type: optional<UInt64>
        if (is_undefined(self.application_id))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.application_id)) show_error($"{_where} :: self.application_id expected number", true);
            buffer_write(_buffer, buffer_u64, self.application_id);
        }

        // field: parent_application_id, type: optional<UInt64>
        if (is_undefined(self.parent_application_id))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.parent_application_id)) show_error($"{_where} :: self.parent_application_id expected number", true);
            buffer_write(_buffer, buffer_u64, self.parent_application_id);
        }

        // field: assets, type: optional<struct DiscordActivityAssets>
        if (is_undefined(self.assets))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.assets.__uid != 1265004731) show_error($"{_where} :: self.assets expected DiscordActivityAssets", true);
            __DiscordActivityAssets_encode(self.assets, _buffer, buffer_tell(_buffer), _where);
        }

        // field: timestamps, type: optional<struct DiscordActivityTimestamps>
        if (is_undefined(self.timestamps))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.timestamps.__uid != 2943193567) show_error($"{_where} :: self.timestamps expected DiscordActivityTimestamps", true);
            __DiscordActivityTimestamps_encode(self.timestamps, _buffer, buffer_tell(_buffer), _where);
        }

        // field: supported_platforms, type: optional<enum DiscordActivityGamePlatforms>
        if (is_undefined(self.supported_platforms))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);

            if (!is_numeric(self.supported_platforms)) show_error($"{_where} :: self.supported_platforms expected number", true);
            buffer_write(_buffer, buffer_u64, self.supported_platforms);
        }

        // field: party, type: optional<struct DiscordActivityParty>
        if (is_undefined(self.party))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.party.__uid != 3139070394) show_error($"{_where} :: self.party expected DiscordActivityParty", true);
            __DiscordActivityParty_encode(self.party, _buffer, buffer_tell(_buffer), _where);
        }

        // field: secrets, type: optional<struct DiscordActivitySecrets>
        if (is_undefined(self.secrets))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.secrets.__uid != 2690611567) show_error($"{_where} :: self.secrets expected DiscordActivitySecrets", true);
            __DiscordActivitySecrets_encode(self.secrets, _buffer, buffer_tell(_buffer), _where);
        }

        // field: buttons, type: struct DiscordActivityButton[]
        if (!is_array(self.buttons)) show_error($"{_where} :: self.buttons expected array", true);
        var _length = array_length(self.buttons);
        buffer_write(_buffer, buffer_u32, _length);
        for (var _i = 0; _i < _length; ++_i)
        {
            if (self.buttons[_i].__uid != 1869130158) show_error($"{_where} :: self.buttons[_i] expected DiscordActivityButton", true);
            __DiscordActivityButton_encode(self.buttons[_i], _buffer, buffer_tell(_buffer), _where);
        }

    }
}

/**
 * @func __DiscordActivity_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordActivity} 
 * @ignore 
 */
function __DiscordActivity_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordActivity();
    with (_inst)
    {
        // field: type, type: enum DiscordActivityTypes
        self.type = buffer_read(_buffer, buffer_u64);

        // field: details, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.details = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.details = undefined;
        }

        // field: state, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.state = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.state = undefined;
        }

        // field: name, type: String
        buffer_read(_buffer, buffer_u32);
        self.name = buffer_read(_buffer, buffer_string);

        // field: status_display_type, type: optional<enum DiscordStatusDisplayTypes>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.status_display_type = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.status_display_type = undefined;
        }

        // field: state_url, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.state_url = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.state_url = undefined;
        }

        // field: details_url, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.details_url = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.details_url = undefined;
        }

        // field: application_id, type: optional<UInt64>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.application_id = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.application_id = undefined;
        }

        // field: parent_application_id, type: optional<UInt64>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.parent_application_id = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.parent_application_id = undefined;
        }

        // field: assets, type: optional<struct DiscordActivityAssets>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.assets = __DiscordActivityAssets_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.assets = undefined;
        }

        // field: timestamps, type: optional<struct DiscordActivityTimestamps>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.timestamps = __DiscordActivityTimestamps_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.timestamps = undefined;
        }

        // field: supported_platforms, type: optional<enum DiscordActivityGamePlatforms>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.supported_platforms = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.supported_platforms = undefined;
        }

        // field: party, type: optional<struct DiscordActivityParty>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.party = __DiscordActivityParty_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.party = undefined;
        }

        // field: secrets, type: optional<struct DiscordActivitySecrets>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.secrets = __DiscordActivitySecrets_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.secrets = undefined;
        }

        // field: buttons, type: struct DiscordActivityButton[]
        var _length = buffer_read(_buffer, buffer_u32);
        self.buttons = array_create(_length);
        for (var _i = 0; _i < _length; ++_i)
        {
            self.buttons[_i] = __DiscordActivityButton_decode(_buffer, buffer_tell(_buffer));
        }

    }

    return _inst;
}

/**
 * @func __DiscordCall_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordCall} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordCall_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: audio_mode, type: enum DiscordAudioModeType

        if (!is_numeric(self.audio_mode)) show_error($"{_where} :: self.audio_mode expected number", true);
        buffer_write(_buffer, buffer_u64, self.audio_mode);

        // field: channel_id, type: UInt64
        if (!is_numeric(self.channel_id)) show_error($"{_where} :: self.channel_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.channel_id);

        // field: guild_id, type: UInt64
        if (!is_numeric(self.guild_id)) show_error($"{_where} :: self.guild_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.guild_id);

        // field: participants, type: UInt64[]
        if (!is_array(self.participants)) show_error($"{_where} :: self.participants expected array", true);
        var _length = array_length(self.participants);
        buffer_write(_buffer, buffer_u32, _length);
        for (var _i = 0; _i < _length; ++_i)
        {
            if (!is_numeric(self.participants[_i])) show_error($"{_where} :: self.participants[_i] expected number", true);
            buffer_write(_buffer, buffer_u64, self.participants[_i]);
        }

        // field: ptt_active, type: Bool
        if (!is_bool(self.ptt_active)) show_error($"{_where} :: self.ptt_active expected bool", true);
        buffer_write(_buffer, buffer_bool, self.ptt_active);

        // field: ptt_release_delay, type: UInt32
        if (!is_numeric(self.ptt_release_delay)) show_error($"{_where} :: self.ptt_release_delay expected number", true);
        buffer_write(_buffer, buffer_u32, self.ptt_release_delay);

        // field: self_deaf, type: Bool
        if (!is_bool(self.self_deaf)) show_error($"{_where} :: self.self_deaf expected bool", true);
        buffer_write(_buffer, buffer_bool, self.self_deaf);

        // field: self_mute, type: Bool
        if (!is_bool(self.self_mute)) show_error($"{_where} :: self.self_mute expected bool", true);
        buffer_write(_buffer, buffer_bool, self.self_mute);

        // field: vad_threshold, type: struct DiscordVADThresholdSettings
        if (self.vad_threshold.__uid != 4188003828) show_error($"{_where} :: self.vad_threshold expected DiscordVADThresholdSettings", true);
        __DiscordVADThresholdSettings_encode(self.vad_threshold, _buffer, buffer_tell(_buffer), _where);

        // field: status, type: enum DiscordCallStatus

        if (!is_numeric(self.status)) show_error($"{_where} :: self.status expected number", true);
        buffer_write(_buffer, buffer_u64, self.status);

    }
}

/**
 * @func __DiscordCall_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordCall} 
 * @ignore 
 */
function __DiscordCall_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordCall();
    with (_inst)
    {
        // field: audio_mode, type: enum DiscordAudioModeType
        self.audio_mode = buffer_read(_buffer, buffer_u64);

        // field: channel_id, type: UInt64
        self.channel_id = buffer_read(_buffer, buffer_u64);

        // field: guild_id, type: UInt64
        self.guild_id = buffer_read(_buffer, buffer_u64);

        // field: participants, type: UInt64[]
        var _length = buffer_read(_buffer, buffer_u32);
        self.participants = array_create(_length);
        for (var _i = 0; _i < _length; ++_i)
        {
            self.participants[_i] = buffer_read(_buffer, buffer_u64);
        }

        // field: ptt_active, type: Bool
        self.ptt_active = buffer_read(_buffer, buffer_bool);

        // field: ptt_release_delay, type: UInt32
        self.ptt_release_delay = buffer_read(_buffer, buffer_u32);

        // field: self_deaf, type: Bool
        self.self_deaf = buffer_read(_buffer, buffer_bool);

        // field: self_mute, type: Bool
        self.self_mute = buffer_read(_buffer, buffer_bool);

        // field: vad_threshold, type: struct DiscordVADThresholdSettings
        self.vad_threshold = __DiscordVADThresholdSettings_decode(_buffer, buffer_tell(_buffer));

        // field: status, type: enum DiscordCallStatus
        self.status = buffer_read(_buffer, buffer_u64);

    }

    return _inst;
}

/**
 * @func __DiscordCallInfoHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordCallInfoHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordCallInfoHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: channel_id, type: UInt64
        if (!is_numeric(self.channel_id)) show_error($"{_where} :: self.channel_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.channel_id);

        // field: guild_id, type: UInt64
        if (!is_numeric(self.guild_id)) show_error($"{_where} :: self.guild_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.guild_id);

        // field: participants, type: UInt64[]
        if (!is_array(self.participants)) show_error($"{_where} :: self.participants expected array", true);
        var _length = array_length(self.participants);
        buffer_write(_buffer, buffer_u32, _length);
        for (var _i = 0; _i < _length; ++_i)
        {
            if (!is_numeric(self.participants[_i])) show_error($"{_where} :: self.participants[_i] expected number", true);
            buffer_write(_buffer, buffer_u64, self.participants[_i]);
        }

        // field: voice_state_handles, type: struct DiscordCallVoiceStateEntry[]
        if (!is_array(self.voice_state_handles)) show_error($"{_where} :: self.voice_state_handles expected array", true);
        var _length = array_length(self.voice_state_handles);
        buffer_write(_buffer, buffer_u32, _length);
        for (var _i = 0; _i < _length; ++_i)
        {
            if (self.voice_state_handles[_i].__uid != 1084323544) show_error($"{_where} :: self.voice_state_handles[_i] expected DiscordCallVoiceStateEntry", true);
            __DiscordCallVoiceStateEntry_encode(self.voice_state_handles[_i], _buffer, buffer_tell(_buffer), _where);
        }

    }
}

/**
 * @func __DiscordCallInfoHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordCallInfoHandle} 
 * @ignore 
 */
function __DiscordCallInfoHandle_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordCallInfoHandle();
    with (_inst)
    {
        // field: channel_id, type: UInt64
        self.channel_id = buffer_read(_buffer, buffer_u64);

        // field: guild_id, type: UInt64
        self.guild_id = buffer_read(_buffer, buffer_u64);

        // field: participants, type: UInt64[]
        var _length = buffer_read(_buffer, buffer_u32);
        self.participants = array_create(_length);
        for (var _i = 0; _i < _length; ++_i)
        {
            self.participants[_i] = buffer_read(_buffer, buffer_u64);
        }

        // field: voice_state_handles, type: struct DiscordCallVoiceStateEntry[]
        var _length = buffer_read(_buffer, buffer_u32);
        self.voice_state_handles = array_create(_length);
        for (var _i = 0; _i < _length; ++_i)
        {
            self.voice_state_handles[_i] = __DiscordCallVoiceStateEntry_decode(_buffer, buffer_tell(_buffer));
        }

    }

    return _inst;
}

/**
 * @func __DiscordUserHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordUserHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordUserHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: username, type: String
        if (!is_string(self.username)) show_error($"{_where} :: self.username expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.username));
        buffer_write(_buffer, buffer_string, self.username);

        // field: display_name, type: String
        if (!is_string(self.display_name)) show_error($"{_where} :: self.display_name expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.display_name));
        buffer_write(_buffer, buffer_string, self.display_name);

        // field: avatar, type: optional<String>
        if (is_undefined(self.avatar))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.avatar)) show_error($"{_where} :: self.avatar expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.avatar));
            buffer_write(_buffer, buffer_string, self.avatar);
        }

        // field: avatar_type, type: enum DiscordAvatarType

        if (!is_numeric(self.avatar_type)) show_error($"{_where} :: self.avatar_type expected number", true);
        buffer_write(_buffer, buffer_u64, self.avatar_type);

        // field: avatar_type_string, type: String
        if (!is_string(self.avatar_type_string)) show_error($"{_where} :: self.avatar_type_string expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.avatar_type_string));
        buffer_write(_buffer, buffer_string, self.avatar_type_string);

        // field: avatar_url, type: String
        if (!is_string(self.avatar_url)) show_error($"{_where} :: self.avatar_url expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.avatar_url));
        buffer_write(_buffer, buffer_string, self.avatar_url);

        // field: global_name, type: optional<String>
        if (is_undefined(self.global_name))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_string(self.global_name)) show_error($"{_where} :: self.global_name expected string", true);
            buffer_write(_buffer, buffer_u32, string_byte_length(self.global_name));
            buffer_write(_buffer, buffer_string, self.global_name);
        }

        // field: is_provisional, type: Bool
        if (!is_bool(self.is_provisional)) show_error($"{_where} :: self.is_provisional expected bool", true);
        buffer_write(_buffer, buffer_bool, self.is_provisional);

        // field: status, type: enum DiscordStatusType

        if (!is_numeric(self.status)) show_error($"{_where} :: self.status expected number", true);
        buffer_write(_buffer, buffer_u64, self.status);

        // field: game_activity, type: optional<struct DiscordActivity>
        if (is_undefined(self.game_activity))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.game_activity.__uid != 2561031278) show_error($"{_where} :: self.game_activity expected DiscordActivity", true);
            __DiscordActivity_encode(self.game_activity, _buffer, buffer_tell(_buffer), _where);
        }

        // field: relationship, type: optional<struct DiscordRelationshipSnapshot>
        if (is_undefined(self.relationship))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.relationship.__uid != 4070977821) show_error($"{_where} :: self.relationship expected DiscordRelationshipSnapshot", true);
            __DiscordRelationshipSnapshot_encode(self.relationship, _buffer, buffer_tell(_buffer), _where);
        }

        // field: user_application_profiles, type: struct DiscordUserApplicationProfileHandle[]
        if (!is_array(self.user_application_profiles)) show_error($"{_where} :: self.user_application_profiles expected array", true);
        var _length = array_length(self.user_application_profiles);
        buffer_write(_buffer, buffer_u32, _length);
        for (var _i = 0; _i < _length; ++_i)
        {
            if (self.user_application_profiles[_i].__uid != 1721643633) show_error($"{_where} :: self.user_application_profiles[_i] expected DiscordUserApplicationProfileHandle", true);
            __DiscordUserApplicationProfileHandle_encode(self.user_application_profiles[_i], _buffer, buffer_tell(_buffer), _where);
        }

    }
}

/**
 * @func __DiscordUserHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordUserHandle} 
 * @ignore 
 */
function __DiscordUserHandle_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordUserHandle();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: username, type: String
        buffer_read(_buffer, buffer_u32);
        self.username = buffer_read(_buffer, buffer_string);

        // field: display_name, type: String
        buffer_read(_buffer, buffer_u32);
        self.display_name = buffer_read(_buffer, buffer_string);

        // field: avatar, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.avatar = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.avatar = undefined;
        }

        // field: avatar_type, type: enum DiscordAvatarType
        self.avatar_type = buffer_read(_buffer, buffer_u64);

        // field: avatar_type_string, type: String
        buffer_read(_buffer, buffer_u32);
        self.avatar_type_string = buffer_read(_buffer, buffer_string);

        // field: avatar_url, type: String
        buffer_read(_buffer, buffer_u32);
        self.avatar_url = buffer_read(_buffer, buffer_string);

        // field: global_name, type: optional<String>
        if (buffer_read(_buffer, buffer_bool))
        {
            buffer_read(_buffer, buffer_u32);
            self.global_name = buffer_read(_buffer, buffer_string);
        }
        else
        {
            self.global_name = undefined;
        }

        // field: is_provisional, type: Bool
        self.is_provisional = buffer_read(_buffer, buffer_bool);

        // field: status, type: enum DiscordStatusType
        self.status = buffer_read(_buffer, buffer_u64);

        // field: game_activity, type: optional<struct DiscordActivity>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.game_activity = __DiscordActivity_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.game_activity = undefined;
        }

        // field: relationship, type: optional<struct DiscordRelationshipSnapshot>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.relationship = __DiscordRelationshipSnapshot_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.relationship = undefined;
        }

        // field: user_application_profiles, type: struct DiscordUserApplicationProfileHandle[]
        var _length = buffer_read(_buffer, buffer_u32);
        self.user_application_profiles = array_create(_length);
        for (var _i = 0; _i < _length; ++_i)
        {
            self.user_application_profiles[_i] = __DiscordUserApplicationProfileHandle_decode(_buffer, buffer_tell(_buffer));
        }

    }

    return _inst;
}

/**
 * @func __DiscordRelationshipHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordRelationshipHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordRelationshipHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: discord_relationship_type, type: enum DiscordRelationshipType

        if (!is_numeric(self.discord_relationship_type)) show_error($"{_where} :: self.discord_relationship_type expected number", true);
        buffer_write(_buffer, buffer_u64, self.discord_relationship_type);

        // field: game_relationship_type, type: enum DiscordRelationshipType

        if (!is_numeric(self.game_relationship_type)) show_error($"{_where} :: self.game_relationship_type expected number", true);
        buffer_write(_buffer, buffer_u64, self.game_relationship_type);

        // field: is_spam_request, type: Bool
        if (!is_bool(self.is_spam_request)) show_error($"{_where} :: self.is_spam_request expected bool", true);
        buffer_write(_buffer, buffer_bool, self.is_spam_request);

        // field: user, type: optional<struct DiscordUserHandle>
        if (is_undefined(self.user))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.user.__uid != 1178519282) show_error($"{_where} :: self.user expected DiscordUserHandle", true);
            __DiscordUserHandle_encode(self.user, _buffer, buffer_tell(_buffer), _where);
        }

    }
}

/**
 * @func __DiscordRelationshipHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordRelationshipHandle} 
 * @ignore 
 */
function __DiscordRelationshipHandle_decode(_buffer, _offset)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordRelationshipHandle();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: discord_relationship_type, type: enum DiscordRelationshipType
        self.discord_relationship_type = buffer_read(_buffer, buffer_u64);

        // field: game_relationship_type, type: enum DiscordRelationshipType
        self.game_relationship_type = buffer_read(_buffer, buffer_u64);

        // field: is_spam_request, type: Bool
        self.is_spam_request = buffer_read(_buffer, buffer_bool);

        // field: user, type: optional<struct DiscordUserHandle>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.user = __DiscordUserHandle_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.user = undefined;
        }

    }

    return _inst;
}

/**
 * @func __DiscordLobbyMemberHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordLobbyMemberHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordLobbyMemberHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: can_link_lobby, type: Bool
        if (!is_bool(self.can_link_lobby)) show_error($"{_where} :: self.can_link_lobby expected bool", true);
        buffer_write(_buffer, buffer_bool, self.can_link_lobby);

        // field: connected, type: Bool
        if (!is_bool(self.connected)) show_error($"{_where} :: self.connected expected bool", true);
        buffer_write(_buffer, buffer_bool, self.connected);

        // field: user, type: optional<struct DiscordUserHandle>
        if (is_undefined(self.user))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.user.__uid != 1178519282) show_error($"{_where} :: self.user expected DiscordUserHandle", true);
            __DiscordUserHandle_encode(self.user, _buffer, buffer_tell(_buffer), _where);
        }

        // field: metadata, type: AnyMap

        __ext_core_buffer_marshal_value(_buffer, self.metadata);

    }
}

/**
 * @func __DiscordLobbyMemberHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordLobbyMemberHandle} 
 * @ignore 
 */
function __DiscordLobbyMemberHandle_decode(_buffer, _offset)
{
    static __decoders = __GMDiscordSocial_get_decoders();

    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordLobbyMemberHandle();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: can_link_lobby, type: Bool
        self.can_link_lobby = buffer_read(_buffer, buffer_bool);

        // field: connected, type: Bool
        self.connected = buffer_read(_buffer, buffer_bool);

        // field: user, type: optional<struct DiscordUserHandle>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.user = __DiscordUserHandle_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.user = undefined;
        }

        // field: metadata, type: AnyMap
        self.metadata = __ext_core_buffer_unmarshal_value(_buffer, __decoders);

    }

    return _inst;
}

/**
 * @func __DiscordLobbyHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordLobbyHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordLobbyHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: lobby_member_ids, type: UInt64[]
        if (!is_array(self.lobby_member_ids)) show_error($"{_where} :: self.lobby_member_ids expected array", true);
        var _length = array_length(self.lobby_member_ids);
        buffer_write(_buffer, buffer_u32, _length);
        for (var _i = 0; _i < _length; ++_i)
        {
            if (!is_numeric(self.lobby_member_ids[_i])) show_error($"{_where} :: self.lobby_member_ids[_i] expected number", true);
            buffer_write(_buffer, buffer_u64, self.lobby_member_ids[_i]);
        }

        // field: lobby_members, type: struct DiscordLobbyMemberHandle[]
        if (!is_array(self.lobby_members)) show_error($"{_where} :: self.lobby_members expected array", true);
        var _length = array_length(self.lobby_members);
        buffer_write(_buffer, buffer_u32, _length);
        for (var _i = 0; _i < _length; ++_i)
        {
            if (self.lobby_members[_i].__uid != 1984637501) show_error($"{_where} :: self.lobby_members[_i] expected DiscordLobbyMemberHandle", true);
            __DiscordLobbyMemberHandle_encode(self.lobby_members[_i], _buffer, buffer_tell(_buffer), _where);
        }

        // field: call_info_handle, type: optional<struct DiscordCallInfoHandle>
        if (is_undefined(self.call_info_handle))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.call_info_handle.__uid != 70622077) show_error($"{_where} :: self.call_info_handle expected DiscordCallInfoHandle", true);
            __DiscordCallInfoHandle_encode(self.call_info_handle, _buffer, buffer_tell(_buffer), _where);
        }

        // field: linked_channel, type: optional<struct DiscordLinkedChannel>
        if (is_undefined(self.linked_channel))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.linked_channel.__uid != 4231637701) show_error($"{_where} :: self.linked_channel expected DiscordLinkedChannel", true);
            __DiscordLinkedChannel_encode(self.linked_channel, _buffer, buffer_tell(_buffer), _where);
        }

        // field: metadata, type: AnyMap

        __ext_core_buffer_marshal_value(_buffer, self.metadata);

    }
}

/**
 * @func __DiscordLobbyHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordLobbyHandle} 
 * @ignore 
 */
function __DiscordLobbyHandle_decode(_buffer, _offset)
{
    static __decoders = __GMDiscordSocial_get_decoders();

    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordLobbyHandle();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: lobby_member_ids, type: UInt64[]
        var _length = buffer_read(_buffer, buffer_u32);
        self.lobby_member_ids = array_create(_length);
        for (var _i = 0; _i < _length; ++_i)
        {
            self.lobby_member_ids[_i] = buffer_read(_buffer, buffer_u64);
        }

        // field: lobby_members, type: struct DiscordLobbyMemberHandle[]
        var _length = buffer_read(_buffer, buffer_u32);
        self.lobby_members = array_create(_length);
        for (var _i = 0; _i < _length; ++_i)
        {
            self.lobby_members[_i] = __DiscordLobbyMemberHandle_decode(_buffer, buffer_tell(_buffer));
        }

        // field: call_info_handle, type: optional<struct DiscordCallInfoHandle>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.call_info_handle = __DiscordCallInfoHandle_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.call_info_handle = undefined;
        }

        // field: linked_channel, type: optional<struct DiscordLinkedChannel>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.linked_channel = __DiscordLinkedChannel_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.linked_channel = undefined;
        }

        // field: metadata, type: AnyMap
        self.metadata = __ext_core_buffer_unmarshal_value(_buffer, __decoders);

    }

    return _inst;
}

/**
 * @func __DiscordMessageHandle_encode(_inst, _buffer, _offset, _where)
 * @param {Struct.DiscordMessageHandle} _inst
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @param {String} _where
 * @ignore 
 */
function __DiscordMessageHandle_encode(_inst, _buffer, _offset, _where = _GMFUNCTION_)
{
    buffer_seek(_buffer, buffer_seek_start, _offset);
    with (_inst)
    {
        // field: id, type: UInt64
        if (!is_numeric(self.id)) show_error($"{_where} :: self.id expected number", true);
        buffer_write(_buffer, buffer_u64, self.id);

        // field: author, type: optional<struct DiscordUserHandle>
        if (is_undefined(self.author))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.author.__uid != 1178519282) show_error($"{_where} :: self.author expected DiscordUserHandle", true);
            __DiscordUserHandle_encode(self.author, _buffer, buffer_tell(_buffer), _where);
        }

        // field: author_id, type: UInt64
        if (!is_numeric(self.author_id)) show_error($"{_where} :: self.author_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.author_id);

        // field: channel, type: optional<struct DiscordChannelHandle>
        if (is_undefined(self.channel))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.channel.__uid != 1253744792) show_error($"{_where} :: self.channel expected DiscordChannelHandle", true);
            __DiscordChannelHandle_encode(self.channel, _buffer, buffer_tell(_buffer), _where);
        }

        // field: channel_id, type: UInt64
        if (!is_numeric(self.channel_id)) show_error($"{_where} :: self.channel_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.channel_id);

        // field: disclosure_type, type: optional<enum DiscordDisclosureTypes>
        if (is_undefined(self.disclosure_type))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);

            if (!is_numeric(self.disclosure_type)) show_error($"{_where} :: self.disclosure_type expected number", true);
            buffer_write(_buffer, buffer_u64, self.disclosure_type);
        }

        // field: lobby, type: optional<struct DiscordLobbyHandle>
        if (is_undefined(self.lobby))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.lobby.__uid != 2865089355) show_error($"{_where} :: self.lobby expected DiscordLobbyHandle", true);
            __DiscordLobbyHandle_encode(self.lobby, _buffer, buffer_tell(_buffer), _where);
        }

        // field: content, type: String
        if (!is_string(self.content)) show_error($"{_where} :: self.content expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.content));
        buffer_write(_buffer, buffer_string, self.content);

        // field: edited_timestamp, type: UInt64
        if (!is_numeric(self.edited_timestamp)) show_error($"{_where} :: self.edited_timestamp expected number", true);
        buffer_write(_buffer, buffer_u64, self.edited_timestamp);

        // field: metadata, type: AnyMap

        __ext_core_buffer_marshal_value(_buffer, self.metadata);

        // field: additional_content, type: optional<struct DiscordAdditionalContent>
        if (is_undefined(self.additional_content))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (self.additional_content.__uid != 3042072655) show_error($"{_where} :: self.additional_content expected DiscordAdditionalContent", true);
            __DiscordAdditionalContent_encode(self.additional_content, _buffer, buffer_tell(_buffer), _where);
        }

        // field: raw_content, type: String
        if (!is_string(self.raw_content)) show_error($"{_where} :: self.raw_content expected string", true);
        buffer_write(_buffer, buffer_u32, string_byte_length(self.raw_content));
        buffer_write(_buffer, buffer_string, self.raw_content);

        // field: recipient, type: struct DiscordUserHandle
        if (self.recipient.__uid != 1178519282) show_error($"{_where} :: self.recipient expected DiscordUserHandle", true);
        __DiscordUserHandle_encode(self.recipient, _buffer, buffer_tell(_buffer), _where);

        // field: recipient_id, type: UInt64
        if (!is_numeric(self.recipient_id)) show_error($"{_where} :: self.recipient_id expected number", true);
        buffer_write(_buffer, buffer_u64, self.recipient_id);

        // field: sent_from_game, type: Bool
        if (!is_bool(self.sent_from_game)) show_error($"{_where} :: self.sent_from_game expected bool", true);
        buffer_write(_buffer, buffer_bool, self.sent_from_game);

        // field: sent_timestamp, type: UInt64
        if (!is_numeric(self.sent_timestamp)) show_error($"{_where} :: self.sent_timestamp expected number", true);
        buffer_write(_buffer, buffer_u64, self.sent_timestamp);

        // field: application_id, type: optional<UInt64>
        if (is_undefined(self.application_id))
        {
            buffer_write(_buffer, buffer_bool, false);
        }
        else
        {
            buffer_write(_buffer, buffer_bool, true);
            if (!is_numeric(self.application_id)) show_error($"{_where} :: self.application_id expected number", true);
            buffer_write(_buffer, buffer_u64, self.application_id);
        }

        // field: moderation_metadata, type: AnyMap

        __ext_core_buffer_marshal_value(_buffer, self.moderation_metadata);

    }
}

/**
 * @func __DiscordMessageHandle_decode(_buffer, _offset)
 * @param {Id.Buffer} _buffer
 * @param {Real} _offset
 * @returns {Struct.DiscordMessageHandle} 
 * @ignore 
 */
function __DiscordMessageHandle_decode(_buffer, _offset)
{
    static __decoders = __GMDiscordSocial_get_decoders();

    buffer_seek(_buffer, buffer_seek_start, _offset);

    _inst = new DiscordMessageHandle();
    with (_inst)
    {
        // field: id, type: UInt64
        self.id = buffer_read(_buffer, buffer_u64);

        // field: author, type: optional<struct DiscordUserHandle>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.author = __DiscordUserHandle_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.author = undefined;
        }

        // field: author_id, type: UInt64
        self.author_id = buffer_read(_buffer, buffer_u64);

        // field: channel, type: optional<struct DiscordChannelHandle>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.channel = __DiscordChannelHandle_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.channel = undefined;
        }

        // field: channel_id, type: UInt64
        self.channel_id = buffer_read(_buffer, buffer_u64);

        // field: disclosure_type, type: optional<enum DiscordDisclosureTypes>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.disclosure_type = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.disclosure_type = undefined;
        }

        // field: lobby, type: optional<struct DiscordLobbyHandle>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.lobby = __DiscordLobbyHandle_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.lobby = undefined;
        }

        // field: content, type: String
        buffer_read(_buffer, buffer_u32);
        self.content = buffer_read(_buffer, buffer_string);

        // field: edited_timestamp, type: UInt64
        self.edited_timestamp = buffer_read(_buffer, buffer_u64);

        // field: metadata, type: AnyMap
        self.metadata = __ext_core_buffer_unmarshal_value(_buffer, __decoders);

        // field: additional_content, type: optional<struct DiscordAdditionalContent>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.additional_content = __DiscordAdditionalContent_decode(_buffer, buffer_tell(_buffer));
        }
        else
        {
            self.additional_content = undefined;
        }

        // field: raw_content, type: String
        buffer_read(_buffer, buffer_u32);
        self.raw_content = buffer_read(_buffer, buffer_string);

        // field: recipient, type: struct DiscordUserHandle
        self.recipient = __DiscordUserHandle_decode(_buffer, buffer_tell(_buffer));

        // field: recipient_id, type: UInt64
        self.recipient_id = buffer_read(_buffer, buffer_u64);

        // field: sent_from_game, type: Bool
        self.sent_from_game = buffer_read(_buffer, buffer_bool);

        // field: sent_timestamp, type: UInt64
        self.sent_timestamp = buffer_read(_buffer, buffer_u64);

        // field: application_id, type: optional<UInt64>
        if (buffer_read(_buffer, buffer_bool))
        {
            self.application_id = buffer_read(_buffer, buffer_u64);
        }
        else
        {
            self.application_id = undefined;
        }

        // field: moderation_metadata, type: AnyMap
        self.moderation_metadata = __ext_core_buffer_unmarshal_value(_buffer, __decoders);

    }

    return _inst;
}

// #####################################################################
// # Functions
// #####################################################################

// Skipping function discord_social_run_callbacks (no wrapper is required)


/**
 * @param {Struct.DiscordClientCreateOptions} _options
 */
function discord_social_init(_options)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _options, type: optional<struct DiscordClientCreateOptions>
    if (is_undefined(_options))
    {
        buffer_write(__args_buffer, buffer_bool, false);
    }
    else
    {
        buffer_write(__args_buffer, buffer_bool, true);
        if (_options.__uid != 1415721306) show_error($"{_GMFUNCTION_} :: _options expected DiscordClientCreateOptions", true);
        __DiscordClientCreateOptions_encode(_options, __args_buffer, buffer_tell(__args_buffer), _GMFUNCTION_);
    }

    var _return_value = __discord_social_init(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_shutdown (no wrapper is required)


/**
 * @param {Real} _channel_id
 * @param {Function} _callback
 */
function discord_social_client_end_call(_channel_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_end_call(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_end_calls(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_end_calls(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @returns {Struct.DiscordCall} 
 */
function discord_social_client_get_call(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_call(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = __DiscordCall_decode(__ret_buffer, buffer_tell(__ret_buffer));
    return _result;
}

/**
 * @returns {Array[Struct.DiscordCall]} 
 */
function discord_social_client_get_calls()
{
    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_calls(buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    var _length = buffer_read(__ret_buffer, buffer_u32);
    _result = array_create(_length);
    for (var _i = 0; _i < _length; ++_i)
    {
        _result[_i] = __DiscordCall_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    return _result;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_get_current_input_device(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_current_input_device(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_get_current_output_device(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_current_output_device(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_get_input_devices(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_input_devices(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_get_input_volume (no wrapper is required)


/**
 * @param {Function} _callback
 */
function discord_social_client_get_output_devices(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_output_devices(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_get_output_volume (no wrapper is required)


// Skipping function discord_social_client_get_self_deaf_all (no wrapper is required)


// Skipping function discord_social_client_get_self_mute_all (no wrapper is required)


// Skipping function discord_social_client_set_automatic_gain_control (no wrapper is required)


/**
 * @param {Function} _callback
 */
function discord_social_client_set_device_change_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_device_change_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_set_echo_cancellation (no wrapper is required)


/**
 * @param {String} _device_id
 * @param {Function} _callback
 */
function discord_social_client_set_input_device(_device_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _device_id, type: String
    if (!is_string(_device_id)) show_error($"{_GMFUNCTION_} :: _device_id expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_device_id));
    buffer_write(__args_buffer, buffer_string, _device_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_input_device(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_set_input_volume (no wrapper is required)


/**
 * @param {Function} _callback
 */
function discord_social_client_set_no_audio_input_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_no_audio_input_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_set_no_audio_input_threshold (no wrapper is required)


// Skipping function discord_social_client_set_noise_suppression (no wrapper is required)


// Skipping function discord_social_client_set_opus_hardware_coding (no wrapper is required)


/**
 * @param {String} _device_id
 * @param {Function} _callback
 */
function discord_social_client_set_output_device(_device_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _device_id, type: String
    if (!is_string(_device_id)) show_error($"{_GMFUNCTION_} :: _device_id expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_device_id));
    buffer_write(__args_buffer, buffer_string, _device_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_output_device(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_set_output_volume (no wrapper is required)


// Skipping function discord_social_client_set_self_deaf_all (no wrapper is required)


// Skipping function discord_social_client_set_self_mute_all (no wrapper is required)


/**
 * @param {Enum.DiscordClientThread} _thread
 * @param {Real} _priority
 */
function discord_social_client_set_thread_priority(_thread, _priority)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _thread, type: enum DiscordClientThread

    if (!is_numeric(_thread)) show_error($"{_GMFUNCTION_} :: _thread expected number", true);
    buffer_write(__args_buffer, buffer_u64, _thread);

    // param: _priority, type: Int32
    if (!is_numeric(_priority)) show_error($"{_GMFUNCTION_} :: _priority expected number", true);
    buffer_write(__args_buffer, buffer_s32, _priority);

    var _return_value = __discord_social_client_set_thread_priority(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_voice_participant_changed_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_voice_participant_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_show_audio_route_picker (no wrapper is required)


/**
 * @param {Real} _channel_id
 * @returns {Struct.DiscordCall} 
 */
function discord_social_client_start_call(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_start_call(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = __DiscordCall_decode(__ret_buffer, buffer_tell(__ret_buffer));
    return _result;
}

// Skipping function discord_social_call_audio_should_mute (no wrapper is required)


/**
 * @param {Real} _lobby_id
 * @param {Function} _received_callback
 * @param {Function} _captured_callback
 * @returns {Struct.DiscordCall} 
 */
function discord_social_client_start_call_with_audio_callbacks(_lobby_id, _received_callback, _captured_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _received_callback, type: Function
    if (!is_callable(_received_callback)) show_error($"{_GMFUNCTION_} :: _received_callback expected callable type", true);
    var _received_callback_handle = __ext_core_function_register(_received_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _received_callback_handle);

    // param: _captured_callback, type: Function
    if (!is_callable(_captured_callback)) show_error($"{_GMFUNCTION_} :: _captured_callback expected callable type", true);
    var _captured_callback_handle = __ext_core_function_register(_captured_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _captured_callback_handle);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_start_call_with_audio_callbacks(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = __DiscordCall_decode(__ret_buffer, buffer_tell(__ret_buffer));
    return _result;
}

/**
 * @param {Real} _lobby_id
 * @param {Real} _user_id
 * @param {Id.Buffer} _out_buffer
 * @returns {Real} 
 */
function discord_social_call_fetch_received_data(_lobby_id, _user_id, _out_buffer)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _out_buffer, type: Buffer
    if (!buffer_exists(_out_buffer)) show_error($"{_GMFUNCTION_} :: _out_buffer expected Id.Buffer", true);
    __GMDiscordSocial_queue_buffer(buffer_get_address(_out_buffer), buffer_get_size(_out_buffer));

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_call_fetch_received_data(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = buffer_read(__ret_buffer, buffer_u64);
    return _result;
}

/**
 * @param {Real} _lobby_id
 * @param {Id.Buffer} _out_buffer
 * @returns {Real} 
 */
function discord_social_call_fetch_captured_data(_lobby_id, _out_buffer)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _out_buffer, type: Buffer
    if (!buffer_exists(_out_buffer)) show_error($"{_GMFUNCTION_} :: _out_buffer expected Id.Buffer", true);
    __GMDiscordSocial_queue_buffer(buffer_get_address(_out_buffer), buffer_get_size(_out_buffer));

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_call_fetch_captured_data(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = buffer_read(__ret_buffer, buffer_u64);
    return _result;
}

// Skipping function discord_social_client_abort_authorize (no wrapper is required)


// Skipping function discord_social_client_abort_get_token_from_device (no wrapper is required)


// Skipping function discord_social_client_create_authorization_code_verifier (no wrapper is required)


/**
 * @param {Struct.DiscordAuthorizationArgs} _args
 * @param {Function} _callback
 */
function discord_social_client_authorize(_args, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _args, type: struct DiscordAuthorizationArgs
    if (_args.__uid != 1344950869) show_error($"{_GMFUNCTION_} :: _args expected DiscordAuthorizationArgs", true);
    __DiscordAuthorizationArgs_encode(_args, __args_buffer, buffer_tell(__args_buffer), _GMFUNCTION_);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_authorize(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_close_authorize_device_screen (no wrapper is required)


/**
 * @param {Real} _application_id
 * @param {Enum.DiscordAuthenticationExternalAuthType} _token_type
 * @param {String} _token
 * @param {Function} _callback
 */
function discord_social_client_get_provisional_token(_application_id, _token_type, _token, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _token_type, type: enum DiscordAuthenticationExternalAuthType

    if (!is_numeric(_token_type)) show_error($"{_GMFUNCTION_} :: _token_type expected number", true);
    buffer_write(__args_buffer, buffer_u64, _token_type);

    // param: _token, type: String
    if (!is_string(_token)) show_error($"{_GMFUNCTION_} :: _token expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_token));
    buffer_write(__args_buffer, buffer_string, _token);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_provisional_token(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _application_id
 * @param {String} _code
 * @param {String} _code_verifier
 * @param {String} _redirect_uri
 * @param {Function} _callback
 */
function discord_social_client_get_token(_application_id, _code, _code_verifier, _redirect_uri, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _code, type: String
    if (!is_string(_code)) show_error($"{_GMFUNCTION_} :: _code expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_code));
    buffer_write(__args_buffer, buffer_string, _code);

    // param: _code_verifier, type: String
    if (!is_string(_code_verifier)) show_error($"{_GMFUNCTION_} :: _code_verifier expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_code_verifier));
    buffer_write(__args_buffer, buffer_string, _code_verifier);

    // param: _redirect_uri, type: String
    if (!is_string(_redirect_uri)) show_error($"{_GMFUNCTION_} :: _redirect_uri expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_redirect_uri));
    buffer_write(__args_buffer, buffer_string, _redirect_uri);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_token(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _client_id
 * @param {String} _scopes
 * @param {Function} _callback
 */
function discord_social_client_get_token_from_device(_client_id, _scopes, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _client_id, type: UInt64
    if (!is_numeric(_client_id)) show_error($"{_GMFUNCTION_} :: _client_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _client_id);

    // param: _scopes, type: String
    if (!is_string(_scopes)) show_error($"{_GMFUNCTION_} :: _scopes expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_scopes));
    buffer_write(__args_buffer, buffer_string, _scopes);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_token_from_device(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _client_id
 * @param {String} _scopes
 * @param {Enum.DiscordAuthenticationExternalAuthType} _external_auth_type
 * @param {String} _external_auth_token
 * @param {Function} _callback
 */
function discord_social_client_get_token_from_device_provisional_merge(_client_id, _scopes, _external_auth_type, _external_auth_token, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _client_id, type: UInt64
    if (!is_numeric(_client_id)) show_error($"{_GMFUNCTION_} :: _client_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _client_id);

    // param: _scopes, type: String
    if (!is_string(_scopes)) show_error($"{_GMFUNCTION_} :: _scopes expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_scopes));
    buffer_write(__args_buffer, buffer_string, _scopes);

    // param: _external_auth_type, type: enum DiscordAuthenticationExternalAuthType

    if (!is_numeric(_external_auth_type)) show_error($"{_GMFUNCTION_} :: _external_auth_type expected number", true);
    buffer_write(__args_buffer, buffer_u64, _external_auth_type);

    // param: _external_auth_token, type: String
    if (!is_string(_external_auth_token)) show_error($"{_GMFUNCTION_} :: _external_auth_token expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_external_auth_token));
    buffer_write(__args_buffer, buffer_string, _external_auth_token);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_token_from_device_provisional_merge(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _application_id
 * @param {String} _code
 * @param {String} _code_verifier
 * @param {String} _redirect_uri
 * @param {Enum.DiscordAuthenticationExternalAuthType} _external_auth_type
 * @param {String} _external_auth_token
 * @param {Function} _callback
 */
function discord_social_client_get_token_from_provisional_merge(_application_id, _code, _code_verifier, _redirect_uri, _external_auth_type, _external_auth_token, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _code, type: String
    if (!is_string(_code)) show_error($"{_GMFUNCTION_} :: _code expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_code));
    buffer_write(__args_buffer, buffer_string, _code);

    // param: _code_verifier, type: String
    if (!is_string(_code_verifier)) show_error($"{_GMFUNCTION_} :: _code_verifier expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_code_verifier));
    buffer_write(__args_buffer, buffer_string, _code_verifier);

    // param: _redirect_uri, type: String
    if (!is_string(_redirect_uri)) show_error($"{_GMFUNCTION_} :: _redirect_uri expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_redirect_uri));
    buffer_write(__args_buffer, buffer_string, _redirect_uri);

    // param: _external_auth_type, type: enum DiscordAuthenticationExternalAuthType

    if (!is_numeric(_external_auth_type)) show_error($"{_GMFUNCTION_} :: _external_auth_type expected number", true);
    buffer_write(__args_buffer, buffer_u64, _external_auth_type);

    // param: _external_auth_token, type: String
    if (!is_string(_external_auth_token)) show_error($"{_GMFUNCTION_} :: _external_auth_token expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_external_auth_token));
    buffer_write(__args_buffer, buffer_string, _external_auth_token);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_token_from_provisional_merge(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_is_authenticated (no wrapper is required)


/**
 * @param {Real} _client_id
 * @param {String} _user_code
 */
function discord_social_client_open_authorize_device_screen(_client_id, _user_code)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _client_id, type: UInt64
    if (!is_numeric(_client_id)) show_error($"{_GMFUNCTION_} :: _client_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _client_id);

    // param: _user_code, type: String
    if (!is_string(_user_code)) show_error($"{_GMFUNCTION_} :: _user_code expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_user_code));
    buffer_write(__args_buffer, buffer_string, _user_code);

    var _return_value = __discord_social_client_open_authorize_device_screen(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_provisional_user_merge_completed (no wrapper is required)


/**
 * @param {Real} _application_id
 * @param {String} _refresh_token
 * @param {Function} _callback
 */
function discord_social_client_refresh_token(_application_id, _refresh_token, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _refresh_token, type: String
    if (!is_string(_refresh_token)) show_error($"{_GMFUNCTION_} :: _refresh_token expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_refresh_token));
    buffer_write(__args_buffer, buffer_string, _refresh_token);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_refresh_token(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_authorize_device_screen_closed_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_authorize_device_screen_closed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_set_game_window_pid (no wrapper is required)


/**
 * @param {Function} _callback
 */
function discord_social_client_set_token_expiration_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_token_expiration_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {String} _name
 * @param {Function} _callback
 */
function discord_social_client_update_provisional_account_display_name(_name, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _name, type: String
    if (!is_string(_name)) show_error($"{_GMFUNCTION_} :: _name expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_name));
    buffer_write(__args_buffer, buffer_string, _name);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_update_provisional_account_display_name(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Enum.DiscordAuthorizationTokenType} _token_type
 * @param {String} _token
 * @param {Function} _callback
 */
function discord_social_client_update_token(_token_type, _token, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _token_type, type: enum DiscordAuthorizationTokenType

    if (!is_numeric(_token_type)) show_error($"{_GMFUNCTION_} :: _token_type expected number", true);
    buffer_write(__args_buffer, buffer_u64, _token_type);

    // param: _token, type: String
    if (!is_string(_token)) show_error($"{_GMFUNCTION_} :: _token expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_token));
    buffer_write(__args_buffer, buffer_string, _token);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_update_token(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _application_id
 * @param {String} _token
 * @param {Function} _callback
 */
function discord_social_client_revoke_token(_application_id, _token, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _token, type: String
    if (!is_string(_token)) show_error($"{_GMFUNCTION_} :: _token expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_token));
    buffer_write(__args_buffer, buffer_string, _token);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_revoke_token(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {String} _parent_application_token
 * @param {Real} _child_application_id
 * @param {Function} _callback
 */
function discord_social_client_exchange_child_token(_parent_application_token, _child_application_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _parent_application_token, type: String
    if (!is_string(_parent_application_token)) show_error($"{_GMFUNCTION_} :: _parent_application_token expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_parent_application_token));
    buffer_write(__args_buffer, buffer_string, _parent_application_token);

    // param: _child_application_id, type: UInt64
    if (!is_numeric(_child_application_id)) show_error($"{_GMFUNCTION_} :: _child_application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _child_application_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_exchange_child_token(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _application_id
 * @param {Enum.DiscordAuthenticationExternalAuthType} _external_auth_type
 * @param {String} _external_auth_token
 * @param {Function} _callback
 */
function discord_social_client_unmerge_into_provisional_account(_application_id, _external_auth_type, _external_auth_token, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _external_auth_type, type: enum DiscordAuthenticationExternalAuthType

    if (!is_numeric(_external_auth_type)) show_error($"{_GMFUNCTION_} :: _external_auth_type expected number", true);
    buffer_write(__args_buffer, buffer_u64, _external_auth_type);

    // param: _external_auth_token, type: String
    if (!is_string(_external_auth_token)) show_error($"{_GMFUNCTION_} :: _external_auth_token expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_external_auth_token));
    buffer_write(__args_buffer, buffer_string, _external_auth_token);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_unmerge_into_provisional_account(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_register_authorize_request_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_register_authorize_request_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _message_id
 * @returns {Bool} 
 */
function discord_social_client_can_open_message_in_discord(_message_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _message_id, type: UInt64
    if (!is_numeric(_message_id)) show_error($"{_GMFUNCTION_} :: _message_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _message_id);

    var _return_value = __discord_social_client_can_open_message_in_discord(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _recipient_id
 * @param {Real} _message_id
 * @param {Function} _callback
 */
function discord_social_client_delete_user_message(_recipient_id, _message_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _recipient_id, type: UInt64
    if (!is_numeric(_recipient_id)) show_error($"{_GMFUNCTION_} :: _recipient_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _recipient_id);

    // param: _message_id, type: UInt64
    if (!is_numeric(_message_id)) show_error($"{_GMFUNCTION_} :: _message_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _message_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_delete_user_message(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @returns {Struct.DiscordChannelHandle} 
 */
function discord_social_client_get_channel_handle(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_channel_handle(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    if (buffer_read(__ret_buffer, buffer_bool))
    {
        _result = __DiscordChannelHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    else
    {
        _result = undefined;
    }
    return _result;
}

/**
 * @param {Real} _message_id
 * @returns {Struct.DiscordMessageHandle} 
 */
function discord_social_client_get_message_handle(_message_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _message_id, type: UInt64
    if (!is_numeric(_message_id)) show_error($"{_GMFUNCTION_} :: _message_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _message_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_message_handle(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    if (buffer_read(__ret_buffer, buffer_bool))
    {
        _result = __DiscordMessageHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    else
    {
        _result = undefined;
    }
    return _result;
}

/**
 * @param {Real} _message_id
 * @param {Function} _provisional_user_merge_required_callback
 * @param {Function} _open_message_in_discord_callback
 */
function discord_social_client_open_message_in_discord(_message_id, _provisional_user_merge_required_callback, _open_message_in_discord_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _message_id, type: UInt64
    if (!is_numeric(_message_id)) show_error($"{_GMFUNCTION_} :: _message_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _message_id);

    // param: _provisional_user_merge_required_callback, type: Function
    if (!is_callable(_provisional_user_merge_required_callback)) show_error($"{_GMFUNCTION_} :: _provisional_user_merge_required_callback expected callable type", true);
    var _provisional_user_merge_required_callback_handle = __ext_core_function_register(_provisional_user_merge_required_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _provisional_user_merge_required_callback_handle);

    // param: _open_message_in_discord_callback, type: Function
    if (!is_callable(_open_message_in_discord_callback)) show_error($"{_GMFUNCTION_} :: _open_message_in_discord_callback expected callable type", true);
    var _open_message_in_discord_callback_handle = __ext_core_function_register(_open_message_in_discord_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _open_message_in_discord_callback_handle);

    var _return_value = __discord_social_client_open_message_in_discord(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _lobby_id
 * @param {String} _content
 * @param {Function} _callback
 */
function discord_social_client_send_lobby_message(_lobby_id, _content, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _content, type: String
    if (!is_string(_content)) show_error($"{_GMFUNCTION_} :: _content expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_content));
    buffer_write(__args_buffer, buffer_string, _content);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_lobby_message(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _lobby_id
 * @param {String} _content
 * @param {Struct} _metadata
 * @param {Function} _callback
 */
function discord_social_client_send_lobby_message_with_metadata(_lobby_id, _content, _metadata, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    static __decoders = __GMDiscordSocial_get_decoders();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _content, type: String
    if (!is_string(_content)) show_error($"{_GMFUNCTION_} :: _content expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_content));
    buffer_write(__args_buffer, buffer_string, _content);

    // param: _metadata, type: AnyMap

    __ext_core_buffer_marshal_value(__args_buffer, _metadata);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_lobby_message_with_metadata(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _recipient_id
 * @param {String} _content
 * @param {Function} _callback
 */
function discord_social_client_send_user_message(_recipient_id, _content, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _recipient_id, type: UInt64
    if (!is_numeric(_recipient_id)) show_error($"{_GMFUNCTION_} :: _recipient_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _recipient_id);

    // param: _content, type: String
    if (!is_string(_content)) show_error($"{_GMFUNCTION_} :: _content expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_content));
    buffer_write(__args_buffer, buffer_string, _content);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_user_message(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _recipient_id
 * @param {String} _content
 * @param {Struct} _metadata
 * @param {Function} _callback
 */
function discord_social_client_send_user_message_with_metadata(_recipient_id, _content, _metadata, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    static __decoders = __GMDiscordSocial_get_decoders();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _recipient_id, type: UInt64
    if (!is_numeric(_recipient_id)) show_error($"{_GMFUNCTION_} :: _recipient_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _recipient_id);

    // param: _content, type: String
    if (!is_string(_content)) show_error($"{_GMFUNCTION_} :: _content expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_content));
    buffer_write(__args_buffer, buffer_string, _content);

    // param: _metadata, type: AnyMap

    __ext_core_buffer_marshal_value(__args_buffer, _metadata);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_user_message_with_metadata(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_message_created_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_message_created_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_message_deleted_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_message_deleted_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_message_updated_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_message_updated_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_set_showing_chat (no wrapper is required)


/**
 * @param {Real} _recipient_id
 * @param {Real} _message_id
 * @param {String} _content
 * @param {Function} _callback
 */
function discord_social_client_edit_user_message(_recipient_id, _message_id, _content, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _recipient_id, type: UInt64
    if (!is_numeric(_recipient_id)) show_error($"{_GMFUNCTION_} :: _recipient_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _recipient_id);

    // param: _message_id, type: UInt64
    if (!is_numeric(_message_id)) show_error($"{_GMFUNCTION_} :: _message_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _message_id);

    // param: _content, type: String
    if (!is_string(_content)) show_error($"{_GMFUNCTION_} :: _content expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_content));
    buffer_write(__args_buffer, buffer_string, _content);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_edit_user_message(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _lobby_id
 * @param {Real} _limit
 * @param {Function} _callback
 */
function discord_social_client_get_lobby_messages_with_limit(_lobby_id, _limit, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _limit, type: Int32
    if (!is_numeric(_limit)) show_error($"{_GMFUNCTION_} :: _limit expected number", true);
    buffer_write(__args_buffer, buffer_s32, _limit);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_lobby_messages_with_limit(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_get_user_message_summaries(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_user_message_summaries(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _recipient_id
 * @param {Real} _limit
 * @param {Function} _callback
 */
function discord_social_client_get_user_messages_with_limit(_recipient_id, _limit, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _recipient_id, type: UInt64
    if (!is_numeric(_recipient_id)) show_error($"{_GMFUNCTION_} :: _recipient_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _recipient_id);

    // param: _limit, type: Int32
    if (!is_numeric(_limit)) show_error($"{_GMFUNCTION_} :: _limit expected number", true);
    buffer_write(__args_buffer, buffer_s32, _limit);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_user_messages_with_limit(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Enum.DiscordLoggingSeverity} _min_severity
 * @param {Function} _callback
 */
function discord_social_client_add_log_callback(_min_severity, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _min_severity, type: enum DiscordLoggingSeverity

    if (!is_numeric(_min_severity)) show_error($"{_GMFUNCTION_} :: _min_severity expected number", true);
    buffer_write(__args_buffer, buffer_u64, _min_severity);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_add_log_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Enum.DiscordLoggingSeverity} _min_severity
 * @param {Function} _callback
 */
function discord_social_client_add_voice_log_callback(_min_severity, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _min_severity, type: enum DiscordLoggingSeverity

    if (!is_numeric(_min_severity)) show_error($"{_GMFUNCTION_} :: _min_severity expected number", true);
    buffer_write(__args_buffer, buffer_u64, _min_severity);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_add_voice_log_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_connect (no wrapper is required)


// Skipping function discord_social_client_disconnect (no wrapper is required)


/**
 * @returns {Enum.DiscordClientStatus} 
 */
function discord_social_client_get_status()
{
    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_status(buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = buffer_read(__ret_buffer, buffer_u64);
    return _result;
}

/**
 * @param {String} _path
 * @param {Enum.DiscordLoggingSeverity} _min_severity
 * @returns {Bool} 
 */
function discord_social_client_set_log_dir(_path, _min_severity)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _path, type: String
    if (!is_string(_path)) show_error($"{_GMFUNCTION_} :: _path expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_path));
    buffer_write(__args_buffer, buffer_string, _path);

    // param: _min_severity, type: enum DiscordLoggingSeverity

    if (!is_numeric(_min_severity)) show_error($"{_GMFUNCTION_} :: _min_severity expected number", true);
    buffer_write(__args_buffer, buffer_u64, _min_severity);

    var _return_value = __discord_social_client_set_log_dir(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_status_changed_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_status_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {String} _path
 * @param {Enum.DiscordLoggingSeverity} _min_severity
 */
function discord_social_client_set_voice_log_dir(_path, _min_severity)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _path, type: String
    if (!is_string(_path)) show_error($"{_GMFUNCTION_} :: _path expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_path));
    buffer_write(__args_buffer, buffer_string, _path);

    // param: _min_severity, type: enum DiscordLoggingSeverity

    if (!is_numeric(_min_severity)) show_error($"{_GMFUNCTION_} :: _min_severity expected number", true);
    buffer_write(__args_buffer, buffer_u64, _min_severity);

    var _return_value = __discord_social_client_set_voice_log_dir(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {String} _secret
 * @param {Function} _callback
 */
function discord_social_client_create_or_join_lobby(_secret, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _secret, type: String
    if (!is_string(_secret)) show_error($"{_GMFUNCTION_} :: _secret expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_secret));
    buffer_write(__args_buffer, buffer_string, _secret);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_create_or_join_lobby(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {String} _secret
 * @param {Struct} _lobby_metadata_struct
 * @param {Struct} _member_metadata_struct
 * @param {Function} _callback
 */
function discord_social_client_create_or_join_lobby_with_metadata(_secret, _lobby_metadata_struct, _member_metadata_struct, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    static __decoders = __GMDiscordSocial_get_decoders();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _secret, type: String
    if (!is_string(_secret)) show_error($"{_GMFUNCTION_} :: _secret expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_secret));
    buffer_write(__args_buffer, buffer_string, _secret);

    // param: _lobby_metadata_struct, type: AnyMap

    __ext_core_buffer_marshal_value(__args_buffer, _lobby_metadata_struct);

    // param: _member_metadata_struct, type: AnyMap

    __ext_core_buffer_marshal_value(__args_buffer, _member_metadata_struct);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_create_or_join_lobby_with_metadata(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _guild_id
 * @param {Function} _callback
 */
function discord_social_client_get_guild_channels(_guild_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _guild_id, type: UInt64
    if (!is_numeric(_guild_id)) show_error($"{_GMFUNCTION_} :: _guild_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _guild_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_guild_channels(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _lobby_id
 * @returns {Struct.DiscordLobbyHandle} 
 */
function discord_social_client_get_lobby_handle(_lobby_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_lobby_handle(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    if (buffer_read(__ret_buffer, buffer_bool))
    {
        _result = __DiscordLobbyHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    else
    {
        _result = undefined;
    }
    return _result;
}

/**
 * @returns {Array[Real]} 
 */
function discord_social_client_get_lobby_ids()
{
    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_lobby_ids(buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    var _length = buffer_read(__ret_buffer, buffer_u32);
    _result = array_create(_length);
    for (var _i = 0; _i < _length; ++_i)
    {
        _result[_i] = buffer_read(__ret_buffer, buffer_u64);
    }
    return _result;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_get_user_guilds(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_user_guilds(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _lobby_id
 * @param {Function} _callback
 */
function discord_social_client_leave_lobby(_lobby_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_leave_lobby(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _lobby_id
 * @param {Real} _channel_id
 * @param {Function} _callback
 */
function discord_social_client_link_channel_to_lobby(_lobby_id, _channel_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_link_channel_to_lobby(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_lobby_created_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_lobby_created_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_lobby_deleted_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_lobby_deleted_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_lobby_member_added_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_lobby_member_added_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_lobby_member_removed_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_lobby_member_removed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_lobby_member_updated_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_lobby_member_updated_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_lobby_updated_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_lobby_updated_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _lobby_id
 * @param {Function} _callback
 */
function discord_social_client_unlink_channel_from_lobby(_lobby_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_unlink_channel_from_lobby(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _lobby_id
 * @param {Function} _provisional_user_merge_required_callback
 * @param {Function} _callback
 */
function discord_social_client_join_linked_lobby_guild(_lobby_id, _provisional_user_merge_required_callback, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _lobby_id, type: UInt64
    if (!is_numeric(_lobby_id)) show_error($"{_GMFUNCTION_} :: _lobby_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _lobby_id);

    // param: _provisional_user_merge_required_callback, type: Function
    if (!is_callable(_provisional_user_merge_required_callback)) show_error($"{_GMFUNCTION_} :: _provisional_user_merge_required_callback expected callable type", true);
    var _provisional_user_merge_required_callback_handle = __ext_core_function_register(_provisional_user_merge_required_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _provisional_user_merge_required_callback_handle);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_join_linked_lobby_guild(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Struct.DiscordActivityInvite} _activity_invite
 * @param {Function} _callback
 */
function discord_social_client_accept_activity_invite(_activity_invite, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _activity_invite, type: struct DiscordActivityInvite
    if (_activity_invite.__uid != 177687119) show_error($"{_GMFUNCTION_} :: _activity_invite expected DiscordActivityInvite", true);
    __DiscordActivityInvite_encode(_activity_invite, __args_buffer, buffer_tell(__args_buffer), _GMFUNCTION_);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_accept_activity_invite(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_clear_rich_presence (no wrapper is required)


/**
 * @param {Real} _application_id
 * @param {String} _command
 * @returns {Bool} 
 */
function discord_social_client_register_launch_command(_application_id, _command)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _command, type: String
    if (!is_string(_command)) show_error($"{_GMFUNCTION_} :: _command expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_command));
    buffer_write(__args_buffer, buffer_string, _command);

    var _return_value = __discord_social_client_register_launch_command(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _application_id
 * @param {Real} _steam_app_id
 * @returns {Bool} 
 */
function discord_social_client_register_launch_steam_application(_application_id, _steam_app_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _steam_app_id, type: UInt32
    if (!is_numeric(_steam_app_id)) show_error($"{_GMFUNCTION_} :: _steam_app_id expected number", true);
    buffer_write(__args_buffer, buffer_u32, _steam_app_id);

    var _return_value = __discord_social_client_register_launch_steam_application(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {String} _content
 * @param {Function} _callback
 */
function discord_social_client_send_activity_invite(_user_id, _content, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _content, type: String
    if (!is_string(_content)) show_error($"{_GMFUNCTION_} :: _content expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_content));
    buffer_write(__args_buffer, buffer_string, _content);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_activity_invite(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_send_activity_join_request(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_activity_join_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Struct.DiscordActivityInvite} _activity_invite
 * @param {Function} _callback
 */
function discord_social_client_send_activity_join_request_reply(_activity_invite, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _activity_invite, type: struct DiscordActivityInvite
    if (_activity_invite.__uid != 177687119) show_error($"{_GMFUNCTION_} :: _activity_invite expected DiscordActivityInvite", true);
    __DiscordActivityInvite_encode(_activity_invite, __args_buffer, buffer_tell(__args_buffer), _GMFUNCTION_);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_activity_join_request_reply(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_activity_invite_created_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_activity_invite_created_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_activity_invite_updated_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_activity_invite_updated_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_activity_join_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_activity_join_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_activity_join_with_application_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_activity_join_with_application_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Enum.DiscordClientStatus} _status
 * @param {Function} _callback
 */
function discord_social_client_set_online_status(_status, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _status, type: enum DiscordClientStatus

    if (!is_numeric(_status)) show_error($"{_GMFUNCTION_} :: _status expected number", true);
    buffer_write(__args_buffer, buffer_u64, _status);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_online_status(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Struct.DiscordActivity} _activity
 * @param {Function} _callback
 */
function discord_social_client_update_rich_presence(_activity, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _activity, type: struct DiscordActivity
    if (_activity.__uid != 2561031278) show_error($"{_GMFUNCTION_} :: _activity expected DiscordActivity", true);
    __DiscordActivity_encode(_activity, __args_buffer, buffer_tell(__args_buffer), _GMFUNCTION_);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_update_rich_presence(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_accept_discord_friend_request(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_accept_discord_friend_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_accept_game_friend_request(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_accept_game_friend_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_block_user(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_block_user(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_cancel_discord_friend_request(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_cancel_discord_friend_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_cancel_game_friend_request(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_cancel_game_friend_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @returns {Struct.DiscordRelationshipHandle} 
 */
function discord_social_client_get_relationship_handle(_user_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_relationship_handle(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = __DiscordRelationshipHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    return _result;
}

/**
 * @returns {Array[Struct.DiscordRelationshipHandle]} 
 */
function discord_social_client_get_relationships()
{
    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_relationships(buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    var _length = buffer_read(__ret_buffer, buffer_u32);
    _result = array_create(_length);
    for (var _i = 0; _i < _length; ++_i)
    {
        _result[_i] = __DiscordRelationshipHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    return _result;
}

/**
 * @param {Enum.DiscordRelationshipGroupType} _group_type
 * @returns {Array[Struct.DiscordRelationshipHandle]} 
 */
function discord_social_client_get_relationships_by_group(_group_type)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _group_type, type: enum DiscordRelationshipGroupType

    if (!is_numeric(_group_type)) show_error($"{_GMFUNCTION_} :: _group_type expected number", true);
    buffer_write(__args_buffer, buffer_u64, _group_type);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_relationships_by_group(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    var _length = buffer_read(__ret_buffer, buffer_u32);
    _result = array_create(_length);
    for (var _i = 0; _i < _length; ++_i)
    {
        _result[_i] = __DiscordRelationshipHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    return _result;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_reject_discord_friend_request(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_reject_discord_friend_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_reject_game_friend_request(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_reject_game_friend_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_remove_discord_and_game_friend(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_remove_discord_and_game_friend(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_remove_game_friend(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_remove_game_friend(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {String} _search_str
 * @returns {Array[Struct.DiscordUserHandle]} 
 */
function discord_social_client_search_friends_by_username(_search_str)
{
    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_search_friends_by_username(_search_str, buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    var _length = buffer_read(__ret_buffer, buffer_u32);
    _result = array_create(_length);
    for (var _i = 0; _i < _length; ++_i)
    {
        _result[_i] = __DiscordUserHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    return _result;
}

/**
 * @param {String} _username
 * @param {Function} _callback
 */
function discord_social_client_send_discord_friend_request(_username, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _username, type: String
    if (!is_string(_username)) show_error($"{_GMFUNCTION_} :: _username expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_username));
    buffer_write(__args_buffer, buffer_string, _username);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_discord_friend_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_send_discord_friend_request_by_id(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_discord_friend_request_by_id(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {String} _username
 * @param {Function} _callback
 */
function discord_social_client_send_game_friend_request(_username, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _username, type: String
    if (!is_string(_username)) show_error($"{_GMFUNCTION_} :: _username expected string", true);
    buffer_write(__args_buffer, buffer_u32, string_byte_length(_username));
    buffer_write(__args_buffer, buffer_string, _username);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_game_friend_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_send_game_friend_request_by_id(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_send_game_friend_request_by_id(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_relationship_created_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_relationship_created_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_relationship_deleted_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_relationship_deleted_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_relationship_groups_updated_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_relationship_groups_updated_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @param {Function} _callback
 */
function discord_social_client_unblock_user(_user_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_unblock_user(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @returns {Struct.DiscordUserHandle} 
 */
function discord_social_client_get_current_user()
{
    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_current_user(buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    if (buffer_read(__ret_buffer, buffer_bool))
    {
        _result = __DiscordUserHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    else
    {
        _result = undefined;
    }
    return _result;
}

/**
 * @param {Real} _application_id
 * @param {Function} _callback
 */
function discord_social_client_get_discord_client_connected_user(_application_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_get_discord_client_connected_user(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _user_id
 * @returns {Struct.DiscordUserHandle} 
 */
function discord_social_client_get_user(_user_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_user(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    if (buffer_read(__ret_buffer, buffer_bool))
    {
        _result = __DiscordUserHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    }
    else
    {
        _result = undefined;
    }
    return _result;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_set_user_updated_callback(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_set_user_updated_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Enum.DiscordClientError} _error
 * @returns {String} 
 */
function discord_social_client_error_to_string(_error)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _error, type: enum DiscordClientError

    if (!is_numeric(_error)) show_error($"{_GMFUNCTION_} :: _error expected number", true);
    buffer_write(__args_buffer, buffer_u64, _error);

    var _return_value = __discord_social_client_error_to_string(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_get_default_audio_device_id (no wrapper is required)


// Skipping function discord_social_client_get_default_communication_scopes (no wrapper is required)


// Skipping function discord_social_client_get_default_presence_scopes (no wrapper is required)


// Skipping function discord_social_client_get_version_hash (no wrapper is required)


// Skipping function discord_social_client_get_version_major (no wrapper is required)


// Skipping function discord_social_client_get_version_minor (no wrapper is required)


// Skipping function discord_social_client_get_version_patch (no wrapper is required)


/**
 * @returns {Real} 
 */
function discord_social_client_get_application_id()
{
    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_client_get_application_id(buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = buffer_read(__ret_buffer, buffer_u64);
    return _result;
}

/**
 * @param {Real} _application_id
 */
function discord_social_client_set_application_id(_application_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _application_id, type: UInt64
    if (!is_numeric(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _application_id);

    var _return_value = __discord_social_client_set_application_id(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_is_discord_app_installed(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_is_discord_app_installed(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Function} _callback
 */
function discord_social_client_open_connected_games_settings_in_discord(_callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_client_open_connected_games_settings_in_discord(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Enum.DiscordClientStatus} _status
 * @returns {String} 
 */
function discord_social_client_status_to_string(_status)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _status, type: enum DiscordClientStatus

    if (!is_numeric(_status)) show_error($"{_GMFUNCTION_} :: _status expected number", true);
    buffer_write(__args_buffer, buffer_u64, _status);

    var _return_value = __discord_social_client_status_to_string(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Enum.DiscordClientThread} _thread
 * @returns {String} 
 */
function discord_social_client_thread_to_string(_thread)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _thread, type: enum DiscordClientThread

    if (!is_numeric(_thread)) show_error($"{_GMFUNCTION_} :: _thread expected number", true);
    buffer_write(__args_buffer, buffer_u64, _thread);

    var _return_value = __discord_social_client_thread_to_string(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Real} _user_id
 * @returns {Bool} 
 */
function discord_social_call_get_local_mute(_channel_id, _user_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    var _return_value = __discord_social_call_get_local_mute(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Real} _user_id
 * @returns {Real} 
 */
function discord_social_call_get_participant_volume(_channel_id, _user_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    var _return_value = __discord_social_call_get_participant_volume(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @returns {Real} 
 */
function discord_social_call_get_ptt_release_delay(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var _return_value = __discord_social_call_get_ptt_release_delay(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @returns {Struct.DiscordVADThresholdSettings} 
 */
function discord_social_call_get_vad_threshold(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_call_get_vad_threshold(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = __DiscordVADThresholdSettings_decode(__ret_buffer, buffer_tell(__ret_buffer));
    return _result;
}

/**
 * @param {Real} _channel_id
 * @param {Real} _user_id
 * @returns {Struct.DiscordVoiceStateHandle} 
 */
function discord_social_call_get_voice_state_handle(_channel_id, _user_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    var __ret_buffer = __ext_core_get_ret_buffer();

    var _return_value = __discord_social_call_get_voice_state_handle(buffer_get_address(__args_buffer), buffer_tell(__args_buffer), buffer_get_address(__ret_buffer), buffer_get_size(__ret_buffer));

    var _result = undefined;
    _result = __DiscordVoiceStateHandle_decode(__ret_buffer, buffer_tell(__ret_buffer));
    return _result;
}

/**
 * @param {Real} _channel_id
 * @param {Enum.DiscordAudioModeType} _audio_mode
 * @returns {Bool} 
 */
function discord_social_call_set_audio_mode(_channel_id, _audio_mode)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _audio_mode, type: enum DiscordAudioModeType

    if (!is_numeric(_audio_mode)) show_error($"{_GMFUNCTION_} :: _audio_mode expected number", true);
    buffer_write(__args_buffer, buffer_u64, _audio_mode);

    var _return_value = __discord_social_call_set_audio_mode(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Real} _user_id
 * @param {Bool} _mute
 * @returns {Bool} 
 */
function discord_social_call_set_local_mute(_channel_id, _user_id, _mute)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _mute, type: Bool
    if (!is_bool(_mute)) show_error($"{_GMFUNCTION_} :: _mute expected bool", true);
    buffer_write(__args_buffer, buffer_bool, _mute);

    var _return_value = __discord_social_call_set_local_mute(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Function} _callback
 * @returns {Bool} 
 */
function discord_social_call_set_on_voice_state_changed_callback(_channel_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_call_set_on_voice_state_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Function} _callback
 * @returns {Bool} 
 */
function discord_social_call_set_participant_changed_callback(_channel_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_call_set_participant_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Real} _user_id
 * @param {Real} _vol
 * @returns {Bool} 
 */
function discord_social_call_set_participant_volume(_channel_id, _user_id, _vol)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _user_id, type: UInt64
    if (!is_numeric(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _user_id);

    // param: _vol, type: Float32
    if (!is_numeric(_vol)) show_error($"{_GMFUNCTION_} :: _vol expected number", true);
    buffer_write(__args_buffer, buffer_f32, _vol);

    var _return_value = __discord_social_call_set_participant_volume(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Bool} _active
 * @returns {Bool} 
 */
function discord_social_call_set_ptt_active(_channel_id, _active)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _active, type: Bool
    if (!is_bool(_active)) show_error($"{_GMFUNCTION_} :: _active expected bool", true);
    buffer_write(__args_buffer, buffer_bool, _active);

    var _return_value = __discord_social_call_set_ptt_active(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Real} _release_delay_ms
 * @returns {Bool} 
 */
function discord_social_call_set_ptt_release_delay(_channel_id, _release_delay_ms)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _release_delay_ms, type: UInt32
    if (!is_numeric(_release_delay_ms)) show_error($"{_GMFUNCTION_} :: _release_delay_ms expected number", true);
    buffer_write(__args_buffer, buffer_u32, _release_delay_ms);

    var _return_value = __discord_social_call_set_ptt_release_delay(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Bool} _deaf
 * @returns {Bool} 
 */
function discord_social_call_set_self_deaf(_channel_id, _deaf)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _deaf, type: Bool
    if (!is_bool(_deaf)) show_error($"{_GMFUNCTION_} :: _deaf expected bool", true);
    buffer_write(__args_buffer, buffer_bool, _deaf);

    var _return_value = __discord_social_call_set_self_deaf(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Bool} _mute
 * @returns {Bool} 
 */
function discord_social_call_set_self_mute(_channel_id, _mute)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _mute, type: Bool
    if (!is_bool(_mute)) show_error($"{_GMFUNCTION_} :: _mute expected bool", true);
    buffer_write(__args_buffer, buffer_bool, _mute);

    var _return_value = __discord_social_call_set_self_mute(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Function} _callback
 * @returns {Bool} 
 */
function discord_social_call_set_speaking_status_changed_callback(_channel_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_call_set_speaking_status_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Function} _callback
 * @returns {Bool} 
 */
function discord_social_call_set_status_changed_callback(_channel_id, _callback)
{
    static __dispatcher = __GMDiscordSocial_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __discord_social_call_set_status_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 * @param {Bool} _automatic
 * @param {Real} _threshold
 * @returns {Bool} 
 */
function discord_social_call_set_vad_threshold(_channel_id, _automatic, _threshold)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    // param: _automatic, type: Bool
    if (!is_bool(_automatic)) show_error($"{_GMFUNCTION_} :: _automatic expected bool", true);
    buffer_write(__args_buffer, buffer_bool, _automatic);

    // param: _threshold, type: Float32
    if (!is_numeric(_threshold)) show_error($"{_GMFUNCTION_} :: _threshold expected number", true);
    buffer_write(__args_buffer, buffer_f32, _threshold);

    var _return_value = __discord_social_call_set_vad_threshold(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function discord_social_client_remove_device_change_callback (no wrapper is required)


// Skipping function discord_social_client_remove_no_audio_input_callback (no wrapper is required)


// Skipping function discord_social_client_remove_voice_participant_changed_callback (no wrapper is required)


// Skipping function discord_social_client_remove_authorize_device_screen_closed_callback (no wrapper is required)


// Skipping function discord_social_client_remove_token_expiration_callback (no wrapper is required)


// Skipping function discord_social_client_remove_message_created_callback (no wrapper is required)


// Skipping function discord_social_client_remove_message_deleted_callback (no wrapper is required)


// Skipping function discord_social_client_remove_message_updated_callback (no wrapper is required)


// Skipping function discord_social_client_remove_log_callback (no wrapper is required)


// Skipping function discord_social_client_remove_status_changed_callback (no wrapper is required)


// Skipping function discord_social_client_remove_lobby_created_callback (no wrapper is required)


// Skipping function discord_social_client_remove_lobby_deleted_callback (no wrapper is required)


// Skipping function discord_social_client_remove_lobby_member_added_callback (no wrapper is required)


// Skipping function discord_social_client_remove_lobby_member_removed_callback (no wrapper is required)


// Skipping function discord_social_client_remove_lobby_member_updated_callback (no wrapper is required)


// Skipping function discord_social_client_remove_lobby_updated_callback (no wrapper is required)


// Skipping function discord_social_client_remove_activity_invite_created_callback (no wrapper is required)


// Skipping function discord_social_client_remove_activity_invite_updated_callback (no wrapper is required)


// Skipping function discord_social_client_remove_activity_join_callback (no wrapper is required)


// Skipping function discord_social_client_remove_activity_join_with_application_callback (no wrapper is required)


// Skipping function discord_social_client_remove_authorize_request_callback (no wrapper is required)


// Skipping function discord_social_client_remove_relationship_created_callback (no wrapper is required)


// Skipping function discord_social_client_remove_relationship_deleted_callback (no wrapper is required)


// Skipping function discord_social_client_remove_relationship_groups_updated_callback (no wrapper is required)


// Skipping function discord_social_client_remove_user_updated_callback (no wrapper is required)


/**
 * @param {Real} _channel_id
 */
function discord_social_call_remove_on_voice_state_changed_callback(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var _return_value = __discord_social_call_remove_on_voice_state_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 */
function discord_social_call_remove_participant_changed_callback(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var _return_value = __discord_social_call_remove_participant_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 */
function discord_social_call_remove_speaking_status_changed_callback(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var _return_value = __discord_social_call_remove_speaking_status_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/**
 * @param {Real} _channel_id
 */
function discord_social_call_remove_status_changed_callback(_channel_id)
{
    var __args_buffer = __ext_core_get_args_buffer();

    // param: _channel_id, type: UInt64
    if (!is_numeric(_channel_id)) show_error($"{_GMFUNCTION_} :: _channel_id expected number", true);
    buffer_write(__args_buffer, buffer_u64, _channel_id);

    var _return_value = __discord_social_call_remove_status_changed_callback(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

/// @ignore
function __GMDiscordSocial_get_decoders()
{
    static __decoders = [
        __DiscordActivityInvite_decode,
        __DiscordAudioDevice_decode,
        __DiscordRelationshipSnapshot_decode,
        __DiscordGuildMinimal_decode,
        __DiscordLinkedLobby_decode,
        __DiscordClientResult_decode,
        __DiscordChannelHandle_decode,
        __DiscordAdditionalContent_decode,
        __DiscordLinkedChannel_decode,
        __DiscordVoiceStateHandle_decode,
        __DiscordActivityParty_decode,
        __DiscordActivitySecrets_decode,
        __DiscordActivityAssets_decode,
        __DiscordActivityButton_decode,
        __DiscordActivityTimestamps_decode,
        __DiscordUserApplicationProfileHandle_decode,
        __DiscordUserMessageSummary_decode,
        __DiscordVADThresholdSettings_decode,
        __DiscordAuthorizationArgs_decode,
        __DiscordClientCreateOptions_decode,
        __DiscordGuildChannel_decode,
        __DiscordCallVoiceStateEntry_decode,
        __DiscordActivity_decode,
        __DiscordCall_decode,
        __DiscordCallInfoHandle_decode,
        __DiscordUserHandle_decode,
        __DiscordRelationshipHandle_decode,
        __DiscordLobbyMemberHandle_decode,
        __DiscordLobbyHandle_decode,
        __DiscordMessageHandle_decode
    ];
    return __decoders;
}
/// @ignore
function __GMDiscordSocial_get_dispatcher()
{
    static __dispatcher = new __GMNativeFunctionDispatcher(__GMDiscordSocial_invocation_handler, __GMDiscordSocial_get_decoders());
    return __dispatcher;
}
