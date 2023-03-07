
#include "pch.h"
#include "discord.h"


#pragma once
struct DiscordState {
	std::unique_ptr<discord::Core> core;
};

