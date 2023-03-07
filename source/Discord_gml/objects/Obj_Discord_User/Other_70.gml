
if(async_load[?"result"] == Discord_OK)
switch(async_load[?"type"])
{
	
	case "Discord_Users_GetUser":
		
		username = async_load[?"username"]
		//var	struct = {
		//			username: async_load[?"username"],
		//			bot: async_load[?"username"],
		//			userId: async_load[?"username"],
		//			discriminator: async_load[?"username"],
		//		}
		
		//instance_create_depth(100,100,depth,Obj_Discord_User,struct)
		
	break
	
	case "Discord_Images_Fetch":
		
		// If user ids don't match bail
		if (userId != async_load[?"userId"]) exit;
		
		var buffer = async_load[?"buffer"]
	
		surf = surface_create(async_load[?"width"],async_load[?"height"])
		buffer_set_surface(buffer,surf,0)
	
		buffer_delete(buffer)
		
	break
}
