randomize()

global.points = 0
global.shot_speed = global.variables[0] //How fast bullets move
global.fire_rate = global.variables[1]   //Lower = faster
global.move_speed = global.variables[2]  //How fast the player moves
global.triShot = false  //Lets the player shoot three shots
global.horizMove = true //Lets the player move horizontally
global.invul = false    //Makes the Player invulnerable
global.shield = false   //Single use shield

global.spawntimer = 60  //How fast enemies spawn (lower = faster)
timer = 0				//Counter that ticks up to an enemy spawning