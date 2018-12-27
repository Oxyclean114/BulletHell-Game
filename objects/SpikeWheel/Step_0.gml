currentdist = point_distance(x,y,gx,gy)

if (currentdist <= 1)
{
	there = true
	x = gx
	y = gy
	direction += 5
	image_angle += 5
	timer++
	if (timer >= fire_rate)
	{
		timer = 0
		var new = instance_create_layer(x,y,"Enemies",Spike)
			new.image_angle	= direction - 90
			new.direction = direction
	}
		
}
else if (there = false)
	move_towards_point(gx,gy,point_distance(x,y,gx,gy) / move_speed)
	
//Increase the timer after being hit
if (hurt = true)
{
	hurttimer++
}

//How long the object flashes red for when hit
if (hurttimer >= hurtFlash)
{
	hurt = false
	hurttimer = 0
	health--
}

//Destroy self and move to shop when health hits 0
if (health <= 0)
{
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
}