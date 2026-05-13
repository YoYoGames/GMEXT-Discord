
if(locked)
	exit

var _lobby_id = obj_discord_social_lobby_create_join.lobby_id

var call = discord_social_client_start_call(_lobby_id)
show_debug_message(call)


discord_social_call_set_speaking_status_changed_callback(_lobby_id,function(user_id, is_playing_sound){
		show_debug_message($"Speaking Status Changed: {{user_id, is_playing_sound}}")
	})
	
discord_social_call_set_on_voice_state_changed_callback(_lobby_id,function(data){
		show_debug_message($"Voice Status Changed: {{data}}")
	})
	
discord_social_call_set_participant_changed_callback(_lobby_id,function(user_id, added){
		show_debug_message($"Participant Change: {{user_id, added}}")
	})

obj_discord_social_lobby_call.locked = true
obj_discord_social_lobby_end_call.locked = false


	
	