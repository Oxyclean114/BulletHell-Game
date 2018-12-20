//draw_text_color(250,125,"Free is how the game used to play\nThe levels don't really work\nWinning level 2 will lock the game\nLevels 3-4 don't exist\nPress r to restart",c_black,c_black,c_black,c_black,1)

//Volume
draw_text_color((room_width * .5) - 50,room_height - sprite_get_height(Meter_spr),"Volume = ",c_black,c_black,c_black,c_black,1)
for (var i = 0; i < (global.vol * 10);i++)
{
	draw_sprite_ext(Meter_spr,0,(room_width * .5) + (i * sprite_get_width(Meter_spr)),room_height - sprite_get_height(Meter_spr),1,1,1,c_black,1)
}