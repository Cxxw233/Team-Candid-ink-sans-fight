if(xt=0)
{
b+=1
}
if(b<=20 && xt=0)
{
image_alpha+=0.05
image_xscale+=0.1
image_yscale+=0.1
//b+=1
}
if(b=25 && xt=0)
{
xt=1
b=0
}
if(xt=1)
{
c+=1
if(c<=20)
{
image_alpha-=0.05
image_xscale-=0.1
image_yscale-=0.1
}
}
if(xt=1 || xt=6)
{
a+=1
switch (a)
{
case 1:xx-=1;yy1+=1;break
case 3:yy+=1;yy1+=1;xx1-=1;break
case 6:xx1-=1;xx-=1;yy+=1;break
case 8:xx1-=1;xx-=1;break
case 12:yy-=2;yy1-=2;break
case 16:xx+=1;xx1+=1;break
case 18:xx+=1;xx1+=1;break
case 20:yy+=2;yy1+=2;break
case 22:xx+=1;xx1+=1;yy1+=1;break
case 24:xx+=1;xx1+=1;yy1-=1;break
case 26:yy-=1;yy1-=1;break
case 29:yy-=1;yy1-=1;break
case 31:yy1-=1;break
case 33:yy1+=1;xx1-=1;xx-=1;a=0;break
}
draw_sprite_pos(spr_of_s_tui,0, x+xx-(sprite_get_xoffset(spr_of_s_tui)*2),y+yy-(sprite_get_yoffset(spr_of_s_tui)*2),x+xx+(sprite_get_width(spr_of_s_tui)*2-sprite_get_xoffset(spr_of_s_tui)*2),y+yy-(sprite_get_yoffset(spr_of_s_tui)*2),x+(sprite_get_width(spr_of_s_tui)*2-sprite_get_xoffset(spr_of_s_tui)*2),y+(sprite_get_yoffset(spr_of_s_tui)*2-sprite_get_yoffset(spr_of_s_tui)*2),x-sprite_get_xoffset(spr_of_s_tui)*2,y+(sprite_get_yoffset(spr_of_s_tui)*2-sprite_get_yoffset(spr_of_s_tui)*2),alpha)
draw_sprite_ext(spr_of_s_shen,0,x+xx,y-36+yy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_of_s_tou,0,x+xx1,y+yy1-89,2,2,0,c_white,alpha)
};
if(xt=6)
{
b+=1
if(b<=20)
{
image_alpha+=0.05
image_xscale+=0.1
image_yscale+=0.1
}
if(b=25)
{
xt=7
b=114514
}
}
if(xt=7)
{
d+=1
if(d<=20 && d>1)
{
image_alpha-=0.05
image_xscale-=0.1
image_yscale-=0.1
}
}
gt++;
if(xt=1 || xt=6)
{
if(gt mod 10 = 0)
{
gx+=1
}
if(gt mod 30 = 0)
{
xxx=random_range(58,-58)
yyy=random_range(13,120)
xxx1=random_range(58,-58)
yyy1=random_range(13,120)
}
draw_sprite_ext(spr_sanss_glitch,gx,x+xxx,y-yyy,2,2,0,make_color_rgb(255,154,34),alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,make_color_rgb(255,154,34),alpha)
}
draw_sprite_ext(spr_of_sans_eff,0,x,y-76,image_xscale,image_yscale,0,c_white,image_alpha)
