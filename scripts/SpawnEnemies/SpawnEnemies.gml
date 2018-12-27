var Spawn_Direction = argument0
var Spawn_Count = argument1
var Path = argument2

var LSpawn = sprite_get_width(BaseEnemy_spr) / 2
var RSpawn = room_width - sprite_get_width(BaseEnemy_spr) / 2
var MSpawn = (room_width * .5)

if (Spawn_Direction = "Left")
{
	for (var i = 0; i < Spawn_Count; i++)
	{
		var new = instance_create_layer(LSpawn + (i * sprite_get_width(BaseEnemy_spr)),0,"Enemies",Enemy)
			new.onPath = Path
	}
}

if (Spawn_Direction = "Right")
{
	for (var i = 0; i < Spawn_Count; i++)
	{
		var new = instance_create_layer(RSpawn - (i * sprite_get_width(BaseEnemy_spr)),0,"Enemies",Enemy)
			new.onPath = Path
	}
}

if (Spawn_Direction = "Mid")
{
	MSpawn = MSpawn - (floor(Spawn_Count / 2) * sprite_get_width(BaseEnemy_spr))
	for (var i = 0; i < Spawn_Count; i++)
	{
		var new = instance_create_layer(MSpawn + (i * sprite_get_width(BaseEnemy_spr)),0,"Enemies",Enemy)
			new.onPath = Path
	}
}