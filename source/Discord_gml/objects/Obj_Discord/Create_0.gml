
var _applicationId = int64(extension_get_option_value("Discord", "appId"));

if(!Discord_Core_Create(_applicationId)) //You can assign a flag creation using: Discord_CreateFlags_NoRequireDiscord or Discord_CreateFlags_Default
{
	show_message_async("Discord Initialization Error")
	exit
}

OnCurrentUserUpdate_Triggered = false

function Function_CreateCurrentUser()
{
	var _struct = Discord_Users_GetCurrentUser()
	instance_create_depth(100, 130, depth, Obj_Discord_User, _struct)
}
