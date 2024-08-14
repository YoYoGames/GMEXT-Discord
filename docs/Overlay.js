/**
 * @module overlay
 * @title Overlay
 * @desc **Discord SDK:** [Overlay](https://discord.com/developers/docs/game-sdk/overlay)
 * 
 * @section_func
 * @ref Discord_Overlay_OpenActivityInvite
 * @ref Discord_Overlay_IsEnabled
 * @ref Discord_Overlay_IsLocked
 * @ref Discord_Overlay_OpenGuildInvite
 * @ref Discord_Overlay_OpenVoiceSettings
 * @ref Discord_Overlay_SetLocked
 * @section_end
 * 
 * @module_end
 */


// Functions

/**
 * @function Discord_Overlay_OpenActivityInvite
 * @desc **Discord Function:** [OpenActivityInvite](https://discord.com/developers/docs/game-sdk/overlay#openactivityinvite)
 * 
 * This function opens the overlay modal for sending game invitations to users, channels, and servers. If you do not have a valid activity with all the required fields, this call will error. See [Activity Action Field Requirements](https://discord.com/developers/docs/game-sdk/activities#activity-action-field-requirements) for the fields required to have join and spectate invites function properly.
 * 
 * @param {constant.Discord_ActivityActionType} value What type of invite to send
 * 
 * @example 
 * ```gml
 * Discord_Overlay_OpenActivityInvite(Discord_ActivityActionType_Spectate);
 * ```
 * 
 * The code sample above triggers an activity invite overlay that can be listened for inside an ${event.social}.
 * 
 * ```gml
 * if (async_load[? "type"] == "Discord_Overlay_OpenActivityInvite")
 * {
 *     if (async_load[? "result"] == Discord_OK)
 *     {
 *         show_debug_message("succeeded!");
 *     }
 *     else
 *     {
 *         show_debug_message("failed!");
 *     }
 * }
 * ```
 * The code above matches the response against the correct event **type** and logs the success of the task.
 * @func_end
 */


/**
 * @function Discord_Overlay_IsEnabled
 * @desc **Discord Function:** [IsEnabled](https://discord.com/developers/docs/game-sdk/overlay#isenabled)
 * 
 * This function checks whether the user has the overlay enabled or disabled. If the overlay is disabled, all the functionality in this manager will still work. The calls will instead focus the Discord client and show the modal there instead.
 * 
 * @returns {bool}
 * 
 * @example 
 * ```gml
 * var _overlay_is_enabled = Discord_Overlay_IsEnabled();
 * ```
 * @func_end
 */


/**
 * @function Discord_Overlay_IsLocked
 * @desc **Discord Function:** [IsLocked](https://discord.com/developers/docs/game-sdk/overlay#islocked)
 * 
 * This function checks if the overlay is currently locked or unlocked.
 * 
 * @returns {bool}
 * 
 * @example 
 * ```gml
 * var _overlay_is_locked = Discord_Overlay_IsLocked();
 * ```
 * @func_end
 */


/**
 * @function Discord_Overlay_OpenGuildInvite
 * @desc **Discord Function:** [OpenGuildInvite](https://discord.com/developers/docs/game-sdk/overlay#openguildinvite)
 * 
 * This function opens the overlay modal for joining a Discord guild, given its invite code.
 * 
 * @param {string} code The server invitation code
 * 
 * @event social
 * @member {real} result The result code of the async request
 * @member {string} type The string `"Discord_Overlay_OpenGuildInvite"`
 * @event_end
 * 
 * @example 
 * ```gml
 * identifier = Discord_Overlay_OpenGuildInvite();
 * ```
 * The code above saves the identifier that can be used inside an ${event.social}.
 * 
 * ```gml
 * if (async_load[? "identifier"] == identifier)
 * if (async_load[? "type"] == "Discord_Overlay_OpenGuildInvite")
 * {
 *     if (async_load[? "status"] == Discord_OK)
 *     {
 *         show_debug_message(async_load[? "type"] + " succeeded!");
 *     }
 *     else
 *     {
 *          show_debug_message(async_load[? "type"] + " failed: " + async_load[? "status_message"]);
 *     }
 * }
 * ```
 * The code above matches the response against the correct event **type** and logs the success of the task.
 * @func_end
 */


/**
 * @function Discord_Overlay_OpenVoiceSettings
 * @desc **Discord Function:** [OpenVoiceSettings](https://discord.com/developers/docs/game-sdk/overlay#openvoicesettings)
 * 
 * This function opens the overlay widget for voice settings for the currently connected application. These settings are unique to each user within the context of your application. That means that a user can have different favorite voice settings for each of their games!
 * 
 * @event social
 * @member {real} result The result code of the async request
 * @member {boolean} success Whether the request was successful
 * @member {string} type The string `"Discord_Overlay_OpenVoiceSettings"`
 * @event_end
 * 
 * @example 
 * ```gml
 * identifier = Discord_Overlay_OpenVoiceSettings();
 * ```
 * 
 * The code sample above saves the identifier that can be used inside an ${event.social}.
 * 
 * ```gml
 * if (async_load[? "type"] == "Discord_Overlay_OpenVoiceSettings")
 * if (async_load[? "identifier"] == identifier)
 * {
 *     if (async_load[? "status"] == Discord_OK)
 *     {
 *         show_debug_message(async_load[? "type"] + " succeeded!");
 *     }
 *     else
 *     {
 *          show_debug_message(async_load[? "type"] + " failed: " + async_load[? "status_message"]);
 *     }
 * }
 * ```
 * The code above matches the response against the correct event **type** and logs the success of the task.
 * @func_end
 */


/**
 * @function Discord_Overlay_SetLocked
 * @desc **Discord Function:** [SetLocked](https://discord.com/developers/docs/game-sdk/overlay#setlocked)
 * 
 * This function locks or unlocks input in the overlay. Calling `Discord_Overlay_SetLocked(true)` will also close any modals in the overlay or in-app from things like IAP purchase flows and disallow input.
 * 
 * @param {bool} value Whether to lock (`true`) or unlocked (`false`) the overlay
 * 
 * @returns {real}
 * 
 * @event social
 * @member {real} id The asynchronous request ID
 * @member {string} type The string `"Discord_Overlay_SetLocked"`
 * @event_end
 * 
 * @example 
 * ```gml
 * identifier = Discord_Overlay_SetLocked();
 * ```
 * The code above saves the identifier that can be used inside an ${event.social}.
 * 
 * ```gml
 * if (async_load[? "type"] == "Discord_Overlay_SetLocked")
 * if (async_load[? "identifier"] == identifier)
 * {
 *     if (async_load[? "status"] == Discord_OK)
 *     {
 *         show_debug_message(async_load[? "type"] + " succeeded!");
 *     }
 *     else
 *     {
 *          show_debug_message(async_load[? "type"] + " failed: " + async_load[? "status_message"]);
 *     }
 * }
 * ```
 * @func_end
 */
