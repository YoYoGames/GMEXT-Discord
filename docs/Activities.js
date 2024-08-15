
/**
 * @module activities
 * @title Activities
 * @desc **Discord SDK:** [Activities](https://discord.com/developers/docs/developer-tools/game-sdk#activities)
 * 
 * @section_func
 * @ref Discord_Activities_UpdateActivity
 * @ref Discord_Activities_AcceptInvite
 * @ref Discord_Activities_ClearActivity
 * @ref Discord_Activities_SendInvite
 * @ref Discord_Activities_SendRequestReply
 * @section_end
 * 
 * @section_struct
 * @ref Activity
 * @ref ActivityData
 * @ref ActivityTimestamps
 * @ref ActivityAssets
 * @ref ActivityParty
 * @ref ActivitySecrets
 * @ref PartySize
 * @section_end
 * 
 * @section_const
 * @ref Discord_ActivityType
 * @ref Discord_ActivityActionType
 * @ref Discord_ActivityJoinRequestReply
 * @section_end
 * 
 * @module_end
 */


/**
 * @function Discord_Activities_UpdateActivity
 * @desc **Discord Function:** [UpdateActivity](https://discord.com/developers/docs/developer-tools/game-sdk#updateactivity)
 * 
 * This function sets a user's presence in Discord to a new activity.
 * 
 * [[Info: It is possible for users to hide their presence on Discord (User Settings -> Game Activity). Presence set through this SDK may not be visible when this setting is toggled off.]]
 * 
 * [[Warning: This has a rate limit of 5 updates per 20 seconds.]]
 * 
 * @param {struct.Activity} activity The data to be applied to the user's activity
 * 
 * @event social
 * @member {string} type The string `"Discord_Activities_UpdateActivity"`
 * @member {real} result Result code of the async request.
 * @member {bool} success Whether the current request was successful or not.
 * @event_end
 * 
 * @example
 * ```gml
 * identifier = Discord_Activity_UpdateActivity({
 *    state: "Creating Games",
 *    type: Discord_Activity_Type_Playing,
 *    details: "Details...",
 *    smallImage: "mySmallImageName",
 *    smallText: "mySmallText",
 *    largeImage: "myLargeImageName",
 *    largeText: "myLargeText"
 * });
 * ```
 * The code sample above saves the identifier that can be used to differentiate between two requests in the ${event.social}.
 * 
 * ```gml
 * if (async_load[? "type"] == "Discord_Activity_UpdateActivity")
 * {
 *     if (async_load[? "result"] == Discord_OK)
 *     {
 *         show_debug_message(async_load[? "type"] + " succeeded!");
 *     }
 *     else
 *     {
 *         show_debug_message(async_load[? "type"] + " failed!");
 *     }
 * }
 * ```
 * The code above matches the response against the correct event **type** and logs the success of the task.
 * @func_end
 */


/**
 * @function Discord_Activities_AcceptInvite
 * @desc **Discord Function:** [AcceptInvite](https://discord.com/developers/docs/developer-tools/game-sdk#acceptinvite)
 * 
 * This function accepts a game invitation from a given userId.
 * 
 * @param {int64} userId The ID of the user who invited you
 * 
 * @event social
 * @member {string} type The string `"Discord_Activities_AcceptInvite"`
 * @member {real} result Result code of the async request.
 * @member {bool} success Whether the current request was successful or not.
 * @event_end
 * 
 * @example 
 * ```gml
 * Discord_Activities_AcceptInvite(userId);
 * ```
 * @func_end
 */


/**
 * @function Discord_Activities_ClearActivity
 * @desc **Discord Function:** [ClearActivity](https://discord.com/developers/docs/developer-tools/game-sdk#clearactivity)
 * 
 * This function clears a user's presence in Discord to make it show nothing.
 * 
 * @event social
 * @member {string} type The string `"Discord_Activities_ClearActivity"`
 * @member {real} result Result code of the async request.
 * @member {bool} success Whether the current request was successful or not.
 * @event_end
 * 
 * @example 
 * ```gml
 * Discord_Activities_ClearActivity();
 * ```
 * @func_end
 */


