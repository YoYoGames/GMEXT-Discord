#pragma once

#include "discord.h"

#include "YYRValue.h"
#include "Extension_Interface.h"

RValue user_getStruct(discord::User user);

RValue partySize_getStruct(discord::PartySize partySize);

RValue activityTimestamps_getStruct(discord::ActivityTimestamps activityTimestamps);

RValue activityAssets_getStruct(discord::ActivityAssets activityAssets);

RValue activityParty_getStruct(discord::ActivityParty activityParty);

RValue activitySecrets_getStruct(discord::ActivitySecrets activitySecrets);

RValue activity_getStruct(discord::Activity activity);

RValue presence_getStruct(discord::Presence presence);

RValue relationship_getStruct(discord::Relationship relationship);
