if (global.points >= cost && global.move_speed < 15)
{	
	global.points -= cost
	global.move_speed++
	currentBuys++
	audio_play_sound(Yes,1,false)
}
else
	audio_play_sound(No,1,false)