//Detract from move timer and perform early movement
if (move_timer != 0)
{
	move_timer--
}

//Destroy and add points on collision with Character
if (collision_circle(x,y,16,Character,false,true))
{
	instance_destroy(self)
	global.points += 10
	audio_play_sound(CoinUp,1,false)
}

//Move towards player
if (move_timer <= 0)
{
	move_towards_point(Character.x,Character.y,speed)
	speed += .5
}