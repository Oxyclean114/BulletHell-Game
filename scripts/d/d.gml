var timeCheck = argument0

var Spawnleft = room_height * .25
var SpawnRight = room_height * .75

if (timeCheck % room_speed = 0)
{
	instance_create_layer(SpawnLeft,0,"Enemies",Enemy)
}