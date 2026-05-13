
if(locked)
	exit

discord_social_client_send_lobby_message(obj_discord_social_lobby_create_join.lobby_id,"Hello :)",function(result, message_id){
		show_debug_message($"Msg Sent: {{result, message_id}}")
		show_debug_message(discord_social_client_get_message_handle(message_id))
	})

