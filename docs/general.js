// Modules

/**
 * @module general
 * @title General
 * @desc **Discord Class**: N / A
 * 
 * This is the General module.
 * 
 * @section_func
 * @desc These are the functions in the General module:
 * @ref discord_social_init
 * @ref discord_social_shutdown
 * @ref discord_social_run_callbacks
 * @section_end
 * 
 * @section_struct Structs
 * @desc These are the structs used by the Discord Social extension:
 * @ref DiscordActivityInvite
 * @ref DiscordAudioDevice
 * @ref DiscordGuildMinimal
 * @ref DiscordLinkedLobby
 * @ref DiscordClientResult
 * @ref DiscordUserHandle
 * @ref DiscordUserApplicationProfileHandle
 * @ref DiscordChannelHandle
 * @ref DiscordAdditionalContent
 * @ref DiscordLinkedChannel
 * @ref DiscordCallInfoHandle
 * @ref DiscordVoiceStateHandle
 * @ref DiscordActivityParty
 * @ref DiscordActivitySecrets
 * @ref DiscordActivityAssets
 * @ref DiscordActivityTimestamps
 * @ref DiscordActivityButton
 * @ref DiscordGuildChannel
 * @ref DiscordRelationshipHandle
 * @ref DiscordRelationshipSnapshot
 * @ref DiscordLobbyMemberHandle
 * @ref DiscordCall
 * @ref DiscordCallVoiceStateEntry
 * @ref DiscordActivity
 * @ref DiscordLobbyHandle
 * @ref DiscordMessageHandle
 * @ref DiscordUserMessageSummary
 * @ref DiscordVADThresholdSettings
 * @ref DiscordClientCreateOptions
 * @ref DiscordAuthorizationArgs
 * @section_end
 * 
 * @section_const Constants
 * @desc These are the constants used by the Discord Social extension:
 * @ref DiscordCallError
 * @ref DiscordCallStatus
 * @ref DiscordAvatarType
 * @ref DiscordAdditionalContentType
 * @ref DiscordErrorType
 * @ref DiscordChannelType
 * @ref DiscordActivityGamePlatforms
 * @ref DiscordAuthenticationExternalAuthType
 * @ref DiscordStatusType
 * @ref DiscordStatusDisplayTypes
 * @ref DiscordActivityTypes
 * @ref DiscordRelationshipType
 * @ref DiscordRelationshipGroupType
 * @ref DiscordDisclosureTypes
 * @ref DiscordActivityPartyPrivacy
 * @ref DiscordClientThread
 * @ref DiscordClientStatus
 * @ref ActivityActionTypes
 * @ref DiscordLoggingSeverity
 * @ref DiscordClientError
 * @ref DiscordAuthorizationTokenType
 * @ref DiscordAudioModeType
 * @ref DiscordAudioSystem
 * @section_end
 * 
 * @module_end
 */

// Functions

/**
 * @function discord_social_run_callbacks
 * @desc **Discord Function**: [discordpp::RunCallbacks()](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#ab5dd8cf274f581ee1885de5816be3c29)
 * 
 * This function runs pending callbacks from the Discord SDK.
 * 
 * You should call this function periodically to process callbacks, e.g. once per frame.
 * 
 * @function_end
 */

/**
 * @function discord_social_init
 * @desc **Discord Function**: N / A
 * 
 * This function initialises the Discord Social extension.
 * 
 * @param {Struct.DiscordClientCreateOptions} [options] The options to pass to the Discord client instance being created.
 * 
 * @function_end
 */

/**
 * @function discord_social_shutdown
 * @desc **Discord Function**: N / A
 * 
 * This function shuts down the Discord Social extension.
 * 
 * @function_end
 */

// Structs

/**
 * @struct DiscordActivityInvite
 * @desc **Discord Class**: [discordpp::ActivityInvite](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ActivityInvite.html)
 * 
 * When one user invites another to join their game on Discord, it will send a message to that user. The SDK will parse those messages for you automatically, and this struct contains all of the relevant invite information which is needed to later accept that invite.
 * 
 * @member {Enum.ActivityActionTypes} type The type of invite that was sent.
 * @member {Real} sender_id The user ID of the user who sent the invite.
 * @member {Real} application_id The target application of the invite.
 * @member {Real} parent_application_id The application ID of the parent - this is only applicable if there is a parent for a publisher's suite of applications.
 * @member {Real} channel_id The ID of the Discord channel in which the invite was sent.
 * @member {Real} message_id The ID of the Discord message that contains the invite.
 * @member {Bool} is_valid Whether or not this invite is currently joinable. An invite becomes invalid if it was sent more than 6 hours ago or if the sender is no longer playing the game the invite is for.
 * @member {String} party_id The ID of the party the invite was sent for.
 * @member {String} session_id The session ID of the user who sent the invite.
 * @struct_end
 */

/**
 * @struct DiscordAudioDevice
 * @desc **Discord Class**: [discordpp::AudioDevice](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1AudioDevice.html)
 * 
 * This struct represents a single input or output audio device available to the user.
 * 
 * @member {String} id The ID of the audio device.
 * @member {String} name The display name of the audio device.
 * @member {Bool} is_default Whether the audio device is the system default device.
 * @struct_end
 */

