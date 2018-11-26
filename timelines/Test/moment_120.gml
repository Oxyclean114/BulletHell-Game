for (var i = 0; i < 5; i++)
{
	instance_create_layer(spawnXFromLeft,0,"Enemies",Enemy)
	spawnXFromLeft += sprite_get_width(BaseEnemy_spr) / 2 
}