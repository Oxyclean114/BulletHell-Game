if( global.invul = false && global.shield = false)
{
	room_restart()
	audio_play_sound(Explosion,1,false)
	LevelController.timeline_position = 0
	room_goto(Shop)
	instance_destroy(other)
	ClearNonEssential()
}

if( global.shield = true)
{
	global.shield = false
	Character.shieldActive = false
	instance_destroy(self)
	instance_destroy(Shield)
}