/**
 * @struct DiscordGuildMinimal
 * @desc **Discord Class**: [discordpp::GuildMinimal](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1GuildMinimal.html)
 * 
 * This struct represents a guild (also known as a Discord server), that the current user is a member of, that contains channels that can be linked to a lobby.
 * 
 * @member {Real} id The ID of the guild.
 * @member {String} name The name of the guild.
 * @struct_end
 */

/**
 * @struct DiscordLinkedLobby
 * @desc **Discord Struct**: [discordpp::LinkedLobby](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1LinkedLobby.html)
 * 
 * This struct stores information about the lobby linked to a channel.
 * 
 * @member {Real} application_id The ID of the application that owns the lobby.
 * @member {Real} lobby_id The ID of the lobby.
 * @struct_end
 */

/**
 * @struct DiscordClientResult
 * @desc **Discord Struct**: [discordpp::ClientResult](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ClientResult.html)
 * 
 * This struct stores information about the result of an SDK function call.
 * 
 * @member {String} error A description of the error that occurred.
 * @member {Real} error_code A more detailed error code for this failure. Currently the only use of this is when an API request is made to Discord's backend and that fails with a specific error, that error will be included in this field.
 * @member {Bool} successful Equivalent to `type == DiscordErrorType.None`.
 * @member {Bool} retryable Indicates if, although an API request failed, it is safe and recommended to retry it.
 * @member {String} response_body The full HTTP response body, which will usually be a JSON string.
 * @member {Real} status The HTTP status code of the API call.
 * @member {Constant.DiscordErrorType} type The type of error that occurred. See ${constant.DiscordErrorType} for more information.
 * @member {Real} retry_after When a user is being rate limited by Discord (and so `status == 429`), this field should be set and is the number of seconds to wait before trying again.
 * @struct_end
 */

/**
 * @struct DiscordUserHandle
 * @desc **Discord Struct**: [discordpp::UserHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1UserHandle.html)
 * 
 * This struct represents a single user on Discord that the SDK knows about and contains basic account information for them such as ID, name, and avatar, as well as their "status" information which includes both whether they are online/offline/etc as well as whether they are playing this game.
 * 
 * @member {Real} id The ID of this user.
 * @member {String} username The globally unique username of this user.
 * @member {String} display_name The user's preferred name, if one is set, otherwise their unique username.
 * @member {String} [avatar] The hash of the user's Discord profile avatar, if one is set.
 * @member {Enum.DiscordAvatarType} avatar_type The desired type of avatar URL to generate for a User.
 * @member {String} avatar_type_string The avatar type as a string.
 * @member {String} avatar_url A CDN URL to the user's Discord profile avatar.
 * @member {String} [global_name] The preferred display name of this user, if one is set.
 * @member {Bool} is_provisional `true` if this user is a provisional account, `false` otherwise.
 * @member {Enum.DiscordStatusType} status The user's online/offline/idle status.
 * @member {Struct.DiscordActivity} [game_activity] Holds the user's rich presence activity that is associated with the current game, if one is set.
 * @member {struct.DiscordRelationshipSnapshot} relationship Holds a reference to the RelationshipHandle between the currently authenticated user and this user, if any.
 * @member {Array[Struct.DiscordUserApplicationProfileHandle]} user_application_profiles Holds a list of UserApplicationProfileHandles for this user. Currently, a user can only have a single profile per application, so this list will always contain at most one UserApplicationProfileHandle.
 * @struct_end
 */

/**
 * @struct DiscordChannelHandle
 * @desc **Discord Class**: [discordpp::ChannelHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ChannelHandle.html)
 * 
 * All messages sent on Discord are done so in a Channel. `DiscordMessageHandle.channel_id` will contain the ID of the channel a message was sent in, and ${function.discord_social_client_get_channel_handle} will return an instance of this class.
 * 
 * @member {Real} channel_id The ID of the channel.
 * @member {String} name The name of the channel.
 * @member {Real} type The type of the channel.
 * @member {Array[Real]} recipients For DMs and GroupDMs, the user IDs of the members of the channel. For all other channels an empty array.
 * @struct_end
 */

/**
 * @struct DiscordAdditionalContent
 * @desc **Discord Class**: [discordpp::AdditionalContent](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1AdditionalContent.html)
 * 
 * This struct contains information about non-text content in a message that likely cannot be rendered in game such as images, videos, embeds, polls, and more.
 * 
 * @member {Enum.DiscordAdditionalContentType} type Represents the type of additional content in the message.
 * @member {String} title When the additional content is a poll or thread, this field will contain the name of the poll or thread.
 * @member {Real} count Represents the number of pieces of additional content so you could for example render "2 additional images".
 * @struct_end 
 */

/**
 * @struct DiscordLinkedChannel
 * @desc **Discord Class**: [discordpp::LinkedChannel](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1LinkedChannel.html)
 * 
 * This struct stores information about the channel that a lobby is linked to.
 * 
 * @member {Real} id The ID of the linked channel.
 * @member {Real} guild_id The ID of the guild (aka server) that owns the linked channel.
 * @member {String} name The name of the linked channel.
 * @struct_end
 */

