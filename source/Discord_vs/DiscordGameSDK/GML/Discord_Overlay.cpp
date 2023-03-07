

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


YYEXPORT void Discord_Overlay_OpenActivityInvite(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int activity = YYGetReal(arg, 0);

	//discord::ActivityActionType::Join
	//	or
	//discord::ActivityActionType::Spectate

	state.core->OverlayManager().OpenActivityInvite((discord::ActivityActionType) activity, [](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Overlay_OpenActivityInvite");
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

YYEXPORT void Discord_Overlay_IsEnabled(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	bool enabled;
	state.core->OverlayManager().IsEnabled(&enabled);
	
	Result.kind = VALUE_BOOL;
	Result.val = enabled;
}

YYEXPORT void Discord_Overlay_IsLocked(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	bool locked;
	state.core->OverlayManager().IsLocked(&locked);

	Result.kind = VALUE_BOOL;
	Result.val = locked;
}

YYEXPORT void Discord_Overlay_OpenGuildInvite(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	char* code = (char*)YYGetString(arg, 0);
	state.core->OverlayManager().OpenGuildInvite(code, [](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Overlay_OpenGuildInvite");
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

YYEXPORT void Discord_Overlay_OpenVoiceSettings(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	state.core->OverlayManager().OpenVoiceSettings([](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Overlay_OpenVoiceSettings");
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

YYEXPORT void Discord_Overlay_SetLocked(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	bool locked = YYGetBool(arg, 0);

	state.core->OverlayManager().SetLocked(locked, [](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Overlay_SetLocked");
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

