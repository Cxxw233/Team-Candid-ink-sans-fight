if(xt=0)
{
xt=1
speed=0
alarm[0]=42
image_speed=0.5
if (global.color=0){
var(bat)=instance_create_depth(enemy.x,enemy.y-80,0,obj_bat)
if(abs(320-x)>181)
{
bat.image_yscale=0.5
bat.image_xscale=0.5
}
if(abs(320-x)<91 || abs(320-x)<=181)
{
bat.image_yscale=0.7
bat.image_xscale=0.7
}
if(abs(320-x)>20 && abs(320-x)<=91)
{
bat.image_yscale=1
bat.image_xscale=1
}
if(abs(320-x)<=20)
{
bat.image_yscale=1.2
bat.image_xscale=1.2
}
}

if (global.color=1){
var(bat)=instance_create_depth(-40+nb*80,40,0,obj_bat)
bat.image_yscale=1
bat.image_xscale=1
}
}

