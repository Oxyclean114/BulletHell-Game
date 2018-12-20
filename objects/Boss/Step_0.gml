//Move
if (y < room_height * .25)
{
	y++	
}

//Increase the timer after being hit
if (hurt = true)
{
	timer++
}

//How long the object flashes red for when hit
if (timer >= hurtFlash)
{
	hurt = false
	timer = 0
	Health--
}

//Destroy self and move to shop when health hits 0
if (Health <= 0)
{
	instance_destroy(self)
	room_goto(Shop)
}