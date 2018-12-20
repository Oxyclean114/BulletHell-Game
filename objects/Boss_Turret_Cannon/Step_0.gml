//Follow the Turret base
if (instance_exists(Boss_Turret_Base))
	y = Boss_Turret_Base.y

//Aim at the player
image_angle = point_direction(x,y,Character.x,Character.y)

//Destroy the instance when the boss is defeated
if (!instance_exists(Boss))
{
	instance_destroy(self)	
}

//Destroy the instance if the Turre Base is destroyed
if (!collision_point(x,y,Boss_Turret_Base,false,true))
{
	instance_destroy(self)	
}