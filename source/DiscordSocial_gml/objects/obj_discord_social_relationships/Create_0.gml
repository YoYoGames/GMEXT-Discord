
text = "Get Relationships"

var relationships = discord_social_client_get_relationships()
var count = array_length(relationships);

for(var a = 0 ; a < count ; a++)
{
	var _dx = (a mod 5) * 200 - 200*2
	var _dy = (a div 5) * 200
	var relationship = relationships[a]
	instance_create_depth(room_width/2+_dx,300+_dy,0,obj_discord_social_relationship,{data:relationship})
}
