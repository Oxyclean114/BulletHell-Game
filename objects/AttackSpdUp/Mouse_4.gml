if (global.points >= cost && global.fire_rate > 1)
{
	global.points -= cost
	global.fire_rate--
	currentBuys++
	audio_play_sound(Yes,1,false)
}
else
	audio_play_sound(No,1,false)