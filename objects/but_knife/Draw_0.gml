if(xxxt=0)
{
draw_self()
if(xt=1)
{
a+=1
bb=sin(a/10)
if(a>time)
{
bt*=0.06
}
if(bt<0.2)
{
instance_destroy()
}
image_yscale=900
image_xscale=bb*image_xscale*2.4
image_blend=pd
sprite_index=spr_pixel
}
}
if(xxxt=1)
{
draw_self()
speed+=0.6
}
if(xxxt=11)
{
draw_self()
if(c<30)
{
image_angle=point_direction(x,y,obj_soul.x,obj_soul.y)+29
direction=point_direction(x,y,obj_soul.x,obj_soul.y)
}
c+=1
if(image_alpha<1)
{
image_alpha+=0.05
}
else
{
c+=1
if(c=30)
{
speed=16
}
if(c>30)
{
speed+=0.05
}
}
if(c>30)
{
var knife=(instance_create_depth(x,y,depth,but_knife))
knife.xxxt=16
knife.image_angle=image_angle
knife.sprite_index=sprite_index

}
}
if(xxxt=16)
{
draw_self()
image_alpha-=0.05
if(image_alpha<0.05)
{
instance_destroy()
}
}
if(xxxt=114514)
{
image_angle=90+10
var knife=(instance_create_depth(x,y,depth,but_knife))
knife.xxxt=16
knife.image_angle=image_angle
knife.sprite_index=sprite_index
knife.image_blend=pd
}
if(xxxt=999)
{
draw_self()
}