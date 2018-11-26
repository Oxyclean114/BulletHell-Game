for (var i = 0; i < 5; i++)
{
	instance_create_layer(spawnXFromRight,0,"Enemies",Enemy)
	spawnXFromRight -= sprite_get_width(BaseEnemy_spr) / 2 
}