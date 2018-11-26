var Spawn_Direction = argument0
var Spawn_Count = argument1

var time = 0

var LSpawn = 0
var RSpawn = room_width
var count = 0

while (Spawn_Direction = "Left")
{
	time++
	if (time % 60 = 0)
	{
		instance_create_layer(LSpawn,0,"Enemies",Enemy)
		LSpawn += sprite_get_width(BaseEnemy_spr) / 2
		count++
	}
	if (count >= Spawn_Count)
		break
}
while (Spawn_Direction = "Right")
{
	time++
	if (time % 60 = 0)
	{
		instance_create_layer(RSpawn,0,"Enemies",Enemy)
		RSpawn -= sprite_get_width(BaseEnemy_spr) / 2
		count++
	}
	if (count >= Spawn_Count)
		break
}