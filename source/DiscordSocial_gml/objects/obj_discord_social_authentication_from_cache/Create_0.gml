
#macro DISCORD_AUTH_FILE "discord_auth.dat"


if (!file_exists(DISCORD_AUTH_FILE))
    exit;

var map = ds_map_secure_load(DISCORD_AUTH_FILE);

var access_token  = map[? "access_token"];
var refresh_token = map[? "refresh_token"];
var token_type    = map[? "token_type"];

ds_map_destroy(map);

discord_social_client_update_token(token_type, access_token, function(result) {
	    if (!result.successful) {
	        // Token rejected — fall back to full auth flow
	        show_debug_message("Token update failed: " + result.error);
	        exit;
	    }
	    discord_social_client_connect();
	});

