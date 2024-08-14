
/**
 * @module images
 * @title Images
 * @section_func
 * @ref Discord_Images_Fetch
 * @section_end
 * @module_end
 */

// Functions

/**
 * @function Discord_Images_Fetch
 * @desc **Discord Function:** [Fetch](https://discord.com/developers/docs/game-sdk/images#fetch)
 * 
 * This function prepares an image to later retrieve data about it.
 * 
 * @param {int64} userId The ID of the user whose avatar you want to get.
 * @param {real} size The resolution at which you want the image (needs to be a power of 2)
 * 
 * @event social
 * @member {string} type `"Discord_Images_Fetch"`
 * @member {real} result Result code of the async request.
 * @member {bool} success Whether the current request was successful or not.
 * @member {int64} userId The ID of the user whose avatar you requested.
 * @member {real} width The width of the avatar image
 * @member {real} height The height of the avatar image
 * @member {type.buffer} buffer A buffer containing the avatar image data.
 * @event_end
 * 
 * @example
 * ```gml
 * /// Create Event
 * Discord_Images_Fetch(userId, 64);
 * 
 * /// Async Event
 * if(async_load[?"result"] != Discord_OK)
 * {
 *     exit;
 * }
 * 
 * switch(async_load[?"type"])
 * {
 *     case "Discord_Images_Fetch":
 *         
 *         // If user ids don't match bail
 *         if (userId != async_load[?"userId"]) exit;
 *         
 *         var buffer = async_load[?"buffer"];
 *     
 *         surf = surface_create(async_load[?"width"], async_load[?"height"]);
 *         buffer_set_surface(buffer, surf, 0);
 *     
 *         buffer_delete(buffer);
 *         break;
 * }
 * ```
 * @func_end
 */
