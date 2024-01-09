
#include "pch.h"
#include "utils.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

#include "DiscordCommon.h"

#include <filesystem>
#include <string>
#include <vector>
#include <sstream>
#include <iostream>


bool tryStructGetStringMember(RValue* val, const char* key, std::string &result, const char* function = "")
{
	DebugConsoleOutput("Something %p\n", val);
	RValue* member = YYStructGetMember(val, key);
	if (member != NULL)
	{
		if (KIND_RValue(member) == VALUE_STRING)
		{
			result = member->pRefString->m_thing;
			return true;
		}

		YYError("%s :: member '%s' must be of type string\n", function, key);
		return false;
	}
	return false;
}

bool tryStructGetRealMember(RValue* val, const char* key, double &result, const char* function = "")
{
	RValue* member = YYStructGetMember(val, key);
	if (member != NULL)
	{
		int kind = KIND_RValue(member);
		if (kind == VALUE_REAL || kind == VALUE_INT32 || kind == VALUE_INT64 || kind == VALUE_BOOL)
		{
			result = REAL_RValue(member);
			return true;
		}

		YYError("%s :: member '%s' must be of type number\n", function, key);
		return false;
	}
	return false;
}

bool tryStructGetBoolMember(RValue* val, const char* key, bool& result, const char* function = "")
{
	RValue* member = YYStructGetMember(val, key);
	if (member != NULL)
	{
		int kind = KIND_RValue(member);
		if (kind == VALUE_REAL || kind == VALUE_INT32 || kind == VALUE_INT64 || kind == VALUE_BOOL)
		{
			result = BOOL_RValue(member);
			return true;
		}

		YYError("%s :: member '%s' must be of type number\n", function, key);
		return false;
	}
	return false;
}

bool tryStructGetStructMember(RValue* val, const char* key, RValue* &result, const char* function = "")
{
	RValue* member = YYStructGetMember(val, key);
	if (member != NULL)
	{
		int kind = KIND_RValue(member);
		if (kind == VALUE_OBJECT)
		{
			result = member;
			return true;
		}

		YYError("%s :: member '%s' must be of type struct\n", function, key);
		return false;
	}
	return false;
}

bool tryStructGetInt64Member(RValue* val, const char* key, int64_t& result, const char* function = "")
{
	RValue* member = YYStructGetMember(val, key);
	if (member != NULL)
	{
		int kind = KIND_RValue(member);
		if (kind == VALUE_REAL || kind == VALUE_INT32 || kind == VALUE_INT64 || kind == VALUE_BOOL)
		{
			result = YYGetInt64(val, 0);
			return true;
		}

		YYError("%s :: member '%s' must be of type number\n", function, key);
		return false;
	}
	return false;
}

