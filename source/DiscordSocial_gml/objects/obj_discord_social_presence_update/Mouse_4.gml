				
var activity = new DiscordActivity()
activity.type = DiscordActivityTypes.Playing
activity.state = "In Competitive Match"
activity.details = "Rank: Diamond II"
activity.supported_platforms = DiscordActivityGamePlatforms.Desktop


discord_social_client_update_rich_presence(activity,
	function(result)
	{
		if(!result.successful){
			show_message_async("discord_social_client_update_rich_presence FAILED")
			exit
		}
		
		show_debug_message(result)
	})

