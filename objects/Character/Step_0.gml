//Movement
if ((keyboard_check(ord("A")) || keyboard_check(vk_left)) && room = Game)
{
	x -= global.move_speed
}
if ((keyboard_check(ord("D")) || keyboard_check(vk_right)) && room = Game)
{
	x += global.move_speed
}
//Horizontal movement
if ((keyboard_check(ord("W")) || keyboard_check(vk_up)) && room = Game)
{
	y -= global.move_speed
}
if ((keyboard_check(ord("S")) || keyboard_check(vk_down)) && y < room_height - 16 && room = Game)
{
	y += global.move_speed
}
//Fire Rate
if (keyboard_check_pressed(vk_add))
{
	if (global.fire_rate > 1)
		global.fire_rate--
}
if (keyboard_check_pressed(vk_subtract))
{
	global.fire_rate++
}

//Shooting
if (keyboard_check(vk_space) && can_shoot = true)
{
	if (global.triShot = false) //Shoot 1 bullet (default)
	{
		var shot = instance_create_depth(x,y,1,Bullet)	
			shot.speed = global.shot_speed
			shot.direction = 90
			shot.image_xscale *= 2
			shot.image_yscale *= 2
		audio_play_sound(Shoot,1,false)
	}
	else //Shoot 3 bullets
	{
		var shot = instance_create_depth(x,y,1,Bullet)	
			shot.speed = global.shot_speed
			shot.direction = 80
			shot.image_angle = -10
			shot.image_xscale *= 2
			shot.image_yscale *= 2
		var shot = instance_create_depth(x,y,1,Bullet)	
			shot.speed = global.shot_speed
			shot.direction = 90
			shot.image_xscale *= 2
			shot.image_yscale *= 2
		var shot = instance_create_depth(x,y,1,Bullet)	
			shot.speed = global.shot_speed
			shot.direction = 100
			shot.image_angle = 10
			shot.image_xscale *= 2
			shot.image_yscale *= 2
		audio_play_sound(Shoot,1,false)
	}
	can_shoot = false
}
if (timer = 0)
{
	can_shoot = true
	timer = global.fire_rate
}
if (can_shoot = false)
{
	timer--	
}

//Screen Wrap
move_wrap(true,false,sprite_get_width(BaseCharacter_spr) / 2)

//SpawnShield
if (global.shield = true && shieldActive = false)
{
	shieldActive = true
	instance_create_depth(x,y,0,Shield)
}