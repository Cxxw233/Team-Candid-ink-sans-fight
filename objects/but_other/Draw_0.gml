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
image_blend=c_red
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
var(knife)=(instance_create_depth(x,y,depth,but_other))
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
var(knife)=(instance_create_depth(x,y,depth,but_other))
knife.xxxt=16
knife.image_angle=image_angle
knife.sprite_index=sprite_index
knife.image_blend=c_red
}
if(xxxt=999)
{
draw_self()
}
if(xxxt=2333333333333)
{

if (xtment=2){
direction = image_angle//-20
speed+=a
a+=2
}


if (abs((x - idealx)) < 1 && abs((y - idealy)) < 1)
{
xtment=2
}


draw_self()
x+=floor(((idealx-x)/3))
y+=floor(((idealy-y)/3))
if(x<idealx)
x+=1
if(y<idealy)
y+=1
if(x>idealx)
x-=1
if(y>idealy)
y-=1
if(abs((x-idealx))<3)
x=idealx
if(abs((y-idealy))<3)
y=idealy
image_angle+=floor(((nowag-image_angle)/3))
if(image_angle<nowag)
image_angle+=1
if(image_angle>nowag)
image_angle-=1
if(abs((image_angle-nowag))<3)
image_angle=nowag
}

