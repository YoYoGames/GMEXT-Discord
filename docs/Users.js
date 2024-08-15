/**
 * @module users
 * @title Users
 * @desc **Discord SDK:** [Users](https://discord.com/developers/docs/developer-tools/game-sdk#users)
 * 
 * @section_func
 * @ref Discord_Users_GetCurrentUser
 * @ref Discord_Users_GetCurrentUserPremiumType
 * @ref Discord_Users_GetUser
 * @ref Discord_Users_SetCurrentUsername
 * @section_end
 * 
 * @section_struct
 * @ref User
 * @ref Presence
 * @section_end
 * 
 * @section_const
 * @ref Discord_PremiumType
 * @ref Discord_UserStatus
 * @section_end
 * 
 * @module_end

// Functions

/**
 * @function Discord_Users_GetCurrentUser
 * @desc **Discord Function:** [GetCurrentUser](https://discord.com/developers/docs/developer-tools/game-sdk#getcurrentuser)
 * 
 * This function fetches information about the currently connected user account.
 * 
 * @returns {struct.User}
 * 
 * @example
 * ```gml
 * var _struct = Discord_User_GetCurrentUser();
 * username = _struct.username;
 * bot = _struct.bot;
 * userId = _struct.userId;
 * discriminator = _struct.discriminator;
 * ```
 * @func_end
 */


/**
 * @func Discord_Users_GetCurrentUserPremiumType
 * @desc **Discord Function:** [GetCurrentUserPremiumType](https://discord.com/developers/docs/developer-tools/game-sdk#getcurrentuserpremiumtype)

 * This function gets the ${constant.Discord_PremiumType} for the currently connected user.

 * @returns {constant.Discord_PremiumType}
 * @example
 * ```gml
 * switch(Discord_User_GetCurrentUserPremiumType())
 * {
 *    case Discord_PremiumType_None:
 *        show_debug_message("User is not a Nitro subscriber");
 *    break;
 * 
 *    case Discord_PremiumType_Tier1:
 *        show_debug_message("User has Nitro Classic");
 *    break;
 * 
 *    case Discord_PremiumType_Tier2:
 *        show_debug_message("User has Nitro");
 *    break;
 * }
 * ```
 * 
 * @func_end
 */


/**
 * @func Discord_Users_GetUser
 * @desc **Discord Function:** [GetUser](https://discord.com/developers/docs/developer-tools/game-sdk#getuser)
 * 
 * This function gets user information for a given ID.
 * 
 * @param {int64} userId Identifier of the user
 * 
 * @event social
 * @member {real} result The result code of the async request
 * @member {string} type The string `"Discord_User_GetUser"`
 * @member {struct.User} user The user data
 * @event_end
 * 
 * @example
 * 
 * ```gml
 * Discord_Users_GetUser(userId);
 * ```
 * 
 * The code sample above saves the identifier that can be used inside an ${event.social}.
 * 
 * ```gml
 * if (async_load[? "type"] == "Discord_User_GetUser")
 * {
 *     if (async_load[? "result"] == Discord_OK)
 *     {
 *         show_debug_message(async_load[? "type"] + " succeeded!");
 *         show_debug_message(async_load[? "user"]);
 *     }
 *     else
 *     {
 *         show_debug_message(async_load[? "type"] + " failed!");
 *     }
 * }
 * ```
 * 
 * The code above matches the response against the correct event **type** and logs the success of the task.
 * 
 * @func_end
 */


/**
 * @func Discord_Users_SetCurrentUsername
 * @desc **Discord Function:** N/A

 * This function sets the current user's username information.
 *
 * @param {string} username The new username to be applied to the current user.
 * 
 * @example
 * 
 * ```gml
 * Discord_User_SetCurrentUsername("SuperUser");
 * ```
 * The code sample above will update the current user's username.
 * @func_end
 */

// Structs

/**
 * @struct User
 * @desc **Discord Struct:** [User Structure](https://discord.com/developers/docs/developer-tools/game-sdk#user-struct)
 * 
 * This struct stores information about a Discord user.
 * 
 * @member {int64} userId The unique ID assigned to the user by Discord.
 * @member {string} username The username of the user, which is the name displayed on their profile and in chat messages.
 * @member {string} discriminator The four-digit number that appears after the username, used to distinguish between users with the same username.
 * @member {string} avatar The hash of the user's avatar image.
 * @member {bool} bot A boolean value indicating whether the user is a bot account or a human user.
 * 
 * @struct_end
 */

/**
 * @struct Presence
 * @desc **Discord Struct:** [Presence Struct](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#presence-struct)
 * 
 * The Presence struct contains information about a user's current online status and activity.
 * 
 * @member {constant.Discord_UserStatus} Status The user's current online status.
 * @member {struct.Activity} Activity The user's current activity, if any.
 * 
 * @struct_end
 */


// Constants

/**
 * @const Discord_UserStatus
 * @desc **Discord Enum:** [Status Enum](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#status-enum)
 * 
 * The Status enum represents the online status of a user on Discord.
 * 
 * @member Discord_UserStatus_Offline 0 The user is offline.
 * @member Discord_UserStatus_Online 1 The user is online.
 * @member Discord_UserStatus_Idle 2 The user is idle (i.e., away from keyboard or has been inactive for a certain amount of time).
 * @member Discord_UserStatus_DoNotDisturb 3 The user is in "do not disturb" mode, indicating that they do not want to be disturbed or receive notifications.
 * 
 * @const_end
 */


/**
 * @const Discord_PremiumType
 * @desc **Discord Enum:** [PremiumType Enum](https://discord.com/developers/docs/developer-tools/game-sdk#premiumtype-enum)
 * 
 * The PremiumType enum describes the type of Nitro subscription a user has. It has the following values and descriptions: 
 * 
 * @member Discord_PremiumType_None 0 Not a Nitro subscriber
 * @member Discord_PremiumType_Tier1 1 Nitro Classic subscriber
 * @member Discord_PremiumType_Tier2 2 Nitro subscriber
 * @member Discord_PremiumType_Tier3 3 Nitro Basic subscriber (formerly Nitro)
 *
 * @const_end
 */
