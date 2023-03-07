#!/bin/sh
g++ -m64 \
    -std=c++17 \
	json-c-0.9/*.c \
	VisualStudio/DiscordGameSDK/*.cpp \
    VisualStudio/DiscordGameSDK/GML/*.cpp \
    -Wl,-rpath,assets/ -fPIC \
	-Ijson-c-0.9/ \
    -LSDK/lib/x86_64 \
    -ldiscord_game_sdk \
    -ISDK/cpp/ \
	-IVisualStudio/DiscordGameSDK/GML/ \
	-IVisualStudio/DiscordGameSDK/ \
    -shared -o GameMaker/extensions/Discord/DiscordGameSDK.so