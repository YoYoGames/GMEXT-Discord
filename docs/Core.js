
/**
 * @module core
 * @title Core
 * @desc **Discord SDK:** [Discord](https://discord.com/developers/docs/game-sdk/discord)
 * 
 * @section_func
 * @ref Discord_Core_Create
 * @ref Discord_Core_RunCallbacks
 * @section_end
 * 
 * @section_const
 * @ref Discord_Result
 * @ref Discord_CreateFlags
 * @section_end
 * 
 * @module_end
 */

// Functions

/**
 * @function Discord_Core_Create
 * @desc **Discord Function:** [Create](https://discord.com/developers/docs/developer-tools/game-sdk#create)
 * 
 * This function initialises the Discord extension and returns whether this was successful.
 * The `creationFlag` parameter determines if the Discord extension requires or doesn't require Discord to be running. If the optional `creationFlag` is set to `Discord_CreateFlags_Default` (the default value) and Discord is not running, it will:
 * 
 *   1. Close your game
 *   2. Open Discord
 *   3. Attempt to re-open your game
 * 
 * @param {int64} appId  Application identifier
 * @param {constant.Discord_CreateFlags} [creationFlag=Discord_CreateFlags_Default] `Discord_CreateFlags_Default` or `Discord_CreateFlags_NoRequireDiscord`
 * 
 * @returns {bool}
 * @example
 * ```gml
 * if(!Discord_Core_Create(_applicationId, Discord_CreateFlags_Default))
 * {
 *     show_message_async("Discord Initialisation Error");
 *     exit;
 * }
 * ```
 * @func_end
 */

/**
 * @function Discord_Core_RunCallbacks
 * @desc **Discord Function:** [RunCallbacks](https://discord.com/developers/docs/developer-tools/game-sdk#runcallbacks)
 * 
 * This function requests the extension instances to do work.
 * 
 * [[Warning: It is imperative that this function is called at regular intervals to ensure that all the services offered by the SDK function optimally.]]
 * 
 * @event social
 * @desc This async event is triggered whenever the user struct of the currently connected user changes. They may have changed their avatar, username, or something else.
 * 
 * @member {real} result Result code of the async request
 * @member {string} type The string `"Discord_Users_OnCurrentUserUpdate"`
 * @event_end
 * 
 * @example
 * ```gml
 * /// Step Event
 * Discord_Core_RunCallbacks();
 * ```
 * 
 * @func_end
 */

// Constants

/**
 * @constant Discord_Result
 * @desc **Discord Enum:** [Result Enum](https://discord.com/developers/docs/developer-tools/game-sdk#result-enum)
 * 
 * @member Discord_OK 0 A constant that indicates that the result is OK
 * 
 * @constant_end
 */

/**
 * @constant Discord_CreateFlags
 * @desc **Discord Enum:** [CreateFlags Enum](https://discord.com/developers/docs/developer-tools/game-sdk#createflags-enum)
 * 
 * @member Discord_CreateFlags_Default 0 Requires Discord to be running to play the game
 * @member Discord_CreateFlags_NoRequireDiscord 1 Does not require Discord to be running, use this on other platforms
 * 
 * @constant_end
 */
