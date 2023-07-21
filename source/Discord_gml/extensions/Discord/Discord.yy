{
    "resourceType": "GMExtension",
    "resourceVersion": "1.2",
    "name": "Discord",
    "androidactivityinject": "",
    "androidclassname": "",
    "androidcodeinjection": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidPermissions": [],
    "androidProps": false,
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 194,
    "date": "2022-04-26T12:19:14.7380247+01:00",
    "description": "",
    "exportToGame": true,
    "extensionVersion": "1.1.0",
    "files": [
        {
            "resourceType": "GMExtensionFile",
            "resourceVersion": "1.0",
            "name": "",
            "constants": [
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_OK",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityType_Playing",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityType_Streaming",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityType_Listening",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityType_Watching",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityType_Custom",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityType_Competing",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityActionType_Join",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityActionType_Spectate",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_RelationshipType_None",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_RelationshipType_Friend",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_RelationshipType_Blocked",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_RelationshipType_PendingIncoming",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_RelationshipType_PendingOutgoing",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_RelationshipType_Implicit",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_PremiumType_None",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_PremiumType_Tier1",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_PremiumType_Tier2",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_PremiumType_Tier3",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityJoinRequestReply_No",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityJoinRequestReply_Yes",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "Discord_ActivityJoinRequestReply_Ignore",
                    "hidden": false,
                    "value": "2"
                }
            ],
            "copyToTargets": 194,
            "filename": "Discord Game SDK.dll",
            "final": "",
            "functions": [
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Core_Create",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Initializes the Discord extension.\r\n/// @param {int64} appId The current applicationId",
                    "externalName": "Discord_Core_Create",
                    "help": "Discord_Core_Create(appId)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Core_RunCallbacks",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Requests the extension instances to do work.",
                    "externalName": "Discord_Core_RunCallbacks",
                    "help": "Discord_Core_RunCallbacks()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Images_Fetch",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Prepares an image to later retrieve data about it.\r\n/// @param {int64} userId The user id to fetch the image for.\r\n/// @param {real} size A power of 2 size for the image being fetched.\r\n\r\n",
                    "externalName": "Discord_Images_Fetch",
                    "help": "Discord_Images_Fetch()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Overlay_OpenActivityInvite",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Opens the overlay modal for sending game invitations to users, channels, and servers.\r\n/// @param {Real} value What type of invite to send.",
                    "externalName": "Discord_Overlay_OpenActivityInvite",
                    "help": "Discord_Overlay_OpenActivityInvite(activityActionType)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Overlay_IsEnabled",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Check whether the user has the overlay enabled or disabled. If the overlay is disabled, all the functionality in this manager will still work.\r\n/// @returns {bool}",
                    "externalName": "Discord_Overlay_IsEnabled",
                    "help": "Discord_Overlay_IsEnabled()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Overlay_IsLocked",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Check if the overlay is currently locked or unlocked.\r\n/// @returns {bool}",
                    "externalName": "Discord_Overlay_IsLocked",
                    "help": "Discord_Overlay_IsLocked()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Overlay_OpenGuildInvite",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Opens the overlay modal for joining a Discord guild, given its invite code.\r\n/// @param {string} code The server invitation code.",
                    "externalName": "Discord_Overlay_OpenGuildInvite",
                    "help": "Discord_Overlay_OpenGuildInvite(code)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Overlay_OpenVoiceSettings",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Opens the overlay widget for voice settings for the currently connected application.",
                    "externalName": "Discord_Overlay_OpenVoiceSettings",
                    "help": "Discord_Overlay_OpenVoiceSettings()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Overlay_SetLocked",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Locks or unlocks input in the overlay. Calling\u00c2\u00a0SetLocked(true);\u00c2\u00a0will also close any modals in the overlay or in-app from things like IAP purchase flows and disallow input.\r\n/// @param {bool} value true: locked or false: unlocked",
                    "externalName": "Discord_Overlay_SetLocked",
                    "help": "Discord_Overlay_SetLocked(locked)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Relationships_Count",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Get the number of relationships that match your previous query.\r\n/// @returns {real}",
                    "externalName": "Discord_Relationships_Count",
                    "help": "Discord_Relationships_Count()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Relationships_Get",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Get the relationship between the current user and a given user by id.\r\n/// @returns {struct}",
                    "externalName": "Discord_Relationships_Get",
                    "help": "Discord_Relationships_Get(userId)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Relationships_GetAt",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Get the relationship at a given index when iterating over a list of relationships.\r\n/// @returns {struct}",
                    "externalName": "Discord_Relationships_GetAt",
                    "help": "Discord_Relationships_GetAt(index)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Users_GetCurrentUser",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Fetch information about the currently connected user account.\r\n/// @returns {struct}\r\n",
                    "externalName": "Discord_Users_GetCurrentUser",
                    "help": "Discord_Users_GetCurrentUser()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Users_SetCurrentUsername",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Set current user's username information.",
                    "externalName": "Discord_Users_SetCurrentUsername",
                    "help": "Discord_Users_SetCurrentUsername(name)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Users_GetCurrentUserPremiumType",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Get the\u00c2\u00a0PremiumType\u00c2\u00a0for the currently connected user.\r\n/// @returns {real}",
                    "externalName": "Discord_Users_GetCurrentUserPremiumType",
                    "help": "Discord_Users_GetCurrentUserPremiumType()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Users_GetUser",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Get user information for a given id.\r\n/// @returns {struct}",
                    "externalName": "Discord_Users_GetUser",
                    "help": "Discord_Users_GetUser(userId)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Activities_UpdateActivity",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "documentation": "/// @description Sets a user's presence in Discord to a new activity. This has a rate limit of 5 updates per 20 seconds.\r\n/// @param {struct} activityData A struct containing the activity data to update.",
                    "externalName": "Discord_Activities_UpdateActivity",
                    "help": "Discord_Activities_UpdateActivity(activityData)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Activities_AcceptInvite",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Accepts a game invitation from a given userId.\r\n/// @param {int64} userId the user id to accept the invite from.",
                    "externalName": "Discord_Activities_AcceptInvite",
                    "help": "Discord_Activities_AcceptInvite(userId)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Activities_ClearActivity",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Clear's a user's presence in Discord to make it show nothing.",
                    "externalName": "Discord_Activities_ClearActivity",
                    "help": "Discord_Activities_ClearActivity()",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Activities_RegisterCommand",
                    "argCount": 0,
                    "args": [],
                    "documentation": "",
                    "externalName": "Discord_Activities_RegisterCommand",
                    "help": "Discord_Activities_RegisterCommand(name)",
                    "hidden": true,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Activities_RegisterSteam",
                    "argCount": 0,
                    "args": [],
                    "documentation": "",
                    "externalName": "Discord_Activities_RegisterSteam",
                    "help": "Discord_Activities_RegisterSteam(steamId)",
                    "hidden": true,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Activities_SendInvite",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Sends a game invite to a given user. If you do not have a valid activity with all the required fields, this call will error. See Activity Action Field Requirements for the fields required to have join and spectate invites function properly.\r\n/// @param {int64} userId The id of the user to invite\r\n/// @param {real} actionType Marks the invite as an invitation to join or spectate\r\n/// @param {string} message A message to send along with the invite",
                    "externalName": "Discord_Activities_SendInvite",
                    "help": "Discord_Activities_SendInvite(userId,type,content)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Activities_SendRequestReply",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description Sends a reply to an Ask to Join request.\r\n/// @param {int64} userId The user id to reply to\r\n/// @param {real} reply No, Yes, or Ignore",
                    "externalName": "Discord_Activities_SendRequestReply",
                    "help": "Discord_Activities_SendRequestReply(userId,requestReply)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "Discord_Relationships_Filter",
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @description This function performs a query over the relationships of the current user selection only the ones that match the given type.\r\n/// @param {Real} type The type of relationship to filter when performing the query.",
                    "externalName": "Discord_Relationships_Filter",
                    "help": "Discord_Relationships_Filter(type)",
                    "hidden": false,
                    "kind": 1,
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                {
                    "name": "Discord_Core_Create",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Core_RunCallbacks",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Images_Fetch",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Overlay_OpenActivityInvite",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Overlay_IsEnabled",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Overlay_IsLocked",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Overlay_OpenGuildInvite",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Overlay_OpenVoiceSettings",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Overlay_SetLocked",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Relationships_Filter",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Relationships_Count",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Relationships_Get",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Relationships_GetAt",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Users_GetCurrentUser",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Users_GetCurrentUserPremiumType",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Users_GetUser",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Users_SetCurrentUsername",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Activities_UpdateActivity",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Activities_AcceptInvite",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Activities_ClearActivity",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Activities_RegisterCommand",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Activities_RegisterSteam",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Activities_SendInvite",
                    "path": "extensions/Discord/Discord.yy"
                },
                {
                    "name": "Discord_Activities_SendRequestReply",
                    "path": "extensions/Discord/Discord.yy"
                }
            ],
            "origname": "",
            "ProxyFiles": [
                {
                    "resourceType": "GMProxyFile",
                    "resourceVersion": "1.0",
                    "name": "DiscordGameSDK.so",
                    "TargetMask": 7
                },
                {
                    "resourceType": "GMProxyFile",
                    "resourceVersion": "1.0",
                    "name": "DiscordGameSDK_x64.dll",
                    "TargetMask": 6
                },
                {
                    "resourceType": "GMProxyFile",
                    "resourceVersion": "1.0",
                    "name": "libDiscordGameSDK.dylib",
                    "TargetMask": 1
                }
            ],
            "uncompress": false,
            "usesRunnerInterface": true
        },
        {
            "resourceType": "GMExtensionFile",
            "resourceVersion": "1.0",
            "name": "",
            "constants": [],
            "copyToTargets": 2,
            "filename": "discord_game_sdk.dylib",
            "final": "",
            "functions": [],
            "init": "",
            "kind": 1,
            "order": [],
            "origname": "",
            "ProxyFiles": [],
            "uncompress": false,
            "usesRunnerInterface": false
        }
    ],
    "gradleinject": "",
    "hasConvertedCodeInjection": true,
    "helpfile": "",
    "HTML5CodeInjection": "",
    "html5Props": false,
    "IncludedResources": [],
    "installdir": "",
    "iosCocoaPodDependencies": "",
    "iosCocoaPods": "",
    "ioscodeinjection": "",
    "iosdelegatename": "",
    "iosplistinject": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [],
    "iosThirdPartyFrameworkEntries": [],
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": [
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "__extOptLabel",
            "defaultValue": "BUILD OPTIONS:",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "94621621-2cf8-4f3a-af2d-9ac216b1f7ea",
            "hidden": false,
            "listItems": [],
            "optType": 5
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "sdkPath",
            "defaultValue": "../Discord_sdk/",
            "description": "The path to the Discord SDK folder.",
            "displayName": "SDK Path",
            "exportToINI": false,
            "extensionId": null,
            "guid": "e134ef2d-c3eb-4b42-a122-6e188d687799",
            "hidden": false,
            "listItems": [],
            "optType": 4
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "__extOptLabel1",
            "defaultValue": "APP OPTIONS:",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "41bb8b5a-8156-4801-8daa-1d63a92a633e",
            "hidden": false,
            "listItems": [],
            "optType": 5
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "appId",
            "defaultValue": "0",
            "description": "The current application ID.\r\nThis must be converted to int64 and passed into the 'Discord_Core_Create' function.",
            "displayName": "Application ID",
            "exportToINI": false,
            "extensionId": null,
            "guid": "ac8085d4-4a6b-4b74-b8fc-3d0d5bfe8788",
            "hidden": false,
            "listItems": [],
            "optType": 2
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "__extOptLabel2",
            "defaultValue": "EXTRA OPTIONS:",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "02bfeaa4-3ad9-41a6-89de-53589996e5b6",
            "hidden": false,
            "listItems": [],
            "optType": 5
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "logLevel",
            "defaultValue": "1",
            "description": "The log level to be used by the script file.\r\n0: Show only errors\r\n1: Show errors and warnings (recommended)\r\n2: Show everything (use before submitting a bug)",
            "displayName": "Log Level",
            "exportToINI": false,
            "extensionId": null,
            "guid": "91c64cff-21ef-4197-b512-db6e37141d10",
            "hidden": false,
            "listItems": [
                "0",
                "1",
                "2"
            ],
            "optType": 6
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "sdkVersion",
            "defaultValue": "3.2.1",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "36af8a07-65d3-43d9-b96c-826e989e6da9",
            "hidden": true,
            "listItems": [],
            "optType": 2
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "sdkHashWin",
            "defaultValue": "A6B6D7DF00A58DC50248D91048578D0FE52182286B487EF89A961FD10467DBD1",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "2a612597-f7c7-40f0-a1ae-17d4a46a6f9a",
            "hidden": true,
            "listItems": [],
            "optType": 2
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "sdkHashMac",
            "defaultValue": "C4960F31A59020F94CE394FDFC5762A6F5077DD711D26CE936086E77BECEEA09",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "9fbf9189-0eb4-452e-bdb1-08476a9fa9ef",
            "hidden": true,
            "listItems": [],
            "optType": 2
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "sdkHashLinux",
            "defaultValue": "ED22F6755EFF063893F3A0FE3FAD02B1DDF260FBA1C3064D3FE3046B350C75D8",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "bbfcb00e-31e9-4aa0-b9a7-cc362524152c",
            "hidden": true,
            "listItems": [],
            "optType": 2
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "versionStable",
            "defaultValue": "2023.1.0.0",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "7ed654e9-6841-42d2-82ae-902be5cc1a6d",
            "hidden": true,
            "listItems": [],
            "optType": 2
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "versionBeta",
            "defaultValue": "2023.100.0.0",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "5321e9d0-efdc-4303-bfe5-031775bddde1",
            "hidden": true,
            "listItems": [],
            "optType": 2
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "versionDev",
            "defaultValue": "9.9.1.293",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "5a08f50f-c384-4017-8588-ebe4d1633bb4",
            "hidden": true,
            "listItems": [],
            "optType": 2
        },
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "versionLTS",
            "defaultValue": "2022.0.2.24",
            "description": "",
            "displayName": "",
            "exportToINI": false,
            "extensionId": null,
            "guid": "89030162-b8a9-449b-8085-3aaa1c5e5ead",
            "hidden": true,
            "listItems": [],
            "optType": 2
        }
    ],
    "optionsFile": "options.json",
    "packageId": "",
    "parent": {
        "name": "Discord",
        "path": "folders/Discord.yy"
    },
    "productId": "",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosclassname": null,
    "tvosCocoaPodDependencies": "",
    "tvosCocoaPods": "",
    "tvoscodeinjection": "",
    "tvosdelegatename": null,
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [],
    "tvosThirdPartyFrameworkEntries": []
}