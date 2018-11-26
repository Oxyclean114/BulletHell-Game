instance_destroy(self)
instance_destroy(other)
//Play Sound
audio_play_sound(Box_Break,1,false)
//Create a random amount of coins
for(var i = (irandom(7) + 2); i >= 0; i--)
{
	instance_create_depth(x,y,1,Coin)
}
//Create Box shards
instance_create_depth(x,y,1,BoxPt1)
instance_create_depth(x,y,1,BoxPt2)
instance_create_depth(x,y,1,BoxPt3)