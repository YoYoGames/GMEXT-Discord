# GMEXT-Discord

> [!WARNING]
> **Deprecated Extension**
> 
> This extension is currently **deprecated** because it utilizes the Discord [Game SDK](https://discord.com/developers/docs/developer-tools/game-sdk), which has been replaced by the [REST API](https://discord.com/developers/docs/reference).
> 
> We are actively working on a **rewrite** of this extension to integrate the new REST API. 
> 
> **Important:**
> - **Do not use** this extension in production environments.
> - It is provided **solely** as a test case and for educational purposes to showcase our internal source code.
> 
> Thank you for your understanding and support.

This is the source repository for GameMaker's Discord Extension.

This repository was created with the intent of presenting users with the latest version available of the extension (even previous to marketplace updates) and also provide a way for the community to contribute with bug fixes and feature implementation.

This extension will work on Windows, macOS and Linux.

VISUAL STUDIO SOURCE: `source/Discord_vs/`

XCODE SOURCE: `source/Discord_xcode/`

After compilation the exported dll/dylib/so file is automatically copied into the extension folder inside the included GameMaker project folder.

## Requirements

In order to compile for Windows/macOS/Linux you are required to [download the Discord SDK v3.2.1](https://dl-game-sdk.discordapp.net/3.2.1/discord_game_sdk.zip) and place it inside `source/Discord_sdk/`

## Documentation

We provide both a PDF version of the documentation included with the extension and inside the demo project (datafiles) and a fully converted version to the [Github Wiki](https://github.com/YoYoGames/GMEXT-Discord/wiki) format (the latter will be the most up-to-date version, the other will follow shortly after). *If there are any PR requests with new feature implementation please make sure you also provide the documentation for the implemented features.*

