draw_sprite_ext(BaseCharacter_spr,0,x,y,10,10,0,c_white,1)
if (global.shield = true)
	draw_sprite_ext(Shield_spr,0,x,y,10,10,0,c_white,1)

draw_text_color(50,50,global.points,c_red,c_red,c_red,c_red,1)