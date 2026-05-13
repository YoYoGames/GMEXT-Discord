
//var scopes = discord_social_client_get_default_presence_scopes()
var scopes = discord_social_client_get_default_communication_scopes();

code_verifier = discord_social_client_create_authorization_code_verifier();

var args = new DiscordAuthorizationArgs();
args.client_id = app_id;
args.scopes    = scopes;
args.use_code_challenge = true;
args.code_verifier = code_verifier;

discord_social_client_authorize(args, function(result, code, redirect_uri) {
	    discord_social_client_get_token(app_id, code, code_verifier, redirect_uri,
	        function(result, access_token, refresh_token, token_type, expires_in, scopes) {
	            if (!result.successful) {
	                show_message_async("discord_social_client_get_token FAILED");
	                exit;
	            }

	            var map = json_decode(json_stringify({ access_token, refresh_token, token_type, expires_in }));
	            ds_map_secure_save(map, DISCORD_AUTH_FILE);
	            ds_map_destroy(map);

	            discord_social_client_update_token(token_type, access_token, function(result) {
	                if (!result.successful) {
	                    show_message_async("discord_social_client_update_token FAILED");
	                    exit;
	                }
	                discord_social_client_connect();
	            });
	        }
	    );
	});
