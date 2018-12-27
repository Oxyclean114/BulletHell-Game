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

if (collision_point(mouse_x,mouse_y,self,true,false) && mouse_check_button(mb_left))
{
	global.points += 25
}