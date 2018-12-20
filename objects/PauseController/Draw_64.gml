draw_set_halign(fa_center)
draw_set_valign(fa_center)

if(pause){
    //draw_sprite_ext(pauseShot,0,0,0,1,1,0,c_white,1)
	draw_sprite_blur(0,0,pauseShot,0,3,1,1,0,1)
	layer_vspeed(3,0)
    draw_text(window_get_width() / 2, window_get_height() / 2, "Paused")
	//draw_sprite(EndGame_spr,0,window_get_width() / 2,(window_get_height() / 2) + 64)
	
	//Volume
	draw_text_color((room_width * .5) - 50,room_height - sprite_get_height(Meter_spr),"Volume = ",c_black,c_black,c_black,c_black,1)
	for (var i = 0; i < (global.vol * 10);i++)
	{
		draw_sprite_ext(Meter_spr,0,(room_width * .5) + (i * sprite_get_width(Meter_spr)),room_height - sprite_get_height(Meter_spr),1,1,1,c_black,1)
	}	
}
else
	layer_vspeed(3,15)