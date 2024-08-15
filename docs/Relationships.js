/**
 * @module relationships
 * @title Relationships
 * @desc **Discord SDK:** [Relationships](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#relationships)
 * 
 * [[Warning: The Game SDK's Relationships functionality has been deprecated by Discord.]]
 * 
 * @section_func
 * @ref Discord_Relationships_Filter
 * @ref Discord_Relationships_Count
 * @ref Discord_Relationships_Get
 * @ref Discord_Relationships_GetAt
 * @section_end
 * 
 * @section_struct
 * @ref Relationship
 * @section_end
 * 
 * @section_const
 * @ref Discord_RelationshipType
 * @section_end
 * 
 * @module_end
 */

// Functions

/**
 * @function Discord_Relationships_Filter
 * @desc **Discord Function:** [Filter](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#filter)
 * 
 * This function performs a query over the relationships of the current user selection only the ones that match the given type.
 * 
 * @param {constant.Discord_RelationshipType} type The type of relationship to filter when performing the query
 * 
 * @example 
 * ```gml
 * Discord_Relationship_Filter(Discord_RelationshipType_Friend);
 * count = Discord_Relationships_Count();
 * for(var a = 0 ; a < count ; a++)
 * {
 *     var _struct = Discord_Relationships_GetAt(a);
 *     type = _struct.type;
 *     username = _struct.username;
 *     avatar = _struct.avatar;
 *     id = _struct.id;
 *     bot = _struct.bot;
 *     discriminator = _struct.discriminator;
 *     //Do something each loop with this information..
 * }
 * ```
 * @func_end
 */


/**
 * @function Discord_Relationships_Count
 * @desc **Discord Function:** [Count](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#count)
 * 
 * This function gets the number of relationships that match your previous query.
 * 
 * @returns [real](https://manual.yoyogames.com/GameMaker_Language/GML_Overview/Data_Types.htm)
 * 
 * @example 
 * ```gml
 * Discord_Relationships_Filter(Discord_Relationship_Filter_Friend);
 * count = Discord_Relationships_Count();
 * for(var a = 0 ; a < count ; a++)
 * {
 *     var _struct = Discord_Relationships_GetAt(a);
 *     type = _struct.type;
 *     username = _struct.username;
 *     avatar = _struct.avatar;
 *     id = _struct.id;
 *     bot = _struct.bot;
 *     discriminator = _struct.discriminator;
 *     //Do something each loop with this information..
 * }
 * ```
 * @func_end
 */

/**
 * @function Discord_Relationships_Get
 * @desc **Discord Function:** [Get](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#get)
 * 
 * This function gets the relationship between the current user and a given user by ID.
 * 
 * @param {int64} userId User identifier
 * 
 * @returns {struct.Relationship}
 * 
 * @example 
 * ```gml
 * var _struct = Discord_Relationships_Get(userId);
 * type = _struct.type;
 * username = _struct.username;
 * avatar = _struct.avatar;
 * userId = _struct.userId;
 * bot = _struct.bot;
 * discriminator = _struct.discriminator;
 * ```
 * @func_end
 */

/**
 * @function Discord_Relationships_GetAt
 * @desc **Discord Function:** [GetAt](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#getat)
 * 
 * This function gets the relationship at a given index when iterating over a list of relationships.
 * 
 * [[Warning: This function requires a previous call to the function ${function.Discord_Relationships_Filter}.]]
 * 
 * @param index Index of the relationship
 * 
 * @returns {struct.Relationship}
 * 
 * @example 
 * ```gml
 * Discord_Relationships_Filter(Discord_RelationshipType_Friend);
 * count = Discord_Relationships_Count();
 * for(var a = 0 ; a < count ; a++)
 * {
 *     var _struct = Discord_Relationships_GetAt(a);
 *     type = _struct.type;
 *     username = _struct.username;
 *     avatar = _struct.avatar;
 *     userId = _struct.id;
 *     bot = _struct.bot;
 *     discriminator = _struct.discriminator;
 *    
 *     //Do something each loop with this information..
 * }
 * ```
 * @func_end
 */

// Structs

/**
 * @struct Relationship
 * @desc **Discord Struct:** [Relationship Struct](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#relationship-struct)
 * 
 * This struct contains information about the user with whom the connected user has a relationship. It includes the type of relationship with the user, the other user's presence and details on the other user.
 * The details on the other user are stored in the `user` field, which holds a struct with: the username of the user (the name displayed on their profile and in chat messages), the `avatar` field (the URL of the user's avatar image), the `userId` field (the unique user ID assigned by Discord), the `bot` field (a boolean value indicating whether the user is a bot account or a human user) and the `discriminator` field (contains the four-digit number that appears after the username, used to distinguish between users with the same username).
 * 
 * Here is a table summarizing the fields in the "relationship" structure and their meanings:
 * 
 * @member {constant.Discord_RelationshipType} type The username of the user, which is the name displayed on their profile and in chat messages.
 * @member {struct.User} user The user the relationship is for.
 * @member {struct.Presence} presence That user's current presence
 * @struct_end
 */


// Constants

/**
 * @const Discord_RelationshipType
 * @desc **Discord Function:** [RelationshipType Enum](https://github.com/discord/discord-api-docs/blob/legacy-gamesdk/docs/game_sdk/Relationships.md#relationshiptype-enum)
 * 
 * @member Discord_RelationshipType_None 0 User has no intrinsic relationship on Discord.
 * @member Discord_RelationshipType_Friend 1 User is a friend of the connected user, and they can see each other's online status, send direct messages, etc.
 * @member Discord_RelationshipType_Blocked 2 User is blocked by the connected user and cannot interact with them on Discord.
 * @member Discord_RelationshipType_PendingIncoming 3 User has sent a friend request to the connected user, but it has not yet been accepted.
 * @member Discord_RelationshipType_PendingOutgoing 4 Connected user has sent a friend request to the other user, but it has not yet been accepted.
 * @member Discord_RelationshipType_Implicit 5 Users are not friends but interact with each other often, based on frequency and recency of interactions.
 * @const_end
 */
