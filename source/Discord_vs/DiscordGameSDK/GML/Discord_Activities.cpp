
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


bool TryStructGetStringMember(RValue* val, const char* key, std::string &result, const char* function = "")
{
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

bool TryStructGetRealMember(RValue* val, const char* key, double &result, const char* function = "")
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

YYEXPORT void Discord_Activities_UpdateActivity(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	RValue* data = YYGetStruct(arg, 0);
	
	if (data == NULL) return;

	discord::Activity activity{};

	std::string text;
	if (TryStructGetStringMember(data, "details", text, __FUNCTION__))
	{
		activity.SetDetails(text.c_str());
	}

	if (TryStructGetStringMember(data, "state", text, __FUNCTION__))
	{
		activity.SetState(text.c_str());
	}

	if (TryStructGetStringMember(data, "smallImage", text, __FUNCTION__))
	{
		activity.GetAssets().SetSmallImage(text.c_str());
	}

	if (TryStructGetStringMember(data, "smallText", text, __FUNCTION__))
	{
		activity.GetAssets().SetSmallText(text.c_str());
	}

	if (TryStructGetStringMember(data, "largeImage", text, __FUNCTION__))
	{
		activity.GetAssets().SetLargeImage(text.c_str());
	}

	if (TryStructGetStringMember(data, "largeText", text, __FUNCTION__))
	{
		activity.GetAssets().SetLargeText(text.c_str());
	}

	double number;
	if (TryStructGetRealMember(data, "type", number, __FUNCTION__))
	{
		activity.SetType((discord::ActivityType)number);
	}

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
