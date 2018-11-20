//for (var i = 1; i <= room_last; i++)
//{
//	// set room size 
//	room_set_width(i, 1920)
//	room_set_height(i, 1080)
		
//	// set window size
//	window_set_size(1920,1080)
	
//	// enable view and setup viewport
//	//room_set_view_enabled(i, true)
//	//room_set_viewport(i, 0, true, 0, 0, global.screenWidth, global.screenHeight);
	
//	// set camera for room
//	//room_set_camera(i, 0, global.camera);
//}

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