/**
 * @struct DiscordCallInfoHandle
 * @desc **Discord Class**: [discordpp::CallInfoHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1CallInfoHandle.html)
 * 
 * This is a convenience struct that represents the state of a single Discord call in a lobby.
 * 
 * @member {Real} channel_id The lobby ID of the call.
 * @member {Real} guild_id The lobby ID of the call.
 * @member {Array[Real]} participants An array holding the user IDs of the participants in the call.
 * @member {Array[Struct.DiscordCallVoiceStateEntry]} voice_state_handles An array holding the voice states of all users so you can know if they have muted or deafened themselves.
 * @struct_end
 */

/**
 * @struct DiscordVoiceStateHandle
 * @desc **Discord Class**: [discordpp::VoiceStateHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1VoiceStateHandle.html)
 * 
 * This struct represents the state of a single participant in a Discord voice call.
 * 
 * @member {Bool} self_deaf Returns `true` if the given user has deafened themselves so that no one else in the call can hear them and so that they do not hear anyone else in the call either.
 * @member {Bool} self_mute Returns `true` if the given user has muted themselves so that no one else in the call can hear them.
 * @struct_end
 */

/**
 * @struct DiscordActivityParty
 * @desc **Discord Class**: [discordpp::ActivityParty](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ActivityParty.html)
 * 
 * This struct represents an activity party.
 * 
 * @member {String} activity_party_id Specifies the ID of the party. "Party" is used colloquially to refer to a group of players in a shared context. This could be a lobby ID, server ID, team ID, etc.
 * @member {Real} current_size The number of people currently in the party, must be at least 1.
 * @member {Real} max_size The maximum number of people that can be in the party, must be at least 0. When 0, the UI will not display a maximum.
 * @member {Enum.DiscordActivityPartyPrivacy} privacy The privacy of the party.
 * @struct_end
 */

/**
 * @struct DiscordActivitySecrets
 * @desc **Discord Class**: [discordpp::ActivitySecrets](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ActivitySecrets.html)
 * 
 * This struct represents an activity secret.
 * 
 * @member {String} join A secret string that is shared with users who are accepted into the party so the game knows how to join the user to the party. For example you might specify an internal game server ID or a Discord lobby ID or secret. If specified, must be a string between 2 and 128 characters.
 * @struct_end
 */

/**
 * @struct DiscordActivityAssets
 * @desc **Discord Class**: [discordpp::ActivityAssets](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ActivityAssets.html)
 * 
 * This struct controls what your rich presence looks like in the Discord client. If you don't specify any values, the icon and name of your application will be used as defaults.
 * 
 * @member {String} [large_image] The primary image identifier or URL, rendered as a large square icon on a user's rich presence.
 * @member {String} [large_text] A tooltip string that is shown when the user hovers over the large image.
 * @member {String} [large_url] A URL that opens when the user clicks/taps the large image.
 * @member {String} [small_image] The secondary image, rendered as a small circle over the `large_image`.
 * @member {String} [small_text] A tooltip string that is shown when the user hovers over the small image.
 * @member {String} [small_url] A URL that opens when the user clicks/taps the small image.
 * @member {String} [invite_cover_image] The invite cover image identifier or URL, rendered as a banner image on activity invites.
 * @struct_end 
 */

/**
 * @struct DiscordActivityButton
 * @desc **Discord Class**: [discordpp::ActivityButton](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ActivityButton.html)
 * 
 * This struct represents a button added to an activity.
 * 
 * @member {String} label The label of the button.
 * @member {String} url The URL of the button.
 * @struct_end 
 */

/**
 * @struct DiscordActivityTimestamps
 * @desc **Discord Class**: [discordpp::ActivityTimestamps](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ActivityTimestamps.html)
 * 
 * This struct holds timestamps that represent the start and end time of an activity.
 * 
 * @member {Real} [start] The start timestamp.
 * @member {Real} [end] The end timestamp.
 * @struct_end 
 */

/**
 * @struct DiscordUserApplicationProfileHandle
 * @desc **Discord Class**: [discordpp::UserApplicationProfileHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1UserApplicationProfileHandle.html)
 * 
 * This struct represents a profile from an external identity provider, such as Steam or Epic Online Services.
 * 
 * @member {String} avatar_hash The user's in-game avatar hash.
 * @member {String} metadata Any metadata set by the developer.
 * @member {String} [provider_id] The user's external identity provider ID if it exists.
 * @member {String} provider_issued_user_id The user's external identity provider issued user ID.
 * @member {Real} provider_type The type of the external identity provider.
 * @member {String} username The user's in-game username.
 * @struct_end 
 */

/**
 * @struct DiscordUserMessageSummary
 * @desc **Discord Class**: [discordpp::UserMessageSummary](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1UserMessageSummary.html)
 * 
 * This struct represents a summary of a DM conversation with a user.
 * 
 * @member {Real} user_id The ID of the other user in the DM conversation.
 * @member {Real} last_message_id The ID of the last message sent in the DM conversation.
 * @struct_end 
 */

