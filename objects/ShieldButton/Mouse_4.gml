if (global.points >= cost && global.shield = false)
{
	global.points -= cost
	global.shield = true
	currentBuys++
	audio_play_sound(Yes,1,false)
}
else
	audio_play_sound(No,1,false)