YYEXPORT void Discord_Activities_UpdateActivity(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	RValue* activityData = YYGetStruct(arg, 0);
	
	if (activityData == NULL) return;

	discord::Activity activity{};

	std::string text;
	double number = 0;
	bool boolean = false;

	if (tryStructGetStringMember(activityData, "state", text, __FUNCTION__))
	{
		activity.SetState(text.c_str());
	}

	if (tryStructGetStringMember(activityData, "details", text, __FUNCTION__))
	{
		activity.SetDetails(text.c_str());
	}

	// Timestamps
	{
		RValue* timestampsData = nullptr;
		if (tryStructGetStructMember(activityData, "timestamps", timestampsData, __FUNCTION__))
		{
			int64_t _timestamp = 0;
			if (tryStructGetInt64Member(timestampsData, "startTime", _timestamp, __FUNCTION__))
			{
				activity.GetTimestamps().SetStart(_timestamp);
			}

			if (tryStructGetInt64Member(timestampsData, "endTime", _timestamp, __FUNCTION__))
			{
				activity.GetTimestamps().SetEnd(_timestamp);
			}
		}
	}

	// Assets
	{
		RValue* assetsData = nullptr;
		if (tryStructGetStructMember(activityData, "assets", assetsData, __FUNCTION__))
		{
			if (tryStructGetStringMember(assetsData, "smallImage", text, __FUNCTION__))
			{
				activity.GetAssets().SetSmallImage(text.c_str());
			}

			if (tryStructGetStringMember(assetsData, "smallText", text, __FUNCTION__))
			{
				activity.GetAssets().SetSmallText(text.c_str());
			}

			if (tryStructGetStringMember(assetsData, "largeImage", text, __FUNCTION__))
			{
				activity.GetAssets().SetLargeImage(text.c_str());
			}

			if (tryStructGetStringMember(assetsData, "largeText", text, __FUNCTION__))
			{
				activity.GetAssets().SetLargeText(text.c_str());
			}
		}
	}

	// Party
	{
		RValue* partyData = nullptr;
		if (tryStructGetStructMember(activityData, "party", partyData, __FUNCTION__))
		{
			if (tryStructGetStringMember(partyData, "id", text, __FUNCTION__))
			{
				activity.GetParty().SetId(text.c_str());
			}

			// PartySize
			RValue* partySizeData = nullptr;
			if (tryStructGetStructMember(partyData, "size", partySizeData, __FUNCTION__))
			{
				if (tryStructGetRealMember(partyData, "currentSize", number, __FUNCTION__))
				{
					activity.GetParty().GetSize().SetCurrentSize((int32_t)number);
				}

				if (tryStructGetRealMember(partyData, "maxSize", number, __FUNCTION__))
				{
					activity.GetParty().GetSize().SetMaxSize((int32_t)number);
				}

				activity.GetAssets().SetSmallText(text.c_str());
			}
		}
	}

	// Secrets
	{
		RValue* secretsData = nullptr;
		if (tryStructGetStructMember(activityData, "secrets", secretsData, __FUNCTION__))
		{
			if (tryStructGetStringMember(secretsData, "match", text, __FUNCTION__))
			{
				activity.GetSecrets().SetMatch(text.c_str());
			}

			if (tryStructGetStringMember(secretsData, "join", text, __FUNCTION__))
			{
				activity.GetSecrets().SetJoin(text.c_str());
			}

			if (tryStructGetStringMember(secretsData, "spectate", text, __FUNCTION__))
			{
				activity.GetSecrets().SetSpectate(text.c_str());
			}


		}
	}

	if (tryStructGetBoolMember(activityData, "instance", boolean, __FUNCTION__))
	{
		activity.SetInstance(boolean);
	}

	// ############# OLD FOR COMPATIBILITY #############

	if (tryStructGetStringMember(activityData, "smallImage", text, __FUNCTION__))
	{
		activity.GetAssets().SetSmallImage(text.c_str());
	}

	if (tryStructGetStringMember(activityData, "smallText", text, __FUNCTION__))
	{
		activity.GetAssets().SetSmallText(text.c_str());
	}

	if (tryStructGetStringMember(activityData, "largeImage", text, __FUNCTION__))
	{
		activity.GetAssets().SetLargeImage(text.c_str());
	}

	if (tryStructGetStringMember(activityData, "largeText", text, __FUNCTION__))
	{
		activity.GetAssets().SetLargeText(text.c_str());
	}

	if (tryStructGetRealMember(activityData, "type", number, __FUNCTION__))
	{
		activity.SetType((discord::ActivityType)number);
	}

	// #################################################

	state.core->ActivityManager().UpdateActivity(activity, [](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Activities_UpdateActivity");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
				DsMapAddDouble(map, "success", 1.0);
			}
			else
			{
				DsMapAddDouble(map, "success", 0.0);
			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}

YYEXPORT void Discord_Activities_AcceptInvite(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int64 userId = YYGetInt64(arg, 0);

	state.core->ActivityManager().AcceptInvite(userId, [](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Activities_AcceptInvite");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
				DsMapAddDouble(map, "success", 1.0);
			}
			else
			{
				DsMapAddDouble(map, "success", 0.0);
			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}

YYEXPORT void Discord_Activities_ClearActivity(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	state.core->ActivityManager().ClearActivity([](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Activities_ClearActivity");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
				DsMapAddDouble(map, "success", 1.0);
			}
			else
			{
				DsMapAddDouble(map, "success", 0.0);
			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}

YYEXPORT void Discord_Activities_RegisterCommand(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	char* name = (char*)YYGetString(arg, 0);
	state.core->ActivityManager().RegisterCommand(name);
}

YYEXPORT void Discord_Activities_RegisterSteam(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int32 steamId = YYGetReal(arg, 0);

	state.core->ActivityManager().RegisterSteam(steamId);
}

YYEXPORT void Discord_Activities_SendInvite(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int64 userId = YYGetInt64(arg, 0);
	int type = YYGetReal(arg, 1);
	char* content = (char*)YYGetString(arg, 2);

	state.core->ActivityManager().SendInvite(userId,(discord::ActivityActionType) type, content,[](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Activities_SendInvite");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
				DsMapAddDouble(map, "success", 1.0);
			}
			else
			{
				DsMapAddDouble(map, "success", 0.0);
			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}

YYEXPORT void Discord_Activities_SendRequestReply(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int64 userId = YYGetInt64(arg, 0);
	int requestReply = YYGetReal(arg, 1);

	state.core->ActivityManager().SendRequestReply(userId, (discord::ActivityJoinRequestReply)requestReply,[](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Activities_SendRequestReply");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
				DsMapAddDouble(map, "success", 1.0);
			}
			else
			{
				DsMapAddDouble(map, "success", 0.0);
			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}
