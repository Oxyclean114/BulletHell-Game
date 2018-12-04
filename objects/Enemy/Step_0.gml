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
y += move_speed

//Destroy if off screen
if (y > room_height + 32)
{
	instance_destroy(self)
	global.combo = 0
}

//Start the Path
if (x < room_width / 2 && global.Level != -1 && onPath = false)
{
	path_start(path0,move_speed,path_action_stop,false)
	onPath = true
}
else if (x > room_width / 2 && global.Level != -1 && onPath = false)
{
	path_start(path1,move_speed,path_action_stop,false)
	onPath = true
}