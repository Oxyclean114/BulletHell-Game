instance_destroy(other)
instance_destroy(self)
audio_play_sound(Explosion,1,false)
//global.spawntimer--
for (var i = 0; i < 10;i++)
	instance_create_depth(x,y,1,Coin)

if (global.combo % 5 = 0)
{
	for (var i = 0; i < global.combo; i++)
	{
		instance_create_depth(x,y,1,Coin)
	}
	if (global.combo != 0)
		audio_play_sound(ComboUp,1,false)
}

global.combo++

var read = file_text_open_read("Combo Counter.txt")

if (global.combo > file_text_read_real(read))
{
	var write = file_text_open_write("Combo Counter.txt")
	file_text_write_real(write,global.combo)
	file_text_close(write)
	global.maxcombo = global.combo
}
//global.maxcombo = file_text_read_real(read)
file_text_close(read)