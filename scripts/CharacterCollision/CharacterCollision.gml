if (global.shield = false && global.invul = false)
{
	LevelController.timer = 0
	instance_destroy(other)
	audio_play_sound(Explosion,1,false)
	ClearNonEssential()
	room_goto(Shop)
}

if (global.shield = true)
{
	global.shield = false
	Character.shieldActive = false
	instance_destroy(self)
	instance_destroy(Shield)
}