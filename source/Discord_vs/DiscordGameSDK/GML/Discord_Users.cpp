

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

YYEXPORT void Discord_Users_GetCurrentUser(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	discord::User currentUser;
	state.core->UserManager().GetCurrentUser(&currentUser);

	RValue Struct = user_getStruct(currentUser);

	COPY_RValue(&Result, &Struct);
	FREE_RValue(&Struct);
}

YYEXPORT void Discord_Users_SetCurrentUsername(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	char* name = (char*)YYGetString(arg, 0);

	discord::User currentUser;
	state.core->UserManager().GetCurrentUser(&currentUser);
	currentUser.SetUsername(name);
}

YYEXPORT void Discord_Users_GetCurrentUserPremiumType(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	discord::PremiumType premiumType;
	state.core->UserManager().GetCurrentUserPremiumType(&premiumType);
	
	Result.kind = VALUE_REAL;
	Result.val = (int)premiumType;
}

YYEXPORT void Discord_Users_GetUser(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int64 userId = YYGetInt64(arg, 0);

	state.core->UserManager().GetUser(userId,
		[](discord::Result result, discord::User const& user) {
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Users_GetUser");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
				RValue result = user_getStruct(user);
				DsMapAddRValue(map, "user", &result);
			}
			else
			{

			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}
