draw_sprite_ext(BaseCharacter_spr,0,room_width / 2,room_height / 2,5,5,0,c_white,1)
if (global.shield = true)
	draw_sprite_ext(Shield_spr,0,room_width / 2,room_height / 2,5,5,0,c_white,1)
	
draw_text_color(250,270,"Buying trishot\n breaks the \ncombo counter",c_red,c_red,c_red,c_red,1)

draw_text_color(50,50,global.points,c_red,c_red,c_red,c_red,1)