/**
 * @struct DiscordVADThresholdSettings
 * @desc **Discord Class**: [discordpp::VADThresholdSettings](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1VADThresholdSettings.html)
 * 
 * This struct holds settings for the void auto detection threshold for picking up activity from a user's mic.
 * 
 * @member {Bool} automatic Whether or not Discord is currently automatically setting and detecting the appropriate threshold to use.
 * @member {Real} vad_threshold The current void auto detection threshold value, has a range of -100, 0 and defaults to -60.
 * @struct_end 
 */

/**
 * @struct DiscordAuthorizationArgs
 * @desc **Discord Class**: [discordpp::AuthorizationArgs](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1AuthorizationArgs.html)
 * 
 * This struct holds arguments to the ${function.discord_social_client_authorize} function.
 * 
 * @member {Real} [client_id] The Discord application ID for your game.
 * @member {String} [scopes] A space separated string of the OAuth scopes your game is requesting.
 * @member {String} [state] See https://discord.com/developers/docs/topics/oauth2#state-and-security for details on this field.
 * @member {String} [nonce] The nonce field is generally only useful for backend integrations using ID tokens.
 * @member {Bool} [use_code_challenge] Whether to use a code challenge.
 * @struct_end 
 */

/**
 * @struct DiscordClientCreateOptions
 * @desc **Discord Struct**: [discordpp::ClientCreateOptions](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1ClientCreateOptions.html)
 * 
 * This struct defines the options to use when creating the Discord client.
 * 
 * @member {String} web_base The base URL for the Discord web application.
 * @member {String} api_base The base URL for the Discord API.
 * @member {Enum.DiscordAudioSystem} experimental_audio_system The audio system to use. Defaults to `DiscordAudioSystem.Standard`.
 * @member {Bool} experimental_android_prevent_comms_for_bluetooth Whether to prevent communications mode on Android when Bluetooth is connected.
 * @member {Real} [cpu_affinity_mask] CPU affinity mask hint for certain platforms. Depending on platform support, may or may not be ignored.
 * 
 * @struct_end
 */

/**
 * @struct DiscordGuildChannel
 * @desc **Discord Class**: [discordpp::GuildChannel](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1GuildChannel.html)
 * 
 * This struct represents a channel in a guild that the current user is a member of and may be able to be linked to a lobby.
 * 
 * @member {Real} id The ID of the channel.
 * @member {Bool} is_linkable Whether the current user is able to link this channel to a lobby.
 * @member {Bool} is_fully_public Whether the channel is "fully public" which means every member of the guild is able to view and send messages in that channel.
 * @member {Bool} is_viewable_and_writeable_by_all_members Whether the channel is "fully public" which means every member of the guild is able to view and send messages in that channel.
 * @member {Struct.DiscordLinkedLobby} [linked_lobby] Information about the currently linked lobby, if any. Currently Discord enforces that a channel can only be linked to a single lobby.
 * @member {String} name The name of the channel.
 * @member {Real} [parent_id] The ID of the parent category channel, if any.
 * @member {Real} position The position of the channel in the guild's channel list.
 * @member {Enum.DiscordChannelType} type The type of the channel.
 * @struct_end
 */

/**
 * @struct DiscordCallVoiceStateEntry
 * @desc **Discord Class**: N / A
 * 
 * This struct holds a mapping between a user ID and the corresponding voice state handle.
 * 
 * @member {Real} user_id The user ID.
 * @member {Struct.DiscordVoiceStateHandle} voice_state_handle The voice state handle.
 * @struct_end 
 */

/**
 * @struct DiscordRelationshipHandle 
 * @desc **Discord Class**: [discordpp::RelationshipHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1RelationshipHandle.html)
 * 
 * A RelationshipHandle represents the relationship between the current user and a target user on Discord. Relationships include friends, blocked users, and friend invites.
 * 
 * @member {Real} id The ID of the target user in this relationship.
 * @member {Enum.DiscordRelationshipType} discord_relationship_type The type of the Discord relationship.
 * @member {Enum.DiscordRelationshipType} game_relationship_type The type of the Game relationship.
 * @member {Bool} is_spam_request Whether this relationship is a spam request.
 * @member {Struct.DiscordUserHandle} [user] A handle to the target user in this relationship, if one is available.
 * @struct_end
 */

/**
 * @struct DiscordRelationshipSnapshot
 * @desc **Discord Class**: N / A
 * 
 * A RelationshipHandle represents the relationship between the current user and a target user on Discord. Relationships include friends, blocked users, and friend invites.
 * 
 * @member {Real} id The ID of the target user in this relationship.
 * @member {Enum.DiscordRelationshipType} discord_relationship_type The type of the Discord relationship.
 * @member {Enum.DiscordRelationshipType} game_relationship_type The type of the Game relationship.
 * @member {Bool} is_spam_request Whether this relationship is a spam request.
 * @struct_end 
 */

/**
 * @struct DiscordLobbyMemberHandle
 * @desc **Discord Class**: [discordpp::LobbyMemberHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1LobbyMemberHandle.html)
 * 
 * This struct represents the state of a single user in a Lobby.
 * 
 * @member {Real} id The user ID of the lobby member.
 * @member {Bool} can_link_lobby `true` if the user is allowed to link a channel to this lobby, `false` otherwise. This flag can only be set via the server API.
 * @member {Bool} connected `true` if the user is currently connected to the lobby, `false` otherwise.
 * @member {Struct.DiscordUserHandle} [user] The UserHandle of the lobby member.
 * @member {Struct} metadata Metadata is a set of string key/value pairs that the game developer can use.
 * @struct_end
 */

