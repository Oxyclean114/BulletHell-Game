//Move
if (y < room_height * .25)
{
	y++	
}

if (hurt = true)
{
	timer++
}

if (timer >= 3)
{
	hurt = false
	timer = 0
	Health--
}

if (Health <= 0)
{
	instance_destroy(self)	
}