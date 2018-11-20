//Spawn things
if (mouse_check_button(mb_left))
{
	instance_create_depth(mouse_x,mouse_y,1,Coin)	
}
if (mouse_check_button_pressed(mb_right))
{
	instance_create_depth(mouse_x,mouse_y,0,Box)	
}
if (mouse_check_button_pressed(mb_middle))
{
	instance_create_depth(mouse_x,mouse_y,1,Enemy)	
}

//Restart the game
if (keyboard_check_pressed(ord("R")))
	game_restart()
	
//Spawn enemies and barriers
if (global.Level = -1)
{
	timer++
	if (timer >= global.spawntimer)
	{
		timer = 0
		var new = instance_create_depth(irandom_range(room_width / 4,room_width - (room_width / 4)),-16,1,Enemy)	
	}
}

//Increase spawn rates
if (keyboard_check(vk_backspace))
{
	global.spawntimer--	
}

//Move to Shop Room and clear the screen
if (keyboard_check_pressed(vk_tab))
{	
	if (global.won != true)
	{
		LevelController.timeline_position = 0
	}
	ClearNonEssential()
	room_goto(Shop)
}

//If there is no player create one
if (!instance_exists(Character))
{
	instance_create_depth(room_width / 2, room_height - 200,1,Character)	
}

//Make the player Invunerable
if (keyboard_check_pressed(ord("I")))
	global.invul = true

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

