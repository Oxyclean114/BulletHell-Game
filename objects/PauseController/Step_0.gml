if (pause)
{
	if (!instance_exists(EndGame))
		instance_create_depth(room_width / 2,(room_height / 2) + 64,0,EndGame)
}