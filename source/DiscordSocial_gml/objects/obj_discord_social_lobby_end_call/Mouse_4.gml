
if(locked)
	exit

discord_social_client_end_call(obj_discord_social_lobby_create_join.lobby_id,function(){})

obj_discord_social_lobby_call.locked = false
obj_discord_social_lobby_end_call.locked = true
