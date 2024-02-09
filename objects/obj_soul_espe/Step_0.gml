/// @description Move
#region SoulMove
if(global.tre==0){
#region Red
if (xt=0)
{
if (place_free(x+5,y))
{
if (keyboard_check(ord("D")))
{
if (!keyboard_check(vk_shift))
{
x+=5
}
else
{
x+=2
}
}
}

if (place_free(x-5,y))
{
if (keyboard_check(ord("A")))
{
if (!keyboard_check(vk_shift))
{
x-=5
}
else
{
x-=2
}
}
}

if (place_free(x,y-5))
{
if (keyboard_check(ord("W")))
{
if (!keyboard_check(vk_shift))
{
y-=5
}
else
{
y-=2
}
}
}

if (place_free(x,y+5))
{
if (keyboard_check(ord("S")))
{
if (!keyboard_check(vk_shift))
{
y+=5
}
else
{
y+=2
}
}
}
}
#endregion

};
#region Hurt
/*if (global.kr=0)
{*/
if (hpj>0)
{
hpj-=1
if(hpj mod 4 = 0)
{
if(image_blend=c_gray)
{
image_blend=c_white
}
else
{
if(image_blend=c_white)
{
image_blend=c_gray
}
}
}
}
if (hpj=0)
{
image_blend=c_white
}
if (global.hp<=0)
{
gravity=0
vspeed=0
global.hp=0
if (!instance_exists(obj_die))
{
var (die) = instance_create_depth(x,__view_get(e__vw.yview,0)+y,-114514,obj_die)
die.xt=8
}
xt=114514
}
else
{
image_index=8
}
#endregion
#endregion;

#region None
/*}
else
{
global.hp=obj_system.kr
if (obj_system.nowkr<=0)
{
global.hp=0
obj_system.nowkr=0
if (!instance_exists(obj_die))
{
instance_create(x,y,obj_die)
}
}
else
{
image_index=xt
}
}/**/
///sprite
//image_index=xt
#endregion;
