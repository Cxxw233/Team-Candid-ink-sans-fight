talk=obj_system.talk
a=1
b=0
xs=1
ys=1
xx=0
yy=0
fnt=fnt_menu;
time=1
alpha=1
color=c_white
sleep=0
gmm=0
temp=0;
xsep=0;
_h=0;
if(global.turn=turn12)
{
ii=0
repeat(12)
{
ii++
mk=instance_create_depth(x,y+ii*20,depth,talk3)
}
}

offset_x = 0;