/**
 * @struct DiscordCall
 * @desc **Discord Class**: [discordpp::Call](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html)
 * 
 * This struct holds information on an active voice session in a Lobby.
 * 
 * @member {Enum.DiscordAudioModeType} audio_mode Whether the call is configured to use voice auto detection or push to talk for the current user.
 * @member {Real} channel_id The ID of the lobby with which this call is associated.
 * @member {Real} guild_id The ID of the lobby with which this call is associated.
 * @member {Array[Real]} participants Holds a list of all of the user IDs of the participants in the call.
 * @member {Bool} ptt_active Whether push to talk is currently active, meaning the user is currently pressing their configured push to talk key.
 * @member {Real} ptt_release_delay Holds the time that PTT is active after the user releases the PTT key and `ptt_active` is set to `false`.
 * @member {Bool} self_deaf Whether the current user is deafened.
 * @member {Bool} self_mute Whether the current user's microphone is muted.
 * @member {Struct.DiscordVADThresholdSettings} vad_threshold Holds the current configuration for void auto detection thresholds. See the description of the struct for specifics.
 * @member {Constant.DiscordCallStatus} status The current call status.
 * @struct_end
 */

/**
 * @struct DiscordActivity
 * @desc **Discord Class**: [discordpp::Activity](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Activity.html)
 * 
 * This struct represents one "thing" a user is doing on Discord and is part of their rich presence.
 * 
 * Additional information is located on the Discord Developer Portal:
 * 
 * * https://discord.com/developers/docs/rich-presence/overview
 * * https://discord.com/developers/docs/developer-tools/game-sdk#activities
 * * https://discord.com/developers/docs/rich-presence/best-practices
 * 
 * @member {Enum.DiscordActivityTypes} type The type of activity this is.
 * @member {String} [details] The state *of the what the user is doing* for this activity.
 * @member {String} [state] The state of *the party* for this activity.
 * @member {String} name The name of the game or application that the activity is associated with.
 * @member {Enum.DiscordStatusDisplayTypes} [status_display_type] Controls which field is used for the user's status message.
 * @member {String} [state_url] A URL that opens when the user clicks/taps the state text.
 * @member {String} [details_url] A URL that opens when the user clicks/taps the details text.
 * @member {Real} [application_id] The application ID of the game that the activity is associated with.
 * @member {Real} [parent_application_id] The application ID of the parent application that the activity is associated with if it exists. This is to help identify a collection of games that are from the same publisher.
 * @member {Struct.DiscordActivityAssets} [assets] Images used to customize how the Activity is displayed in the Discord client.
 * @member {Struct.DiscordActivityTimestamps} [timestamps] The timestamps struct can be used to render either:
 * @member {Enum.DiscordActivityGamePlatforms} [supported_platforms] If an activity is joinable, but only on certain platforms, this field can be used to indicate which platforms the activity is joinable on. For example if a game is available on both PC and Mobile, but PC users cannot join Mobile users and vice versa, this field can be used so that an activity only shows as joinable on Discord if the user is on the appropriate platform.
 * @member {Struct.DiscordActivityParty} [party] The party struct is used to indicate the size and members of the people the current user is playing with.
 * @member {Struct.DiscordActivitySecrets} [secrets] The secrets struct is used in combination with the party struct to make an Activity joinable.
 * @member {Array[Struct.DiscordActivityButton]} buttons The custom buttons for the rich presence.
 * @struct_end
 */

/**
 * @struct DiscordLobbyHandle
 * @desc **Discord Class**: [discordpp::LobbyHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1LobbyHandle.html)
 * 
 * This struct represents a single lobby in the SDK. A lobby can be thought of as just an arbitrary, developer-controlled group of users that can communicate with each other.
 * 
 * @member {Real} id The ID of the lobby.
 * @member {Array[Real]} lobby_member_ids An array of the user IDs that are members of this lobby.
 * @member {Array[Struct.DiscordLobbyMemberHandle]} lobby_members An array holding the LobbyMemberHandle objects for each member of this lobby.
 * @member {Struct.DiscordCallInfoHandle} [call_info_handle] A reference to the CallInfoHandle if there is an active voice call in this lobby.
 * @member {Struct.DiscordLinkedChannel} [linked_channel] Information about the channel linked to this lobby, if any.
 * @member {Struct} metadata Any developer supplied metadata for this lobby.
 * @struct_end
 */

