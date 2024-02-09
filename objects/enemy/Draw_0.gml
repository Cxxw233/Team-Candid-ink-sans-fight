if(inkswing=1)
{
if(global.phase=1 || global.phase=2)
{
a+=1
switch (a)
{
case 1:xx-=1;yy1+=1;shenxt=0;break
case 3:yy+=1;yy1+=1;xx1-=1;break
case 6:xx1-=1;xx-=1;yy+=1;break
case 8:xx1-=1;xx-=1;break
case 12:yy-=2;yy1-=2;shenxt=1;break
case 16:xx+=1;xx1+=1;shenxt=2;break
case 18:xx+=1;xx1+=1;break
case 20:yy+=2;yy1+=2;break
case 22:xx+=1;xx1+=1;yy1+=1;break
case 24:xx+=1;xx1+=1;yy1-=1;shenxt=1;break
case 26:yy-=1;yy1-=1;break
case 29:yy-=1;yy1-=1;break
case 31:yy1-=1;break
case 33:yy1+=1;xx1-=1;xx-=1;a=0;shenxt=0;break
}
}
if(global.phase=3||global.phase=4||global.phase==5)
{
a+=1
yy=sin(a/30)*2
yy1=sin(a/30)*3
}
if(global.phase=4&&global.phase4=0&&touxt=31)
{
sleep += 1
if(sleep=10){instance_create_depth(x + 20, y - 170,depth-1, obj_ink_z)}
if(sleep=20){instance_create_depth(x + 20, y - 170,depth-1, obj_ink_z)}
if(sleep=30){instance_create_depth(x + 20, y - 170,depth-1, obj_ink_z)}
if(sleep=80){sleep=0}
}
}
draw_sprite_ext(spr_ink_scarf,0,x+xx-33, y+yy-118,2,2,sin(a*0.1*alam)*4,c_white,alpha)
draw_sprite_ext(spr_ink_pen,penxt,x+xx,y-sprite_get_height(spr_ink_tui)*2+yy,2,2,0,c_white,alpha)
draw_sprite_pos(spr_ink_tui, 0, x+xx-(sprite_get_xoffset(spr_ink_tui)*2),y+yy-(sprite_get_yoffset(spr_ink_tui)*2),x+xx+(sprite_get_width(spr_ink_tui)*2-sprite_get_xoffset(spr_ink_tui)*2),y+yy-(sprite_get_yoffset(spr_ink_tui)*2),x+(sprite_get_width(spr_ink_tui)*2-sprite_get_xoffset(spr_ink_tui)*2),y+(sprite_get_yoffset(spr_ink_tui)*2-sprite_get_yoffset(spr_ink_tui)*2),x-sprite_get_xoffset(spr_ink_tui)*2,y+(sprite_get_yoffset(spr_ink_tui)*2-sprite_get_yoffset(spr_ink_tui)*2),alpha)
if(spr_body=spr_ink_body)
{
draw_sprite_ext(spr_body,shenxt,x+xx,y-50+yy,2,2,0,c_white,alpha)
}
else
{
draw_sprite_ext(spr_body,shenxt1,x+xx,y-50+yy,2,2,0,c_white,alpha)
}
draw_sprite_ext(spr_ink_face,touxt,x+xx1,y+yy1-112,2,2,0,c_white,alpha)

if(keepY==1){
	if(global.phase!=1&&global.phase!=2){
		y=global.iy-6;
	}
}

#region SlamInk
	if(ss=1){
	ssw+=1
#region Down
//if(xtest==0){obj_soul.downspd=0};
//obj_soul.y=global.ih;
if(DOW=ink_ss.sdown)//down
{
if(ssw=2)
{
	
yyy-=2
shenxt1=1
}
if(ssw=5)
{
yyy+=2
shenxt1=2
}
if(ssw=8)
{
yyy+=2
shenxt1=3

with(obj_soul)
{
xt=1
slam=1;
angle="down"
//easing_execute(id,"y",easing_class.sine,easing_class.in,y,+(global.ih-y),15);
}
}
if(ssw=10)
{
yyy=0
ss=0
ssw=0
shenxt1=0
spr_body=spr_ink_body
obj_soul.slam=0;
}
}
#endregion;
#region Up
//if(xtest==0){obj_soul.downspd=0};
//obj_soul.y=global.iy;
if(DOW=ink_ss.sup)//up
{
if(ssw=2)
{
yyy+=2
shenxt1=1
}
if(ssw=5)
{
yyy-=2
shenxt1=2
}
if(ssw=8)
{
yyy-=2
shenxt1=3
with(obj_soul)
{	
	
xt=1
angle="up"
easing_execute(id,"y",easing_class.sine,easing_class.in,y,-(y-global.iy),15);
//easing_execute(id,"y",easing_class.sine,easing_class.in,y,-abs(global.iy-y),15);
slam=1;
}
}
if(ssw=10)
{
yyy=0
ss=0
ssw=0
shenxt1=0
spr_body=spr_ink_body
obj_soul.slam=0;
}
}
#endregion;
#region Left
//if(xtest==0){obj_soul.downspd=0};
//obj_soul.x=global.ix;
if(DOW=ink_ss.sleft)//left
{
if(ssw=2)
{
xxx+=2
shenxt1=1
}
if(ssw=5)
{
xxx-=2
shenxt1=2
}
if(ssw=8)
{
xxx-=2
shenxt1=3
with(obj_soul)
{
xt=1
angle="left";slam=1;
//easing_execute(id,"x",easing_class.sine,easing_class.in,x,-(x-global.ix),15);
}
}
if(ssw=10)
{
xxx=0
ss=0
ssw=0
shenxt1=0
spr_body=spr_ink_body;obj_soul.slam=0;
}
}
#endregion;
#region Right
//if(xtest==0){obj_soul.downspd=0};
//obj_soul.x=global.iw;
if(DOW=ink_ss.sright)//right
{
if(ssw=2)
{
xxx-=2
shenxt1=1
}
if(ssw=5)
{
xxx+=2
shenxt1=2
}
if(ssw=8)
{
xxx+=2
shenxt1=3
with(obj_soul)
{
xt=1
angle="right";slam=1;
easing_execute(id,"x",easing_class.sine,easing_class.in,x,+(global.iw-x),15);
}
}
if(ssw=10)
{
xxx=0
ss=0
ssw=0
shenxt1=0
spr_body=spr_ink_body;slam=0;
}
}
#endregion;
}
#endregion;