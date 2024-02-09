if(xt=0)
{
b+=1
if(b<=10)
{
image_yscale+=0.2
image_xscale+=0.2
}
if(b=10)
{
alpha=1
}
if(b>20 && b<40)
{
yy2-=(b-10)
}
}
a+=1
switch (a)
{
case 1: xx-=1;yy1+=1;break
case 3: yy+=1;yy1+=1;xx1-=1;break
case 6: xx1-=1;xx-=1;yy+=1;break
case 8: xx1-=1;xx-=1;break
case 12: yy-=2;yy1-=2;break
case 16: xx+=1;xx1+=1;break
case 18: xx+=1;xx1+=1;break
case 20: yy+=2;yy1+=2;break
case 22: xx+=1;xx1+=1;yy1+=1;break
case 24: xx+=1;xx1+=1;yy1-=1;break
case 26: yy-=1;yy1-=1;break
case 29: yy-=1;yy1-=1;break
case 31: yy1-=1;break
case 33: yy1+=1;xx1-=1;xx-=1;a=0;break
}
//draw_sprite_pos(newSprFellLegs,0, x+xx-(sprite_get_xoffset(newSprFellLegs)*2),y+yy-(sprite_get_yoffset(newSprFellLegs)*2),x+xx+(sprite_get_width(newSprFellLegs)*2-sprite_get_xoffset(newSprFellLegs)*2),y+yy-(sprite_get_yoffset(newSprFellLegs)*2),x+(sprite_get_width(newSprFellLegs)*2-sprite_get_xoffset(newSprFellLegs)*2),y+(sprite_get_yoffset(newSprFellLegs)*2-sprite_get_yoffset(newSprFellLegs)*2),x-sprite_get_xoffset(newSprFellLegs)*2,y+(sprite_get_yoffset(newSprFellLegs)*2-sprite_get_yoffset(newSprFellLegs)*2),alpha)
//draw_sprite_ext(newSprFellBody,0,x+xx,y-42+yy,0.5,0.5,0,c_white,alpha)
//draw_sprite_ext(newSprFellHead,0,x+xx1,y+yy1-82,0.5,0.5,0,c_white,alpha)
draw_sprite_pos(spr_fell_s_tui,0, x+xx-(sprite_get_xoffset(spr_fell_s_tui)*2),y+yy-(sprite_get_yoffset(spr_fell_s_tui)*2),x+xx+(sprite_get_width(spr_fell_s_tui)*2-sprite_get_xoffset(spr_fell_s_tui)*2),y+yy-(sprite_get_yoffset(spr_fell_s_tui)*2),x+(sprite_get_width(spr_fell_s_tui)*2-sprite_get_xoffset(spr_fell_s_tui)*2),y+(sprite_get_yoffset(spr_fell_s_tui)*2-sprite_get_yoffset(spr_fell_s_tui)*2),x-sprite_get_xoffset(spr_fell_s_tui)*2,y+(sprite_get_yoffset(spr_fell_s_tui)*2-sprite_get_yoffset(spr_fell_s_tui)*2),alpha)
draw_sprite_ext(spr_fell_s_shen,0,x+xx,y-42+yy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_fell_s_tou,0,x+xx1,y+yy1-82,2,2,0,c_white,alpha)
if(xt=4)
{
b=20
xt=5
}
if(xt=5)
{
b+=1
if(b>40 && b<=50)
{
image_yscale-=0.2
image_xscale-=0.2
}
if(b=40)
{
alpha=0
}
if(b>20 && b<40)
{
yy2+=(b-10)
}
}
temp++;
if(temp mod 10 = 0)
{
gx+=1
}
if(temp mod 30 = 0)
{
xxx=random_range(58,-58)
yyy=random_range(13,120)
xxx1=random_range(58,-58)
yyy1=random_range(13,120)
}
draw_sprite_ext(spr_sanss_glitch,gx,x+xxx,y-yyy,2,2,0,c_red,alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,c_red,alpha)

draw_sprite_ext(spr_fell_s_eff,0,x,y+yy2-70,image_xscale,image_yscale,0+yy2,c_white,1)