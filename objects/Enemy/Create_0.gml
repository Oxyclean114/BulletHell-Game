onPath = true //Are they assigned to a path?
move_speed = 5 //Speed
fireRate = 45  //Rate of fire (Lower = faster)
timer = fireRate //Timer to count till fire

//Decrease the size of the enemy by half
image_xscale /= 2
image_yscale /= 2

if (x < room_width / 2 && onPath = true)
	path_start(path0,move_speed,path_action_stop,false)
else if (x > room_width / 2 && onPath = true)
	path_start(path1,move_speed,path_action_stop,false)