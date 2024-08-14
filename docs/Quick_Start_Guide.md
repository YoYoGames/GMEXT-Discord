# Quick Start Guide

This guide describes the required steps to set up a GameMaker project for use with the Discord extension.

/**
 * @function Discord
 * @desc **Discord Function:** []() SDK Installation

1. Download the Discord SDK from the website: https://discord.com/developers/docs/game-sdk/sdk-starter-guide#step-1-get-the-thing
2. Unzip the contents of the ZIP file: 
    1. If you will only use the Discord SDK in a single project then the contents can be extracted in a directory relative to that project, e.g.: 
       - my_gamemaker_project
         - my_gamemaker_project.yyp
       - Discord_sdk
    2. If you plan to use the SDK in multiple projects, it might be better to place it somewhere else, and change the **SDK Path** extension option.

/**
 * @function Extension
 * @desc **Discord Function:** []() Configuration

1. Set the **SDK Path** extension option to the location where you installed the extension. The default value is `"../discord_game_sdk/"`. Note that this path is *relative* to the project's `.yyp` file.
2. Enter the application ID of your application in the **Application ID** field. The extension will not work if this value is set to 0 (the initial setting).  
You can create a Discord application and retrieve its ID on the [Applications page in the Developer Portal](https://discord.com/developers/applications).
3. Set the **Log Level** to 2. This log level outputs all available debug information. In case of an issue with the extension, you should provide this output with your request.

/**
 * @function Running
 * @desc **Discord Function:** []() a Game with the Extension

In order to run a game with the Discord extension, Discord must already be running. If Discord isn't running yet, the current run of your game will fail and will attempt to start Discord. The following error message is shown in [The Output Window](https://manual.yoyogames.com/Introduction/The_Output_Window.htm) in that case: 

```
FAILED: Run Program Complete
For the details of why this build failed, please review the whole log above and also see your Compile Errors window.
```

The game will not restart automatically after doing this, however, and you will need to manually run the game again, after Discord has properly started.
So the most convenient way to test your game with the Discord extension is to keep Discord open the entire time.

/**
 * @function Basic
 * @desc **Discord Function:** []() Project Code

The first thing to do is setting up the Discord extension using [`Discord_Core_Create`](Core#discord_core_create): 

```gml
var _applicationId = int64(extension_get_option_value("Discord", "appId"));
Discord_Core_Create(_applicationId);
```
The function requires the **Application ID** set earlier, which you can retrieve from the extension using the built-in function `extension_get_option_value`.

The next thing is to run the callbacks [`Discord_Core_RunCallbacks`](Core#discord_core_runcallbacks) every step. This can go in e.g. an object's Step event: 

```gml
/// @desc Step Event
Discord_Core_RunCallbacks();
```

/**
 * @function Changes
 * @desc **Discord Function:** []() to Current User

Whenever the current connected user changes something in Discord (i.e. their avatar, username, or something else), the data in the [`User`](Users#user) struct should also be changed to reflect these changes in your game.

To be notified about these changes, you should listen for an ${event.social} of type [`Discord_Users_OnCurrentUserUpdate`](Users#discord_users_oncurrentuserupdate) and update the user data by making a new call to [`Discord_Users_GetCurrentUser`](Users#discord_users_getcurrentuser) when this type of event occurs.