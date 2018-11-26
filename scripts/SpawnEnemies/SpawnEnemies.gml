var Spawn_Direction = argument0
var Spawn_Count = argument1

var time = 0

var LSpawn = (room_width * .25) + sprite_get_width(BaseEnemy_spr) / 2
var RSpawn = (room_width * .75) - sprite_get_width(BaseEnemy_spr) / 2

var count = 0

while (Spawn_Direction = "Left")
{
	if (time % 60 = 0)
	{
		var new = instance_create_layer(LSpawn,0,"Enemies",Enemy)
			new.onPath = true
		LSpawn += sprite_get_width(BaseEnemy_spr) / 2
		count++
	}
	if (count >= Spawn_Count)
	{
		show_debug_message("Done Left")
		return true
	}
	time++
}
while (Spawn_Direction = "Right")
{
	if (time % 60 = 0)
	{
		var new = instance_create_layer(RSpawn,0,"Enemies",Enemy)
			new.onPath = true
		RSpawn -= sprite_get_width(BaseEnemy_spr) / 2
		count++
	}
	if (count >= Spawn_Count)
	{
		show_debug_message("Done Right")
		return true
	}
	time++
}