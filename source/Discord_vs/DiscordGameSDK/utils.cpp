
#include "utils.h"

/*
Id				Int64				the user's id
Username		string				their name
Discriminator	string				the user's unique discrim
Avatar			string				the hash of the user's avatar
Bot				bool				if the user is a bot user
*/
RValue user_getStruct(discord::User user)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddString(&Struct, "username", user.GetUsername());
	YYStructAddBool(&Struct, "bot", user.GetBot());
	YYStructAddInt64(&Struct, "userId", user.GetId());
	YYStructAddString(&Struct, "discriminator", user.GetDiscriminator());

	return Struct;
}

/*
CurrentSize		Int32				the current size of the party
MaxSize			Int32				the max possible size of the party
*/
RValue partySize_getStruct(discord::PartySize partySize)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddInt32(&Struct, "currentSize", partySize.GetCurrentSize());
	YYStructAddInt32(&Struct, "maxSize", partySize.GetMaxSize());

	return Struct;
}

/*
Start			Int64				unix timestamp - send this to have an "elapsed" timer
End				Int64				unix timestamp - send this to have a "remaining" timer
*/
RValue activityTimestamps_getStruct(discord::ActivityTimestamps activityTimestamps)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddInt64(&Struct, "startTimestamp", activityTimestamps.GetStart());
	YYStructAddInt64(&Struct, "endTimestamp", activityTimestamps.GetEnd());

	return Struct;
}

/*
LargeImage		string				see Activity Asset Image
LargeText		string				hover text for the large image
SmallImage		string				see Activity Asset Image
SmallText		string				hover text for the small image
*/
RValue activityAssets_getStruct(discord::ActivityAssets activityAssets)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddString(&Struct, "largeImage", activityAssets.GetLargeImage());
	YYStructAddString(&Struct, "largeText", activityAssets.GetLargeText());
	YYStructAddString(&Struct, "smallImage", activityAssets.GetSmallImage());
	YYStructAddString(&Struct, "smallText", activityAssets.GetSmallText());

	return Struct;
}

/*
Id				string				a unique identifier for this party
Size			PartySize			info about the size of the party
*/
RValue activityParty_getStruct(discord::ActivityParty activityParty)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddString(&Struct, "partyId", activityParty.GetId());
	YYStructAddString(&Struct, "id", activityParty.GetId());

	RValue result;

	result = partySize_getStruct(activityParty.GetSize());
	YYStructAddRValue(&Struct, "size", &result);

	return Struct;
}

/*
Match			string				unique hash for the given match context
Join			string				unique hash for chat invites and Ask to Join
Spectate		string				unique hash for Spectate button
*/
RValue activitySecrets_getStruct(discord::ActivitySecrets activitySecrets)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddString(&Struct, "join", activitySecrets.GetJoin());
	YYStructAddString(&Struct, "match", activitySecrets.GetMatch());
	YYStructAddString(&Struct, "spectate", activitySecrets.GetSpectate());

	return Struct;
}

/*
ApplicationId	Int64				your application id - this is a read-only field
Name			string				name of the application - this is a read-only field
State			string				the player's current party status
Details			string				what the player is currently doing
Timestamps		ActivityTimestamps	helps create elapsed/remaining timestamps on a player's profile
Assets			ActivityAssets		assets to display on the player's profile
Party			ActivityParty		information about the player's party
Secrets			ActivitySecrets		secret passwords for joining and spectating the player's game
Instance		bool 				whether this activity is an instanced context, like a match
*/
RValue activity_getStruct(discord::Activity activity)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddInt64(&Struct, "applicationId", activity.GetApplicationId());
	YYStructAddString(&Struct, "name", activity.GetName());
	YYStructAddString(&Struct, "state", activity.GetState());
	YYStructAddString(&Struct, "details", activity.GetDetails());

	RValue result;

	result = activityTimestamps_getStruct(activity.GetTimestamps());
	YYStructAddRValue(&Struct, "timestamps", &result);

	result = activityAssets_getStruct(activity.GetAssets());
	YYStructAddRValue(&Struct, "assets", &result);

	result = activityParty_getStruct(activity.GetParty());
	YYStructAddRValue(&Struct, "party", &result);

	result = activitySecrets_getStruct(activity.GetSecrets());
	YYStructAddRValue(&Struct, "secrets", &result);

	YYStructAddBool(&Struct, "instance", activity.GetInstance());

	return Struct;
}

/*
Status			Status				the user's current online status
Activity		Activity			the user's current activity
*/
RValue presence_getStruct(discord::Presence presence)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddInt(&Struct, "status", (int)presence.GetStatus());

	RValue result;

	result = activity_getStruct(presence.GetActivity());
	YYStructAddRValue(&Struct, "activity", &result);

	return Struct;
}

/*
Type			RelationshipType	what kind of relationship it is
User			User				the user the relationship is for
Presence		Presence			that user's current presence
*/
RValue relationship_getStruct(discord::Relationship relationship)
{
	RValue Struct = { 0 };
	YYStructCreate(&Struct);

	YYStructAddInt(&Struct, "type", (int)relationship.GetType());

	RValue result;

	result = user_getStruct(relationship.GetUser());
	YYStructAddRValue(&Struct, "user", &result);

	result = presence_getStruct(relationship.GetPresence());
	YYStructAddRValue(&Struct, "presence", &result);

	return Struct;
}