/**
 * @struct DiscordMessageHandle
 * @desc **Discord Class**: [discordpp::MessageHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1MessageHandle.html)
 * 
 * A MessageHandle represents a single message received by the SDK.
 * 
 * @member {Real} id The ID of this message.
 * @member {Struct.DiscordUserHandle} [author] The UserHandle for the author of this message.
 * @member {Real} author_id The user ID of the user who sent this message.
 * @member {Struct.DiscordChannelHandle} [channel] The ChannelHandle for the channel this message was sent in.
 * @member {Real} channel_id The channel ID this message was sent in.
 * @member {Enum.DiscordDisclosureTypes} [disclosure_type] If this is an auto-generated message that is explaining some integration behavior to users, this will hold the type of disclosure so you can customize it.
 * @member {Struct.DiscordLobbyHandle} [lobby] The LobbyHandle this message was sent in, if it was sent in a lobby.
 * @member {String} content The content of this message, if any.
 * @member {Real} edited_timestamp The timestamp in millis since the epoch when the message was most recently edited.
 * @member {Struct} metadata Any metadata the developer included with this message.
 * @member {Struct} moderation_metadata Any moderation metadata the developer set on this message.
 * @member {Real} [application_id] The application ID associated with this message, if any. You can use this to identify if the message was sent from another child application in your catalog.
 * @member {Struct.DiscordAdditionalContent} [additional_content] If the message contains non-text content, such as images, videos, embeds, polls, etc., this will hold information about that content.
 * @member {String} raw_content The content of this message, if any, but without replacing any markup from emojis and mentions.
 * @member {Struct.DiscordUserHandle} recipient The UserHandle for the other participant in a DM, if this message was sent in a DM.
 * @member {Real} recipient_id When this message was sent in a DM or Ephemeral DM, this will hold the ID of the other user in that DM.
 * @member {Bool} sent_from_game Holds `true` if this message was sent in-game, otherwise `false` (i.e. from Discord itself). If you are using parent / child applications, this will be `true` if the message was sent from any child application.
 * @member {Real} sent_timestamp The timestamp in millis since the epoch when the message was sent.
 * @struct_end
 */

// Constants

/**
 * @const DiscordCallError
 * @desc **Discord Enum**: [discordpp::Call::Error](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#a92b477828e777e1cab576821a170dff0)
 * 
 * This enum represents any network errors with the Call.
 * 
 * @member None None.
 * @member SignalingConnectionFailed SignalingConnectionFailed.
 * @member SignalingUnexpectedClose SignalingUnexpectedClose.
 * @member VoiceConnectionFailed VoiceConnectionFailed.
 * @member JoinTimeout JoinTimeout.
 * @member Forbidden Forbidden.
 * @const_end 
 */

/**
 * @const DiscordCallStatus
 * @desc **Discord Enum**: [discordpp::Call::Status](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#a9a8311653be2263ad61243749ff44d4e)
 * 
 * This enum respresents the state of the Call's network connection.
 * 
 * @member Disconnected Disconnected.
 * @member Joining Joining.
 * @member Connecting Connecting.
 * @member SignalingConnected SignalingConnected.
 * @member Connected Connected.
 * @member Reconnecting Reconnecting.
 * @member Disconnecting Disconnecting.
 * @const_end 
 */

/**
 * @const DiscordAvatarType
 * @desc **Discord Enum**: [discordpp::UserHandle::AvatarType](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1UserHandle.html#a9cbf5933bc6181eb1900574f6eda9b18)
 * 
 * This enum represents the desired type of avatar URL to generate for a User.
 * 
 * @member Gif Gif.
 * @member Webp Webp.
 * @member Png Png.
 * @member Jpeg Jpeg.
 * @const_end 
 */

/**
 * @enum DiscordAdditionalContentType
 * @desc **Discord Enum**: [discordpp::AdditionalContentType](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#aee4b786af6ac9cd4ade73eb2f873177b)
 * 
 * This enum represents the type of additional content contained in a message.
 * 
 * @member Other Other.
 * @member Attachment Attachment.
 * @member Poll Poll.
 * @member VoiceMessage VoiceMessage.
 * @member Thread Thread.
 * @member Embed Embed.
 * @member Sticker Sticker.
 * @enum_end 
 */

/**
 * @const DiscordErrorType
 * @desc **Discord Enum**: [discordpp::ErrorType](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#ae19a5aed498bc40359e4d89d14ffb446)
 * 
 * This enum represents the various types of errors the SDK returns.
 * 
 * @member None No error, the operation was successful.
 * @member NetworkError The user is offline or there was some network issue that prevented an underlying HTTP call from succeeding.
 * @member HTTPError An HTTP call was made to Discord's servers but a non success HTTP status code was returned. In some cases this may be retryable, and if so ClientResult::Retryable will be true. In most cases though the failure is due to a validation or permissions error, and the request is not retryable. ClientResult::Error and ClientResult::ErrorCode will have more information.
 * @member ClientNotReady An operation such as sending a friend request or joining a lobby was attempted but the Client is not yet ready. Wait for Client::Status to change to Client::Status::Ready before trying again. Also be sure to call Client::Connect to begin the process of connecting to Discord's servers, otherwise the Client will never become ready.
 * @member Disabled An operation was temporarily disabled for stability reasons.
 * @member ClientDestroyed The Client has been destroyed and so this operation cannot complete.
 * @member ValidationError Used when an SDK method is called but the inputs don't pass local validation. For example if one attempts to accept a friend request when there is no pending friend request for that user, this ErrorType would be used. The specific validation error will be included in the error field, and no other ClientResult fields will be set.
 * @member Aborted The user or developer aborted an operation, such as an authorization flow.
 * @member AuthorizationFailed An authorization function failed, but not necessarily as the result of an HTTP call that returned an error.
 * @member RPCError An RPC call was made to Discord's desktop application, but it returned a non-success result. The error and errorCode fields should both be set with more information.
 * @const_end
 */

