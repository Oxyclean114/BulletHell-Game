draw_text(x,y,global.points)

draw_text(10,10,global.spawntimer)
draw_text(10,25,global.fire_rate)
draw_text(10,40,global.move_speed)

draw_line(room_width / 4, 0, room_width / 4, room_height)
draw_line(room_width - (room_width / 4), 0, room_width - (room_width / 4), room_height)

draw_rectangle_color(0,0,room_width / 4,room_height,c_black,c_black,c_black,c_black,false) //Left
draw_rectangle_color(room_width * .75,0,room_width,room_height,c_black,c_black,c_black,c_black,false) //right