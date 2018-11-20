var maxBuys = argument0
var currentBuys = argument1

for(var i = 0; i < maxBuys; i++) //White
{
	draw_sprite(Meter_spr,0,(x - sprite_get_width(sprite_index) / 2) + (i * sprite_get_width(Meter_spr)) + (sprite_get_width(Meter_spr) / 2),y + (sprite_get_height(sprite_index) / 2) + sprite_get_height(Meter_spr) / 2)
}

for(var i = 0; i < currentBuys; i++) //Purchased (Red)
{
	draw_sprite(Meter_spr,1,(x - sprite_get_width(sprite_index) / 2) + (i * sprite_get_width(Meter_spr)) + (sprite_get_width(Meter_spr) / 2),y + (sprite_get_height(sprite_index) / 2) + sprite_get_height(Meter_spr) / 2)	
}