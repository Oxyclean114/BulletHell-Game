currentdist = point_distance(x,y,gx,gy)

if (currentdist <= 1)
{
	there = true
	x = gx
	y = gy
	direction += 5
	image_angle += 5
	timer++
	if (timer >= fire_rate)
	{
		timer = 0
		var new = instance_create_layer(x,y,"Enemies",Spike)
			new.image_angle	= direction
			new.direction = direction + 90
	}
		
}
else if (there = false)
	move_towards_point(gx,gy,point_distance(x,y,gx,gy) / move_speed)