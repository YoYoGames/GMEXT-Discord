
event_inherited();

text = "Disconnect"

show_debug_message("discord_social_client_get_current_user GML")
var struct = discord_social_client_get_current_user()
show_debug_message("struct:")
show_debug_message(struct)
struct_remove(struct,"id")
instance_create_depth(100,300,0,obj_discord_social_user,{data: struct})
