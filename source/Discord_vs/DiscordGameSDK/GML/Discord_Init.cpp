
#define _CRT_SECURE_NO_WARNINGS

#include "pch.h"
#include "utils.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

#include <filesystem>
#include <string>
#include <vector>
#include <sstream>

#include "DiscordCommon.h"

#include <iostream>


DiscordState state = {};

int requestInd = 0;
int getAsyncRequestInd()
{
	requestInd++;
	return requestInd;
}

//#ifdef OS_Windows
//extern "C" __declspec(dllexport) void PreGraphicsInitialisation(char* arg1)
//#endif
//#if defined(OS_Linux) || defined(OS_MacOs)
//extern "C" void PreGraphicsInitialisation(char* arg1)
//#endif
void OldPreGraphicsInitialisation()
{

}


YYRunnerInterface gs_runnerInterface;
YYRunnerInterface* g_pYYRunnerInterface;

YYEXPORT void YYExtensionInitialise(const struct YYRunnerInterface* _pFunctions, size_t _functions_size)
{
	//copy out all the functions 
	memcpy(&gs_runnerInterface, _pFunctions, sizeof(YYRunnerInterface));
	g_pYYRunnerInterface = &gs_runnerInterface;

	if (_functions_size < sizeof(YYRunnerInterface)) {
		DebugConsoleOutput("ERROR : runner interface mismatch in extension DLL\n ");
	} // end if

	DebugConsoleOutput("YYExtensionInitialise CONFIGURED \n ");

}

discord::UserManager *mUserManager;
discord::ActivityManager *mActivityManager;
discord::OverlayManager* mOverlayManager;
discord::AchievementManager* mAchievementManager;
discord::RelationshipManager* mRelationshipManager;
YYEXPORT void Discord_Core_Create(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int64 appId = YYGetInt64(arg, 0);

	discord::Core* core{};
	discord::Core::Create(appId, DiscordCreateFlags_Default, &core);
	state.core.reset(core);

	mUserManager = &state.core->UserManager();
	mUserManager->OnCurrentUserUpdate.Connect([]()
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Users_OnCurrentUserUpdate");
			CreateAsyncEventWithDSMap(map, 70);
		});

	mActivityManager = &state.core->ActivityManager();
	mActivityManager->OnActivityJoinRequest.Connect([](discord::User const& user) 
		{
			DebugConsoleOutput("OnActivityJoinRequest\n");
		});
	mActivityManager->OnActivityInvite.Connect([](discord::ActivityActionType t, discord::User const& user, discord::Activity const& a)
		{
			DebugConsoleOutput("OnActivityInvite\n");
		});
	mActivityManager->OnActivityJoin.Connect([](const char* secret)
		{
			DebugConsoleOutput("OnActivityJoin\n");
		});
	mActivityManager->OnActivitySpectate.Connect([](const char* secret)
		{
			DebugConsoleOutput("OnActivitySpectate\n");
		});

	mOverlayManager = &state.core->OverlayManager();
	mOverlayManager->OnToggle.Connect([](bool locked) 
		{
			if(locked)
				DebugConsoleOutput("Overlay Locked\n");
			else
				DebugConsoleOutput("Overlay Unlocked\n");
		});

	mAchievementManager = &state.core->AchievementManager();
	mAchievementManager->OnUserAchievementUpdate.Connect([](auto slot)
		{
			DebugConsoleOutput("OnUserAchievementUpdate\n");
		});


	mRelationshipManager = &state.core->RelationshipManager();
	mRelationshipManager->OnRelationshipUpdate.Connect([](discord::Relationship const& relationship)
		{
			DebugConsoleOutput("Relationship with ");
			DebugConsoleOutput(relationship.GetUser().GetUsername());
			DebugConsoleOutput(" updated!\n");
		});

	mRelationshipManager->OnRefresh.Connect([&]() 
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Relationships_OnCurrentUserUpdate");
			CreateAsyncEventWithDSMap(map, 70);
		});
	
	state.core->SetLogHook(discord::LogLevel::Debug, [](discord::LogLevel level, const char* message) 
		{
			switch (level) 
			{
				case discord::LogLevel::Debug: DebugConsoleOutput("[Debug] %s\n", message); break;
				case discord::LogLevel::Warn: DebugConsoleOutput("[Warn] %s\n", message); break;
				case discord::LogLevel::Error: DebugConsoleOutput("[Error] %s\n", message); break;
				case discord::LogLevel::Info: DebugConsoleOutput("[Info] %s\n", message); break;
				default: DebugConsoleOutput("%s", message); break;
			}
		});


	bool success;
	if (!state.core) {
		DebugConsoleOutput("Failed to instantiate Discord\n");
		success = false;
		//return;//std::exit(-1);
	}
	else
		success = true;

	Result.kind = VALUE_BOOL;
	Result.val = success;
}

YYEXPORT void Discord_Core_RunCallbacks(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	state.core->RunCallbacks();
}

//YYEXPORT void ext_json_test(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
//{
//	DebugConsoleOutput("ext_json_test\n");
//
//	const char* arg1 = YYGetString(arg, 0);
//	json_object* jobj = json_tokener_parse(arg1);
//
//	uint32 AppID = json_object_get_int(json_object_object_get(jobj, "ProductId"));
//	bool debug = json_object_get_boolean(json_object_object_get(jobj, "Debug"));
//
//	DebugConsoleOutput("ext_json_test %i\n", AppID);
//	DebugConsoleOutput("ext_json_test %i\n", debug);
//}

