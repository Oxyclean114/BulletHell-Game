//Volume
if (keyboard_check_pressed(vk_numpad8) && global.vol < 1)
{
	global.vol += .1
	audio_master_gain(global.vol)	
}
if (keyboard_check_pressed(vk_numpad5) && global.vol > 0)
{
	global.vol -= .1
	audio_master_gain(global.vol)	
}