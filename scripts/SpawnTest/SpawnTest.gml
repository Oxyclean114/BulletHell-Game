var timeCheck = argument0

var SpawnLeft = room_width * .25
var SpawnRight = room_width * .75

if (timeCheck % 60 = 0)
{
	instance_create_layer(SpawnLeft,0,"Enemies",Enemy)
	SpawnLeft += sprite_get_width(BaseEnemy_spr) / 2
}