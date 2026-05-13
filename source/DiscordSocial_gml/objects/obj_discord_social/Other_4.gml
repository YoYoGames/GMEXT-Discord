
//discord_social_client_set_status_changed_callback should be called at start
//of the game and after a discord_social_client_disconnect()

if(room != rm_discord_social_authentication)
	exit

//Warning! Next 2 fucntions, can overload callback system....
//discord_social_client_add_log_callback(DiscordLoggingSeverity.Warning) //DiscordLoggingSeverity.Verbose it's to much info and crash the app/game
//discord_social_client_add_voice_log_callback(DiscordLoggingSeverity.Warning) //DiscordLoggingSeverity.Verbose it's to much info and crash the app/game

discord_social_client_set_status_changed_callback(function(status, error, errorDetail){
		
		show_debug_message("Discord Status changed: " + string(status))
		switch(status)
		{
			case DiscordClientStatus.Ready:
				show_debug_message("Ready!!")
				room_goto(rm_discord_social_menu)
			break
			
			default:
				show_debug_message($"Status Change: {discord_social_client_status_to_string(status)}")
			break
		}
	})

//discord_social_client_set_showing_chat()
//discord_social_client_get_user()

