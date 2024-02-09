if(xt!=1)
{
image_angle+=9
if(instance_exists(obj_soul))
{
with(obj_soul)
{
move_outside_solid(point_direction(x,y,but_outer_bk.x,but_outer_bk.y),-1)
}
}
}

if(xt=1)
{
if(image_alpha>0)
{
image_alpha-=0.05
}
image_xscale-=0.03
image_yscale-=0.03

}
if(xt=0)
{
a+=1
if(a mod 4)=0
{
var(bk)=instance_create_depth(x,y+20,depth,but_outer_bk)
bk.gravity=0.6
bk.image_angle=image_angle
bk.xt=1
bk.solid=0
}
}


if(xt=3)
{
a+=1
if(a mod 4)=0
{
var(bk)=instance_create_depth(x,y+20,depth,but_outer_bk)
bk.gravity=0.6
bk.image_angle=image_angle
bk.xt=1
bk.solid=0
}
}