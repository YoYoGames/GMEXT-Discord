
if(locked)
	exit

lobby_secret = "YYLobby"

discord_social_client_create_or_join_lobby(lobby_secret,function(result, lobby_id){
			
			if (!result.successful)
			    exit
			
			if(result.error_code != DiscordErrorType.None)
				exit
			
			obj_discord_social_lobby_create_join.locked = true
			obj_discord_social_lobby_leave.locked = false
			obj_discord_social_lobby_send_message.locked = false
			obj_discord_social_lobby_call.locked = false
			obj_discord_social_lobby_end_call.locked = true
			
			id.lobby_id = lobby_id
			
			show_debug_message(lobby_id)

			var activity = new DiscordActivity()
			activity.type = DiscordActivityTypes.Playing
			activity.state = "In Lobby"
			activity.details = "Waiting players"
			activity.supported_platforms = DiscordActivityGamePlatforms.Desktop
			
			var secrets = new DiscordActivitySecrets()
			secrets.join = lobby_secret
			activity.secrets = secrets
			
			var party = new DiscordActivityParty()
			party.current_size = 1
			party.activity_party_id = "???"
			party.max_size = 5
			party.privacy = 0
			activity.party = party
			
			discord_social_client_update_rich_presence(activity,function(){})
	})
	
//discord_social_client_create_or_join_lobby_with_metadata("YYLobby",{"key":"value"},{"key":"value"})

