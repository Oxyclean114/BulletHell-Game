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
	instance_create_depth(mouse_x,mouse_y,1,SpikeWheel)	
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
		var new = instance_create_depth(irandom_range(sprite_get_width(BaseEnemy_spr),room_width - sprite_get_width(BaseEnemy_spr)),-16,1,Enemy)	
	}
}

//Spawn Spikey Bois
if (!instance_exists(SpikeWheel)) && (global.combo % 10 = 0) && (global.combo != 0)
{
	instance_create_layer(irandom(room_width),0,"Enemies",SpikeWheel)
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
		LevelController.timer = 0
	}
	ClearNonEssential()
	room_goto(Shop)
}

//If there is no player create one
if (!instance_exists(Character))
{
	instance_create_depth(room_width / 2, room_height - 200,1,Character)	
}

//Make the player Invulnerable
if (keyboard_check_pressed(ord("I")))
	global.invul = true

//Boss Test
if (global.Level = -3) && !instance_exists(Boss)
{
	instance_create_layer(room_width * .5,-100,"Enemies",Boss)	
}

