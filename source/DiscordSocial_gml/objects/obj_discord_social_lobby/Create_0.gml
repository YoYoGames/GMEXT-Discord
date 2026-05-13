
//discord_social_client_register_launch_command()

discord_social_client_set_activity_invite_created_callback(function(data){
		var _struct = data //now data._type it's data.type, so we don't need make our own struct?
		//var _struct = {
		//		type: data.type,//data._type//Now it's 
		//		sender_id: data.sender_id,
		//		application_id: data.application_id,
		//		channel_id: data.channel_id,
		//		is_valid: data.is_valid,
		//		message_id: data.message_id,
		//		party_id: data.party_id,
		//	}
		discord_social_client_accept_activity_invite(_struct,function(result, join_secret){
				discord_social_client_create_or_join_lobby(join_secret,function(){})
			})
	})

discord_social_client_set_message_created_callback(function(message_id){
		var message_handle = discord_social_client_get_message_handle(message_id)
		show_debug_message(message_handle)
	})

var relationships = discord_social_client_get_relationships();
var count = array_length(relationships);

for(var a = 0 ; a < count ; a++)
{
	var _dx = (a mod 3) * 200 - 200*1
	var _dy = (a div 3) * 200
	var relationship = relationships[a];
	instance_create_depth(400+_dx,200+_dy,0,obj_discord_social_lobby_relationship,{data: relationship})
}




