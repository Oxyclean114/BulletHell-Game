if (pause = false)
{
	pause = true
	if(!file_exists("pauseShot"))
	{
		//screen_save("pauseShot")
		var xx = window_get_width()
		var yy = window_get_height()
		screen_save_part("pauseShot",0,0,xx,yy)
	}
	if(!sprite_exists(pauseShot))
        pauseShot = sprite_add("pauseShot",0,0,0,0,0)
	instance_deactivate_all(true)
	//instance_create_layer(room_width / 2,(room_height / 2) + 64,pauseLayer,EndGame)
}
else if (pause = true)
{
	sprite_delete(pauseShot)
	file_delete("pauseShot")
	pause = false
	layer_destroy_instances(pauseLayer)
	instance_activate_all()
}