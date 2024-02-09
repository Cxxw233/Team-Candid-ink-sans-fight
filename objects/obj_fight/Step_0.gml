if (xt=1)
{
image_xscale-=0.1
image_alpha-=0.1
//image_yscale+=0.01
}
if (image_alpha<=0)
{
global.tre=0
with(enemy)
{
event_user(15)
}
instance_destroy()
obj_soul.x=320
obj_soul.y=320
}

