//draw_line(room_width / 4, 0, room_width / 4, room_height)
//draw_line(room_width - (room_width / 4), 0, room_width - (room_width / 4), room_height)

//draw_rectangle_color(0,0,room_width / 4,room_height,c_black,c_black,c_black,c_black,false) //Left
//draw_rectangle_color(room_width * .75,0,room_width,room_height,c_black,c_black,c_black,c_black,false) //right

draw_text_color(20,50,global.points,c_red,c_red,c_red,c_red,1)
draw_text_color(40,90,"Combo = " + string(global.combo),c_red,c_red,c_red,c_red,1)
draw_text_color(60,120,"Max Combo = " + string(global.maxcombo),c_red,c_red,c_red,c_red,1)