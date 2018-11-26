var new = instance_create_layer(spawnXFromRight - 150,0,"Enemies",Enemy)
	new.onPath = true
spawnXFromRight -= sprite_get_width(BaseEnemy_spr) / 2
spawnXFromRight = spawnMax