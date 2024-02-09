/// @description Settings
if (WaveChange)
{
	Siner += 0.28;
	WaveBuff = ((sin(Siner) * 0.4) + (1 * image_xscale));
    image_xscale = lerp(image_xscale, WaveBuff, 0.15);
	//image_alpha = lerp(image_alpha, WaveBuff, 0.15)
}
else
{
	image_xscale = lerp(image_xscale, 0, 0.2);
}
if (image_xscale <= 0.5)
{
	instance_destroy();
}









