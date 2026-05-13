
if (!loaded) return;
    
draw_sprite(spr,0,x,y)
draw_text(x,y,data.display_name)
draw_text(x,y+20,discord_social_client_status_to_string(data.status))
