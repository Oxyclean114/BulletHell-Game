var new instance_create_layer(spawnXFromLeft + 150,0,"Enemies",Enemy)
var new instance_create_layer(spawnXFromRight - 150,0,"Enemies",Enemy)
spawnXFromRight -= sprite_get_width(BaseEnemy_spr) / 2
spawnXFromLeft += sprite_get_width(BaseEnemy_spr) / 2