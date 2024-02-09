if(obj_soul.hpj=0)
{
if (xt=0)
{
with(obj_soul)
{
event_user(10)
}
}
else
{
if (xt=2)
{
with(obj_soul)
{
event_user(11)
}
}
else
{
if (xt=3)
{
with(obj_soul)
{
event_user(12)
}
}
else
{
if (xt=6)
{
with(obj_soul)
{
xt=1
}
}
else
{
if (xt=1)
{
with(obj_soul)
{
xt=0
}
}
else
{
if (xt=4)
{
with(obj_soul)
{
global.hp=irandom_range(global.hp,99)
}
}
else
{
if (xt=5)
{
with(obj_soul)
{
global.hp+=irandom_range(1,20)
}
}
else
{
if (xt=7)
{
with(obj_soul)
{
global.hp-=irandom_range(1,10)
}
}
else
{
if (xt=8)
{
with(obj_soul)
{
event_user(10)
}
var eff=instance_create_depth(0,0,-1000,empty);
eff.sprite_index=spr_pixel;
eff.image_xscale=640;
eff.image_yscale=480;
eff.image_blend=choose(c_red,c_blue);
eff.image_alpha=0;
easing_execute(eff,"image_alpha",easing_class.sine,easing_class.in,0,+1,2);
easing_execute(eff,"image_alpha",easing_class.sine,easing_class.in,1,-1,4,3);
}
}
}
}
}
}
}
}
}
obj_soul.hpj=irandom_range(0,30)
}

