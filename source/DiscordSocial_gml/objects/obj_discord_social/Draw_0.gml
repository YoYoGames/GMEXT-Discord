
if(room == rm_discord_social_lobbies)
	exit

draw_set_font(fnt_gm_20)
draw_set_valign(fa_left)
draw_set_halign(fa_left)

var version = $"{discord_social_client_get_version_major()}.{discord_social_client_get_version_minor()}.{discord_social_client_get_version_patch()}"
draw_text(100,100,$"Version: {version}")
draw_text(100,130,$"Hash: {discord_social_client_get_version_hash()}")
draw_text(100,160,$"Status: {discord_social_client_status_to_string(discord_social_client_get_status())}")
draw_text(100,190,$"Authenticated: {discord_social_client_is_authenticated()}")
