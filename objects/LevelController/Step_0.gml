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

if (global.Level != -2)
	timeline_index = global.Level - 1
else
	timeline_index = Test

if (!instance_exists(Enemy) && timeline_position >= timeline_max_moment(timeline_index) && global.Level != -1)
{
	global.Level++
	global.won = true
	timeline_position = 0
	timeline_running = false
	ClearNonEssential()
	room_goto(Shop)
}

if (timeline_running = false)
	timeline_running = true