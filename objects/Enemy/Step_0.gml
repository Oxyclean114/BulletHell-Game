//Shooting
if (timer != 0)
{
	timer--
}
else
{
	var shot = instance_create_depth(x,y,1,EnemyBullet)
		shot.direction = 270
		shot.speed = 10
	timer = fireRate
}

//Movement
if (onPath = false)
	y += move_speed

//Destroy if off screen
if (y > room_height + 32)
{
	instance_destroy(self)	
}