/**
 * @const DiscordChannelType
 * @desc **Discord Enum**: [discordpp::ChannelType](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a1b68b260e8659da9a7792b2b2046fe58)
 * 
 * This enum represents the various channel types on Discord.
 * 
 * For more information see:
 * 
 * > https://discord.com/developers/docs/resources/channel
 * 
 * @member GuildText GuildText.
 * @member Dm Dm.
 * @member GuildVoice GuildVoice.
 * @member GroupDm GroupDm.
 * @member GuildCategory GuildCategory.
 * @member GuildNews GuildNews.
 * @member GuildStore GuildStore.
 * @member GuildNewsThread GuildNewsThread.
 * @member GuildPublicThread GuildPublicThread.
 * @member GuildPrivateThread GuildPrivateThread.
 * @member GuildStageVoice GuildStageVoice.
 * @member GuildDirectory GuildDirectory.
 * @member GuildForum GuildForum.
 * @member GuildMedia GuildMedia.
 * @member Lobby Lobby.
 * @member EphemeralDm EphemeralDm.
 * @const_end
 */

/**
 * @const DiscordActivityGamePlatforms
 * @desc **Discord Enum**: [discordpp::ActivityGamePlatforms](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a591ad54a3029d15c9c58d6064770fe87)
 * 
 * This enum represents the type of platforms that an activity invite can be accepted on.
 * 
 * @member Desktop Desktop.
 * @member Xbox Xbox.
 * @member Samsung Samsung.
 * @member IOS IOS.
 * @member Android Android.
 * @member Embedded Embedded.
 * @member PS4 PS4.
 * @member PS5 PS5.
 * @const_end
 */

/**
 * @enum DiscordAudioSystem
 * @desc **Discord Docs**: [discordpp::AudioSystem](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a566c99cfc3b8ee94ca322d35bc008633)
 * 
 * The Discord Voice audio system to use.
 * 
 * @member Standard Use the standard audio system.
 * @member Game Use the game audio system.
 * @enum_end 
 */

/**
 * @const DiscordAuthenticationExternalAuthType
 * @desc **Discord Docs**: [External Auth Types](https://discord.com/developers/docs/social-sdk/authentication.html#autotoc_md53)
 * 
 * This enumeration lists the possible external auth types.
 * 
 * @member OIDC OpenID Connect ID token.
 * @member EpicOnlineServicesAccessToken Access token for Epic Online Services. Supports EOS Auth access tokens.
 * @member EpicOnlineServicesIdToken ID token for Epic Online Services. Supports both EOS Auth + Connect ID tokens.
 * @member SteamSessionTicket A Steam auth ticket for web generated with `discord` as the `identity`.
 * @const_end
 */

/**
 * @const DiscordStatusType
 * @desc **Discord Enum**: [discordpp::StatusType](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a7e874dde2b41420ed5d26d4bc3ea5b43)
 * 
 * This enum specifies the various online statuses for a user.
 * 
 * @member Online The user is online and recently active.
 * @member Offline The user is offline and not connected to Discord.
 * @member Blocked Blocked.
 * @member Idle The user is online, but has not been active for a while and may be away from their computer.
 * @member Dnd The user is online, but wishes to suppress notifications for the time being.
 * @member Invisible The user is online, but wishes to appear as if they are offline to other users.
 * @member Streaming The user is online and is actively streaming content.
 * @member Unknown Unknown.
 * @const_end
 */

/**
 * @const DiscordActivityTypes
 * @desc **Discord Enum**: [discordpp::ActivityTypes](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a6c76a8cbbc9270f025fd6854d5558660)
 * 
 * This enumeration holds the possible types of activities that a user can be doing.
 * 
 * @member Playing Playing.
 * @member Streaming Streaming.
 * @member Listening Listening.
 * @member Watching Watching.
 * @member CustomStatus CustomStatus.
 * @member Competing Competing.
 * @member HangStatus HangStatus.
 * @const_end
 */

/**
 * @const DiscordRelationshipType
 * @desc **Discord Enum**: [discordpp::RelationshipType](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a28fc5199b9211c24124c06f30c1d0cbb)
 * 
 * This enum represents the possible types of relationships that can exist between two users.
 * 
 * @member None The user has no relationship with the other user.
 * @member Friend The user is friends with the other user.
 * @member Blocked The current user has blocked the target user, and so certain actions such as sending messages between these users will not work.
 * @member PendingIncoming The current user has received a friend request from the target user, but it is not yet accepted.
 * @member PendingOutgoing The current user has sent a friend request to the target user, but it is not yet accepted.
 * @member Implicit The Implicit type is documented for visibility, but should be unused in the SDK.
 * @member Suggestion The Suggestion type is documented for visibility, but should be unused in the SDK.
 * @const_end
 */