/**
 * @function Discord_Activities_SendInvite
 * @desc **Discord Function:** [SendInvite](https://discord.com/developers/docs/developer-tools/game-sdk#sendinvite)
 * 
 * This function sends a game invite to a given user. If you do not have a valid activity with all the required fields, this call will error. See [Activity Action Field Requirements](https://discord.com/developers/docs/game-sdk/activities#activity-action-field-requirements) for the fields required to have join and spectate invites function properly.
 * 
 * @param {int64} userId the ID of the user to invite
 * @param {constant.Discord_ActivityActionType} type marks the invite as an invitation to join or spectate
 * @param {string} content a message to send along with the invite
 * 
 * @event social
 * @member {string} type The string `"Discord_Activities_SendInvite"`
 * @member {real} result Result code of the async request.
 * @member {bool} success Whether the current request was successful or not.
 * @event_end
 * 
 * @example 
 * ```gml
 * Discord_Activities_SendInvite(otherUserId, Discord_ActivityActionType_Join, "Come join my awesome game!");
 * ```
 * @func_end
 */


/**
 * @function Discord_Activities_SendRequestReply
 * @desc **Discord Function:** [SendRequestReply](https://discord.com/developers/docs/developer-tools/game-sdk#sendrequestreply)
 * 
 * This function sends a reply to an Ask to Join request.
 * 
 * @param {int64} userId The user ID of the person who asked to join
 * @param {constant.Discord_ActivityJoinRequestReply} reply `Discord_ActivityJoinRequestReply_No`, `Discord_ActivityJoinRequestReply_Yes` or `Discord_ActivityJoinRequestReply_Ignore`
 * @event social
 * @member {string} type The string `"Discord_Activities_SendRequestReply"`
 * @member {real} result Result code of the async request.
 * @member {bool}  Whether the current request was successful or not.
 * @event_end
 * 
 * @example 
 * ```gml
 * Discord_Activities_SendRequestReply(otherUserId, Discord_ActivityJoinRequestReply_Yes);
 * ```
 * @func_end
 */


// Structs

/**
 * @struct Activity
 * @desc **Discord Struct:** [Activity Struct](https://discord.com/developers/docs/developer-tools/game-sdk#activity-struct)
 * 
 * The `Activity` struct contains information about a user's current activity, including the application ID, name of the application, current party status, what the player is currently doing, timestamps, assets to display on the player's profile, party information, and secret passwords for joining and spectating the player's game.
 * 
 * @member {int64} applicationId Your application ID. This is a read-only field.
 * @member {string} name Name of the application. This is a read-only field.
 * @member {string} state The player's current party status.
 * @member {string} details What the player is currently doing.
 * @member {struct.ActivityTimestamps} timestamps Helps create elapsed/remaining timestamps on a player's profile.
 * @member {struct.ActivityAssets} assets Assets to display on the player's profile.
 * @member {struct.ActivityParty} party Information about the player's party.
 * @member {struct.ActivitySecrets} secrets Secret passwords for joining and spectating the player's game.
 * @member {bool} instance Whether this activity is an instanced context, like a match.
 * @struct_end
 */


/**
 * @struct ActivityTimestamps
 * @desc **Discord Struct:** [ActivityTimestamps Struct](https://discord.com/developers/docs/developer-tools/game-sdk#activitytimestamps-struct)
 * 
 * The `ActivityTimestamps` struct is used to create elapsed/remaining timestamps on a player's profile. It contains two fields: `startTimestamp` and `endTimestamp`, both of which are Unix timestamps.
 * 
 * @member {int64} startTimestamp Unix timestamp - send this to have an "elapsed" timer
 * @member {int64} endTimestamp Unix timestamp - send this to have a "remaining" timer
 * @struct_end
 */


