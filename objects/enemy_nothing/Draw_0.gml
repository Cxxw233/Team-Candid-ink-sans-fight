if(lock) then y=global.iy-10;
if(global.phase=11 || global.phase=22)
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
if(global.phase=1||global.phase=2||global.phase==5)
{
a+=1
yy=sin(a/30)*2
yy1=sin(a/30)*3
}
//draw_sprite_ext(spr_ink_scarf,0,x+xx-33, y+yy-118,2,2,sin(a*0.1*alam)*4,c_white,alpha)
//draw_sprite_ext(spr_ink_pen,penxt,x+xx,y-sprite_get_height(spr_ink_tui)*2+yy,2,2,0,c_white,alpha)
//draw_sprite_ext(sprLorisLegs,0,x,y,0.5,0.5,0,c_white,alpha)
draw_sprite_pos(index,0,x+xx-(sprite_get_xoffset(index)*2),y+yy-(sprite_get_yoffset(index)*2),x+xx+(sprite_get_width(index)*2-sprite_get_xoffset(index)*2),y+yy-(sprite_get_yoffset(index)*2),x+(sprite_get_width(index)*2-sprite_get_xoffset(index)*2),y+(sprite_get_yoffset(index)*2-sprite_get_yoffset(index)*2),x-sprite_get_xoffset(index)*2,y+(sprite_get_yoffset(index)*2-sprite_get_yoffset(index)*2),alpha);
if(spr_body=sprNothingBody)
{
draw_sprite_ext(spr_body,shenxt1,x+xx,y-50+yy,2,2,0,c_white,alpha)
}
else
{
draw_sprite_ext(spr_body,shenxt1,x+xx,y-50+yy,2,2,0,c_white,alpha)
}
draw_sprite_ext(sprNothingHead,touxt,x+xx1,y+yy1-112,2,2,0,c_white,alpha)

if(keepY==1){
	if(global.phase!=1){
		y=global.iy-6;
	}
}

run_timer ++;
if (run_timer % 30 == 0) {
	xxxx=random_range(58,-58);
	yyyy=random_range(13,120);
	xxxx1=random_range(58,-58);
	yyyy1=random_range(13,120);
}
eff_ind += (run_timer % 10 == 0);
draw_sprite_ext(spr_sanss_glitch,eff_ind,x+xxxx+xx,y-yyyy+yy,2,2,0,c_white,alpha);
draw_sprite_ext(spr_sanss_glitch,eff_ind-4,x+xxxx1+xx,y-yyyy1+yy,2,2,0,c_white,alpha);

#region SlamInk
	if(ss=1){
	ssw+=1
#region Down

if(DOW=ink_ss.sdown)//down
{
	/*with(obj_soul)
{
xt=1
angle="down"
slam=1;
//repeat(10) obj_soul.y++;
//y=global.ih;
//easing_execute(id,"y",easing_class.sine,easing_class.in,y,+(global.ih-y),15);
//easing_execute(id,"y",easing_class.sine,easing_class.in,y,abs(global.ih-y),15);
}*/
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

}
if(ssw=10)
{
yyy=0
ss=0
ssw=0
shenxt1=0
spr_body=sprBodyOriginal
obj_soul.slam=0;
}
}
#endregion;
#region Up
if(DOW=ink_ss.sup)//up
{
	/*with(obj_soul)
{	
	
xt=1
angle="up"
//repeat(10) obj_soul.y--;
slam=1;
//y=global.iy;
//easing_execute(id,"y",easing_class.sine,easing_class.in,y,-(y-global.iy),15);
}*/
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

}
if(ssw=10)
{
yyy=0
ss=0
ssw=0
shenxt1=0
spr_body=sprBodyOriginal
obj_soul.slam=0;
}
}
#endregion;
#region Left
if(DOW=ink_ss.sleft)//left
{
	/*with(obj_soul)
{
xt=1
angle="left";slam=1;
//repeat(10) obj_soul.x--;
//x=global.ix;//easing_execute(id,"x",easing_class.sine,easing_class.in,x,-(x-global.ix),15);
//easing_execute(id,"x",easing_class.sine,easing_class.in,y,-abs(global.ix-x),15);
}*/
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

}
if(ssw=10)
{
xxx=0
ss=0
ssw=0
shenxt1=0
spr_body=sprBodyOriginal;obj_soul.slam=0;
}
}
#endregion;
#region Right
if(DOW=ink_ss.sright)//right
{
	/*with(obj_soul)
{
xt=1
angle="right";slam=1;
//repeat(10) x--;
//x=global.iw;
//easing_execute(id,"x",easing_class.sine,easing_class.in,x,+(global.iw-x),15);
}*/
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

}
if(ssw=10)
{
xxx=0
ss=0
ssw=0
shenxt1=0
spr_body=sprBodyOriginal;obj_soul.slam=0;
}
}
#endregion;
}
#endregion;