/**
 * @enum DiscordRelationshipGroupType
 * @desc **Discord Enum**: [discordpp::RelationshipGroupType](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a503ed2f7b0bfbd435321a0e8b1dfba35)
 * 
 * Enum that represents the logical groups of relationships based on online status and game activity.
 * 
 * @member OnlinePlayingGame Users who are online and currently playing the game.
 * @member OnlineElsewhere Users who are online but not playing the game.
 * @member Offline Users who are offline.
 * @enum_end 
 */

/**
 * @const DiscordStatusDisplayTypes
 * @desc **Discord Enum**: [discordpp::StatusDisplayTypes](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a9a99c608f6825577fbcd89ded0378e25)
 * 
 * This enum lists which Discord RichPresence field is displayed in the user's status.
 * 
 * @member Name Name.
 * @member State State.
 * @member Details Details.
 * @const_end
 */

/**
 * @const DiscordDisclosureTypes
 * @desc **Discord Enum**: [discordpp::DisclosureTypes](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a0d3a4099faa1d5870eb8a49828e05d34)
 * 
 * This enum represents various informational disclosures that Discord may make to users, so that the game can identity them and customize their rendering as desired.
 * 
 * See [MessageHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1MessageHandle.html) for more details.
 * 
 * @member MessageDataVisibleOnDiscord This disclosure type happens the first time a user sends a message in game, and that message will be able to be viewed on Discord, so the user knows their content is being copied out of the game.
 * @const_end
 */

/**
 * @const DiscordActivityPartyPrivacy
 * @desc **Discord Enum**: [discordpp::ActivityPartyPrivacy](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a05688bf2282548dba7cca3fd26f8dbd4)
 * 
 * Allows your game to control the privacy of the party the user is in.
 * 
 * @member Private The party is private (or unknown), which means that the user is in a party but it is not joinable without sending a request to join the party. This is the default value. You will also receive this value when receiving other users' activities as the party privacy for other users is not exposed.
 * @member Public The party is public, which means that the user is in a party which *could* be joinable by either friends or mutual voice participants without sending a request to join the party. This depends on a user's desired Discord account privacy settings.
 * @const_end
 */

/**
 * @const DiscordClientThread
 * @desc **Discord Enumeration**: [discordpp::Client::Thread](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#adadf74b4796b37cf738bdaa61993f0ba)
 * 
 * This enum represents the type of thread to control thread priority on.
 * 
 * @member Client Client.
 * @member Voice Voice.
 * @member Network Network.
 * @const_end
 */

/**
 * @const DiscordClientStatus
 * @desc **Discord Enumeration**: [discordpp::Client::Status](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a6f714c5d6aebefa91c1ff8ba97bcce22)
 * 
 * This enum refers to the status of the internal websocket the SDK uses to communicate with Discord.
 * 
 * @member Disconnected Disconnected.
 * @member Connecting Connecting.
 * @member Connected Connected.
 * @member Ready Ready.
 * @member Reconnecting Reconnecting.
 * @member Disconnecting Disconnecting.
 * @member HttpWait HttpWait.
 * @const_end
 */

/**
 * @const ActivityActionTypes
 * @desc **Discord Enumeration**: [discordpp::ActivityActionTypes](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#afff4c537aa07d869a4576c87a28f36b8)
 * @member Invalid Invalid.
 * @member Join Join.
 * @member JoinRequest JoinRequest.
 * @const_end
 */

/**
 * @const DiscordLoggingSeverity
 * @desc **Discord Enumeration**: [discordpp::LoggingSeverity](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a4b50332ce64ddd00391c442b60c99a35)
 * @member Verbose Verbose.
 * @member Info Info.
 * @member Warning Warning.
 * @member Error Error.
 * @member None None.
 * @const_end
 */

/**
 * @const DiscordClientError
 * @desc **Discord Enumeration**: [discordpp::Client::Error](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ac8d8140b9e1251e59e59a267f8a6295f)
 * @member None None.
 * @member ConnectionFailed ConnectionFailed.
 * @member UnexpectedClose UnexpectedClose.
 * @member ConnectionCanceled ConnectionCanceled.
 * @const_end
 */

/**
 * @const DiscordAuthorizationTokenType
 * @desc **Discord Enumeration**: [discordpp::AuthorizationTokenType](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#a1968a8b2eabcbe41a254cc88ab330a89)
 * 
 * This enumeration represents the type of auth token used by the SDK, either the normal tokens produced by the Discord desktop app, or an OAuth2 bearer token. Only the latter can be used by the SDK.
 * 
 * @member User User.
 * @member Bearer Bearer.
 * @const_end
 */

/**
 * @const DiscordAudioModeType
 * @desc **Discord Enumeration**: [discordpp::AudioModeType](https://discord.com/developers/docs/social-sdk/namespacediscordpp.html#ad12f4e0df799c97f417320ef861fcffb)
 * 
 * This enum represents whether a voice call is using push to talk or auto voice detection.
 * 
 * @member ModeUninit MODE_UNINIT.
 * @member ModeVAD MODE_VAD.
 * @member ModePTT MODE_PTT.
 * @const_end
 */

/**
 * @const macros
 * @desc Macros defined by the extension.
 * @const_end
 */