# GMEXT-Discord

> [!WARNING]
> This extension makes use of the Discord [Game SDK](https://discord.com/developers/docs/developer-tools/game-sdk), which has been replaced by a [REST API](https://discord.com/developers/docs/reference). Several parts of functionality have been deprecated by Discord and may or may not work. See [https://discord.com/developers/docs/developer-tools/game-sdk](discord.com/developers/docs/developer-tools/game-sdk) for what's supported and what's no longer supported.

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

