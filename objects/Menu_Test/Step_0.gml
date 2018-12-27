if (grow = true)
{
	image_xscale += ((image_xscale * maxsize) - image_xscale) * growspeed
	image_yscale += ((image_xscale * maxsize) - image_xscale) * growspeed
	if (image_xscale >= maxsize)
	{
		grow = false
	}
	
	//image_angle += spinspeed
}
else if (grow = false)
{
	image_xscale += ((image_xscale * minsize) - image_xscale) * growspeed
	image_yscale += ((image_yscale * minsize) - image_yscale) * growspeed
	if (image_xscale <= minsize)
	{
		grow = true	
	}
	
	//image_angle -= spinspeed
}