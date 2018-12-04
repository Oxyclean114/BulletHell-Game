/*
Changes the sprite from the first subimage to the next when hovered over by the mouse
This should ideally be a default sprite in subimage 1 and a darker "pressed" sprite in subimage 2

Also plays a single iteratino of a sound effect when the mouse hovers over the object
*/


//Change sprite from static to hovered
if (!position_meeting(mouse_x,mouse_y,self))
{
	draw_sprite(sprite_index,0,x,y)
}
else
{
	draw_sprite(sprite_index,1,x,y)
}

//Play hover sound
if (position_meeting(mouse_x,mouse_y,self))
{
	if (once = false)
	{
		once = true
		audio_play_sound(ButtonHover,1,false)
	}
}
else
{
	once = false
}