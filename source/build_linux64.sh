#!/bin/sh
g++ -m64 \
    -std=c++17 \
	Discord_vs/DiscordGameSDK/*.cpp \
    Discord_vs/DiscordGameSDK/GML/*.cpp \
    -Wl,-rpath,assets/ -fPIC \
    -LDiscord_sdk/lib/x86_64 \
    -IDiscord_sdk/cpp/ \
	-IDiscord_vs/DiscordGameSDK/GML/ \
	-IDiscord_vs/DiscordGameSDK/ \
    -shared -o Discord_gml/extensions/Discord/DiscordGameSDK.so