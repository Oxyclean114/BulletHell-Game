pause = false
pauseShot = -1

if (file_exists("pauseShot"))
	file_delete("pauseShot")
	
pauseLayer = layer_create(200)

display_set_gui_maximize()