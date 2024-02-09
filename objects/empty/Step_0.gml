if(xt == 1)
{
	image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
if (global.phase == 2 && (!instance_exists(turn20))) {
	if (image_alpha < 0.1) {
		instance_destroy();
	}
}

