//Timer control
timer += 1 / room_speed
flooredtimer = floor(timer)

if (global.Level = 1)
{
	if (timer = 1)
	{
		for (var i = 0; i > 10; i++)
		{
			//var new = instance_create_layer(((floor(room_width * .1)) * i) + Enemy.sprite_width,0,"Enemies",Enemy)	
			var new = instance_create_layer(50,10,"Enemies",Enemy)	
		}
	}
}

//End the level when all enemies are dead and the timer has passed the max time
if (!layer_has_instance("Enemies",Enemy) && flooredtimer >= MaxLevelTime && global.Level > 0)
{
	flooredtimer = 0
	timer = 0
	global.Level++
	global.won = true
	ClearNonEssential()
	room_goto(Shop)
}

//Level 1
if (global.Level = 1)
{
	if (flooredtimer = 1)
	{
		SpawnEnemies("Left",3,false)
	}
	
	if (flooredtimer = 3)
	{
		SpawnEnemies("Right",3,false)	
	}
	
	if (flooredtimer = 5)
	{
		SpawnEnemies("Mid",5,false)	
	}
	
	if (flooredtimer = 8)
	{
		SpawnEnemies("Mid",11,false)	
	}
	
	if (flooredtimer = 10)
	{
		SpawnEnemies("Left",1,false)	
	}
	
	if (flooredtimer = 11)
	{
		SpawnEnemies("Right",1,false)	
	}
	
	if (flooredtimer = 12)
	{
		SpawnEnemies("Left",1,false)	
	}
		
	if (flooredtimer = 13)
	{
		SpawnEnemies("Right",1,false)	
	}
		
	if (flooredtimer = 14)
	{
		SpawnEnemies("Left",1,false)	
	}
	
}