/**
 * @struct ActivityAssets
 * @desc **Discord Struct:** [ActivityAssets Struct](https://discord.com/developers/docs/developer-tools/game-sdk#activityassets-struct)
 * 
 * The `ActivityAssets` struct contains assets to display on a player's profile, including both large and small images and corresponding hover text.
 * 
 * @member {string} largeImage The key for the large image asset
 * @member {string} largeText The text to display when hovering over the asset
 * @member {string} smallImage The key for the small image asset
 * @member {string} smallText The text to display when hovering over the asset
 * @struct_end
 */


/**
 * @struct ActivityParty
 * @desc **Discord Struct:** [ActivityParty Struct](https://discord.com/developers/docs/developer-tools/game-sdk#activityparty-struct)
 * 
 * The `ActivityParty` struct contains information about the player's party, including a unique identifier and party size.
 * 
 * @member {string} id A unique identifier for this party
 * @member {struct.PartySize} size Info about the size of the party
 * @struct_end
 */


/**
 * @struct PartySize
 * @desc **Discord Struct:** [PartySize Struct](https://discord.com/developers/docs/developer-tools/game-sdk#partysize-struct)
 * 
 * The `PartySize` struct contains information about the size of a party, including both the current size and maximum possible size.
 * 
 * @member {real} currentSize The current size of the party.
 * @member {real} maxSize The max possible size of the party.
 * @struct_end
 */


/**
 * @struct ActivitySecrets
 * @desc **Discord Struct:** [ActivitySecrets Struct](https://discord.com/developers/docs/developer-tools/game-sdk#activitysecrets-struct)
 * 
 * The `ActivitySecrets` struct contains secret passwords for joining and spectating the player's game, as well as a unique hash for the given match context.
 * 
 * @member {string} match unique hash for the given match context
 * @member {string} join unique hash for chat invites and Ask to Join
 * @member {string} spectate unique hash for Spectate button
 * @struct_end
 */

// Constants

/**
 * @constant Discord_ActivityType
 * @desc **Discord Enum:** [ActivityType Enum](https://discord.com/developers/docs/developer-tools/game-sdk#activitytype-enum)
 * 
 * This represents the type of a user activity and is to be used with [`Discord_Activities_UpdateActivity`](#discord_activities_updateactivity).
 * 
 * @member Discord_ActivityType_Playing 0 Represents the playing activity type; useful when user is playing games.
 * @member Discord_ActivityType_Streaming 1 Represents the streaming activity type; useful when user is streaming on discord, twitch or other platforms.
 * @member Discord_ActivityType_Listening 2 Represents the listening activity type; useful when user is listening to music on Spotify or other platforms.
 * @member Discord_ActivityType_Watching 3 Represents the watching activity type; useful when user is watching their favorite shows.
 * @member Discord_ActivityType_Custom 4 Represents any custom activity type
 * @member Discord_ActivityType_Competing 5 Represents the competing activity type
 * @constant_end
 */


/**
 * @constant Discord_ActivityActionType
 * @desc **Discord Enum:** [ActivityActionType Enum](https://discord.com/developers/docs/developer-tools/game-sdk#activityactiontype-enum)
 * 
 * This represents the type of activity action and is to be used with [`Discord_Overlay_OpenActivityInvite`](Overlay#discord_overlay_openactivityinvite).
 * 
 * @member Discord_ActivityActionType_Join 1 Represents the action of joining an activity.
 * @member Discord_ActivityActionType_Spectate 2 Represents the action of spectating an activity.
 * @constant_end
 */


/**
 * @constant Discord_ActivityJoinRequestReply
 * @desc **Discord Enum:** [ActivityJoinRequestReply Enum](https://discord.com/developers/docs/developer-tools/game-sdk#activityjoinrequestreply-enum)
 * 
 * This enum provides options for how to respond to a user's request to join an activity.
 * 
 * @member Discord_ActivityJoinRequestReply_No 0 Do not join
 * @member Discord_ActivityJoinRequestReply_Yes 1 Join
 * @member Discord_ActivityJoinRequestReply_Ignore 2 Ignore the join request
 * @constant_end
 */
