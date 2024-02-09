if(lock) then y=global.iy-10;
//draw_text(20,20,string(y)+"\n"+string(x)+"\n"+string(alpha));
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
// low low low you baotou zuili dong de shi qu~
draw_sprite_ext(sprLorisDai,0,x+xx-33, y+yy-118+30,0.5,0.5,sin(a*0.1*alam)*4,c_white,alpha)
//draw_sprite_ext(spr_ink_pen,penxt,x+xx,y-sprite_get_height(spr_ink_tui)*2+yy,2,2,0,c_white,alpha)
//draw_sprite_ext(sprLorisLegs,0,x,y,0.5,0.5,0,c_white,alpha)
draw_sprite_pos(index,0,x+xx-(sprite_get_xoffset(index)*2),y+yy-(sprite_get_yoffset(index)*2),x+xx+(sprite_get_width(index)*2-sprite_get_xoffset(index)*2),y+yy-(sprite_get_yoffset(index)*2),x+(sprite_get_width(index)*2-sprite_get_xoffset(index)*2),y+(sprite_get_yoffset(index)*2-sprite_get_yoffset(index)*2),x-sprite_get_xoffset(index)*2,y+(sprite_get_yoffset(index)*2-sprite_get_yoffset(index)*2),alpha);
if(spr_body=sprLorisBody)
{
draw_sprite_ext(spr_body,shenxt,x+xx,y-50+yy,0.5,0.5,0,c_white,alpha)
}
else
{
draw_sprite_ext(spr_body,shenxt1,x+xx,y-50+yy,0.5,0.5,0,c_white,alpha)
}
draw_sprite_ext(sprLorisHead,touxt,x+xx1,y+yy1-112,0.5,0.5,0,c_white,alpha)

if(keepY==1){
	if(global.phase!=1){
		y=global.iy-6;
	}
}
gt++;
if(gt mod 10 = 0)
{
gx+=1
}
if(gt mod 30 = 0)
{
xxx=random_range(52,-52)
yyy=random_range(13,170)
xxx1=random_range(52,-52)
yyy1=random_range(13,170)
}
draw_sprite_ext(spr_sanss_glitch,gx,x+xxx,y-yyy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,c_white,alpha)