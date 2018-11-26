var new = instance_create_layer(spawnXFromRight - 150,0,"Enemies",Enemy)
	new.onPath = false
spawnXFromRight -= sprite_get_width(BaseEnemy_spr) / 2