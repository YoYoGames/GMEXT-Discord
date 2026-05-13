
if(mouse_check_button_pressed(mb_left))
if(spr)
if(point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_get_width(spr),y+sprite_get_height(spr)))
{
	show_debug_message(user)
	show_debug_message($"{user.display_name}: {user.user_id}")
	
	
	discord_social_client_send_activity_invite(user.user_id,"Come play with me! :)",function(result){
			show_debug_message(result)
	})
}

