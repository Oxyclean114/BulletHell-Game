////Level 1
//if (global.Level = 1 && timeline_running = false)
//{
//	timeline_index = Lvl1
//	timeline_running = true
//}
////Level 2
//if (global.Level = 2 && timeline_running = false)
//{
//	timeline_index = Lvl2
//	timeline_running = true
//}

//if (global.Level != -2)
//	timeline_index = global.Level - 1
//else
//	timeline_index = Test

//if (!instance_exists(Enemy) && timeline_position >= timeline_max_moment(timeline_index) && global.Level != -1)
//{
//	global.Level++
//	global.won = true
//	timeline_position = 0
//	timeline_running = false
//	ClearNonEssential()
//	room_goto(Shop)
//}

//if (timeline_running = false)
//	timeline_running = true

cut_timer += 1 / room_speed
timer = floor(cut_timer)

if (global.Level = 1)
{
	if (cut_timer = 1)
	{
		for (var i = 0; i > 10; i++)
		{
			//var new = instance_create_layer(((floor(room_width * .1)) * i) + Enemy.sprite_width,0,"Enemies",Enemy)	
			var new = instance_create_layer(50,10,"Enemies",Enemy)	
		}
	}
}

if (!layer_has_instance("Enemies",Enemy) && timer >= MaxLevelTime && global.Level != -1 && global.Level != -3)
{
	timer = 0
	cut_timer = 0
	global.Level++
	global.won = true
	ClearNonEssential()
	room_goto(Shop)
}