image_alpha = clamp(image_alpha - 0.01, 0, 1);
if (image_alpha = 0)
	instance_destroy(self)
image_angle += .5