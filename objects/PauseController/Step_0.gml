if (keyboard_check_pressed(vk_escape) && (pause = false))
{
	if(!file_exists("pauseShot"))
	{
		//screen_save("pauseShot")
		var xx = window_get_width()
		var yy = window_get_height()
		screen_save_part("pauseShot",0,0,xx,yy)
	}
	
	if(!sprite_exists(pauseShot))
	{
        pauseShot = sprite_add("pauseShot",0,0,0,0,0)
	}
	
	instance_deactivate_all(true)
	
	endbutton = instance_create_depth(room_width / 2,(room_height / 2) + 64,-200,EndGame)
	
	pause = true
}
else if (keyboard_check_pressed(vk_escape) && (pause = true))
{
	instance_destroy(endbutton)
	sprite_delete(pauseShot)
	file_delete("pauseShot")
	pause = false
	layer_destroy_instances(pauseLayer)
	instance_activate_all()
}

//Volume
if (keyboard_check_pressed(vk_numpad8) && global.vol < 1)
{
	global.vol += .1
	audio_master_gain(global.vol)	
}
if (keyboard_check_pressed(vk_numpad5) && global.vol > 0)
{
	global.vol -= .1
	audio_master_gain(global.vol)	
}