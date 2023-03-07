

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

YYEXPORT void Discord_Relationships_Count(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	std::int32_t count{ 0 };
	state.core->RelationshipManager().Count(&count);

	Result.kind = VALUE_REAL;
	Result.val = (double) count;
}

YYEXPORT void Discord_Relationships_Get(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int64 userId = YYGetInt64(arg, 0);

	discord::Relationship relationship;
	state.core->RelationshipManager().Get(userId, &relationship);

	RValue Struct = relationship_getStruct(relationship);

	COPY_RValue(&Result, &Struct);
	FREE_RValue(&Struct);
}

YYEXPORT void Discord_Relationships_GetAt(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int index = YYGetReal(arg, 0);

	discord::Relationship relationship;
	state.core->RelationshipManager().GetAt(index,&relationship);

	RValue Struct = relationship_getStruct(relationship);

	COPY_RValue(&Result, &Struct);
	FREE_RValue(&Struct);
}

YYEXPORT void Discord_Relationships_Filter(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	int type = YYGetReal(arg, 0);

		//None,
		//Friend,
		//Blocked,
		//PendingIncoming,
		//PendingOutgoing,
		//Implicit,
	
	state.core->RelationshipManager().Filter([&](discord::Relationship const& relationship) -> bool
		{
			return relationship.GetType() == (discord::RelationshipType)type;
		});
}


