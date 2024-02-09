if(xt=0)
{
sprite_index=spr_knife
a++
if(image_alpha<1)
{
image_alpha+=0.05
}
}
if(xt=1)
{
with(enemy_killer){knife=1;}
sprite_index=spr_pixel
a++
image_yscale=1400
if(a=time)
{
	c=instance_create_depth(x,y,depth,obj_knife)
	c.xt=2
	c.sprite_index=spr_pixel
	c.image_blend=image_blend
	c.time=time2
	c.image_angle=image_angle
	with(enemy_killer){knife=2;}
	instance_destroy()
}
}
if(xt=2)
{
	sprite_index=spr_pixel
	image_yscale=1400
	a++
	if(image_xscale<15)
	image_xscale++
	if(a>=time)
	{
	if (image_alpha > 0)
	{
    image_alpha -= 0.05
	}
	if (image_alpha <= 0)
	{
    instance_destroy()
	}
}
}
if(xt=3)
{
sprite_index=spr_knife
alarm[0]=1
if(xtt=1)
{
image_angle = (mc + 45)+90
if (ed == 0)
{
    y = ((oy + playery) - 320)
    x = ((ox + playerx) - 320)
}
else
    y += 10
oy++
ox++
if (y > 800)
    instance_destroy()
}
}
if(xt=4)
{
sprite_index=spr_knife
a++
if(a=1)/**/{
easing_execute(id,"image_alpha",easing_class.sine,easing_class.in,0,+1,30);
}
if(a<=20)
image_angle+=9
if(a>20&&a<25)
{
vspeed = -7+a*0.1
}
if(a>40)
{
vspeed = 12+a*0.05
}
if(a>20)
{
mk=instance_create_depth(x,y,depth-1,obj_knife)
mk.xt=5
mk.image_angle=image_angle
mk.image_blend=image_blend
}
}
if(xt=5)
{
sprite_index=spr_knife
if(image_alpha>0)
{
image_alpha-=0.07
}
if(image_alpha=0)
{
instance_destroy()
}
}
if(instance_exists(obj_die))
instance_destroy()