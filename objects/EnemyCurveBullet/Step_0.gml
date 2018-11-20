//Curve toward the Character for a short time
if (curvetimer != 0 && y < Character.y)
{
	image_angle = point_direction(x,y,Character.x,Character.y)
	direction = point_direction(x,y,Character.x,Character.y)
	curvetimer--
}

//Clamps the direction
if (direction >= 300)
	direction = 300
if (direction <= 240)
	direction = 240

//Changes the sprite when it no longer tracks
if (curvetimer = 0)
	sprite_index = EnemyBulletInactive_spr
	
if (y > room_height + 16)
	instance_destroy(self)