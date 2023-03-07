
show_debug_message(json_encode(async_load))

switch(async_load[?"type"])
{
	case "Discord_Users_OnCurrentUserUpdate":
		
		OnCurrentUserUpdate_Triggered = true
		
		if(room != Room_Discord_Menu)
			exit
		
		Function_CreateCurrentUser()
		
	break;
}

