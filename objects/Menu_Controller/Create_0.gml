draw_set_halign(fa_center)
global.vol = 1
global.Level = -1
global.won = false

// Display properties
display_width = display_get_width();
display_height = display_get_height();

ideal_width = 0;
ideal_height = 1080;

aspect_ratio = display_width / display_height;
ideal_width = round(ideal_height * aspect_ratio);

// Set our display
window_set_size(ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
surface_resize(application_surface, ideal_width, ideal_height);

//Draw Lvl Buttons
for (var i = 1;i < 5;i++)
{	
	var new = instance_create_depth(50,i * 50,1,MenuLvlButton)
		new.lvl = i
}
var free = instance_create_depth(150,50,1,MenuLvlButton)
	free.free = true

//Enable the debug overlay
show_debug_overlay(true)