
// Draw the surface
if(surface_exists(surf))
	draw_surface_stretched(surf,x,y, 96, 96);

// Draw the name
draw_set_halign(fa_center);
draw_set_font(Font_YoYo_20);
draw_text_transformed(x + 96*0.5, y, username, .8, .8, 0);
