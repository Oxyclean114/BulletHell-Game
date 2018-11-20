if (keyboard_check_pressed(vk_tab))
{
	if (global.won = true)
	{
		global.won = false
	}
	room_goto(Game)
}

if (keyboard_check_pressed(ord("R")))
{
	game_restart()	
}