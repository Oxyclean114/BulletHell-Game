draw_set_halign(fa_center)
global.vol = 1
global.Level = -1
global.won = false
global.combo = 0
global.maxcombo = 0

// Display properties
//display_width = display_get_width();
//display_height = display_get_height();

//ideal_width = 0;
//ideal_height = 1080;

//aspect_ratio = display_width / display_height;
//ideal_width = round(ideal_height * aspect_ratio);

// Set our display
//window_set_size(ideal_width, ideal_height);
//display_set_gui_size(ideal_width, ideal_height);
//surface_resize(application_surface, ideal_width, ideal_height);

//Draw Lvl Buttons
for (var i = 1;i < 5;i++)
{	
	var new = instance_create_depth(50,i * 50,1,MenuLvlButton)
		new.lvl = i
}
var free = instance_create_depth(150,50,1,MenuLvlButton)
	free.free = true

//Enable the debug overlay
//show_debug_overlay(true)

//Create Play and Exit buttons
instance_create_depth(room_width / 2,room_height * .33,1,Play)
instance_create_depth(room_width / 2,room_height * .66,1,EndGame)

//File Checking
if (!file_exists("Combo Counter.txt"))
{
		//Create file by opening for writing
		var write = file_text_open_write("Combo Counter.txt")
		file_text_write_real(write,0)
		file_text_close(write)
		
		//Open file for reading and set winCounter = to value written
		var read = file_text_open_read("Combo Counter.txt")
		global.maxcombo = file_text_read_real(read)
		file_text_close(read)	
}
else
{
	var read = file_text_open_read("Combo Counter.txt")
	global.maxcombo = file_text_read_real(read)
	file_text_close(read)
}