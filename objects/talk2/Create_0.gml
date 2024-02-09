a=0
b=0
xt=0
xxxx=0
col=c_white
time=1
name=" "
BG_spr=noone
xs=1
ys=1
yy=0
font=fnt_sans_say[0];
spr=noone
sleep=0
talk=""
maxxt=0
shenxt=0
alp=1
obj=enemy
obj_xt=id
var i = 0
repeat(130)
{
tk[i]=""
i+=1
}


if (instance_exists(enemy)){depth=enemy.depth-1}
obj=0
xt=0
talk=""
a=0
b=0
time=1
col=c_black
alp=1
ix=64
iy=562

maxxt=114514
/*for(i=0;i<100;i+=1)
say[i]=0


/* */
/*  */

start[0] = false;
start[1] = "start";
start[2] = true;