
surf = noone

L = 64 // only 2^x values (64,128,256,512,1024)

if(!variable_instance_exists(id,"userId"))
{
	show_debug_message("Discord User Initilization Error")
	instance_destroy()
	exit
}

Discord_Images_Fetch(userId,L)

if(!variable_instance_exists(id,"username"))
{
	username = ""
	Discord_Users_GetUser(userId)
}
