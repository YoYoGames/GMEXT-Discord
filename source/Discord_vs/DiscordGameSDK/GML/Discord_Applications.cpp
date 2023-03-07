

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

YYEXPORT void Discord_Application_GetOAuth2Token(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	state.core->ApplicationManager().GetOAuth2Token([](discord::Result result, const discord::OAuth2Token token)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Application_GetOAuth2Token");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
				DsMapAddString(map, "accessToken", token.GetAccessToken());
				DsMapAddInt64(map, "expires", token.GetExpires());
				DsMapAddString(map, "scopes", token.GetScopes());
			}
			else
			{

			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}

YYEXPORT void Discord_Application_GetCurrentBranch(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	char branch[999];
	state.core->ApplicationManager().GetCurrentBranch(branch);

	YYCreateString(&Result, branch);

}

YYEXPORT void Discord_Application_GetCurrentLocale(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	char locale[999];
	state.core->ApplicationManager().GetCurrentLocale(locale);

	YYCreateString(&Result, locale);
}

YYEXPORT void Discord_Application_GetTicket(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	state.core->ApplicationManager().GetTicket([](discord::Result result, const char* ticket)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Application_GetTicket");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
				DsMapAddString(map, "ticket", ticket);
			}
			else
			{

			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}

YYEXPORT void Discord_Application_ValidateOrExit(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	state.core->ApplicationManager().ValidateOrExit([](discord::Result result)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Application_ValidateOrExit");
			DsMapAddDouble(map, "result", (double)result);

			if (result == discord::Result::Ok)
			{
			}
			else
			{

			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}
