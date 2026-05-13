# GMEXT-Discord

Repository for GameMaker's Discord Social Extension

This repository was created with the intent of presenting users with the latest version available of the extension (even previous to marketplace updates) and also provide a way for the community to contribute with bug fixes and feature implementation.

This extension wraps the [Discord Social SDK](https://discord.com/developers/docs/social-sdk/overview) (the Discord Partner SDK), providing voice calls, audio device management, rich presence, lobbies, messaging, relationships and OAuth2 authentication.

This extension will work on Windows, macOS, Linux, iOS and Android.

SOURCE CODE: `source/DiscordSocial_gml/extensions/GMDiscordSocial/source/`

GAMEMAKER PROJECT: `source/DiscordSocial_gml/DiscordSocial.yyp`

CMAKE PRESETS: `source/DiscordSocial_gml/extensions/GMDiscordSocial/source/CMakePresets.json`

After compilation the exported dll/dylib/so/aar/xcframework file is automatically copied into the extension folder inside the included GameMaker project folder.

## Requirements

The pre-compiled Discord Social SDK (headers and binaries for all supported platforms) is bundled with the repository under `source/discord_social_sdk/`, so no separate SDK download is required.

The native bridge is built with **CMake 3.21+** and a **C++17** compiler. From `source/DiscordSocial_gml/extensions/GMDiscordSocial/source/` you can configure and build using one of the provided presets, for example:

```
cmake --preset win-x64-release
cmake --build --preset win-x64-release
```

Other available presets include `macos-release`, `linux-clang-x64-release`, `android-arm64-v8a-release` and `ios-xcframework-release`.

**Important**

The public API surface is defined in `extensions/GMDiscordSocial/source/spec.gmidl` and the GML wrappers, extension manifest entries, C++ bridge stubs and documentation stubs are generated from it via the **extgen** tool. Do not edit any generated file directly (`scripts/GMDiscordSocial_api/`, `extensions/GMDiscordSocial/source/code_gen/`, `docs/extgen_docs.js`); regenerate them from the spec instead.

## Documentation

- Check [the documentation](/YoYoGames/GMEXT-Discord/wiki)

The online documentation is regularly updated to ensure it contains the most current information. For those who prefer a different format, we also offer a HTML version. This HTML is directly converted from the GitHub Wiki content, ensuring consistency, although it may follow slightly behind in updates.

We encourage users to refer primarily to the GitHub Wiki for the latest information and updates. The HTML version, included with the extension and within the demo project's data files, serves as a secondary, static reference.

Additionally, if you're contributing new features through PR (Pull Requests), we kindly ask that you also provide accompanying documentation for these features, to maintain the comprehensiveness and usefulness of our resources.
