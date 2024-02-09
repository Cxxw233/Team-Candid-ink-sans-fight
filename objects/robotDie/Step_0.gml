if(xt=1)
{
image_angle+=ang
}
if(xt=0)
{
image_angle+=ang
}

if(image_alpha>0)
{
image_alpha-=0.05
}
if(image_alpha=0)
{
instance_destroy()
}

