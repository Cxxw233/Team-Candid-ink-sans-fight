a+=1
run++;

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
//draw_sprite_pos(spr__tui,0, x+xx-(sprite_get_xoffset(spr_sans_tui)*2),y+yy-(sprite_get_yoffset(spr_sans_tui)*2),x+xx+(sprite_get_width(spr_sans_tui)*2-sprite_get_xoffset(spr_sans_tui)*2),y+yy-(sprite_get_yoffset(spr_sans_tui)*2),x+(sprite_get_width(spr_sans_tui)*2-sprite_get_xoffset(spr_sans_tui)*2),y+(sprite_get_yoffset(spr_sans_tui)*2-sprite_get_yoffset(spr_sans_tui)*2),x-sprite_get_xoffset(spr_sans_tui)*2,y+(sprite_get_yoffset(spr_sans_tui)*2-sprite_get_yoffset(spr_sans_tui)*2),alpha)
draw_sprite_ext(spr_fresh_tui,0,insx,insy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_fresh_shen,0,insx+xx,insy-64+yy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_fresh_tou,1,insx+xx1,insy+yy1-120,2,2,0,c_white,alpha)
draw_sprite_ext(spr_fresh_tou,0,x+xx1,y+yy1-120,2,2,angle,c_white,alpha)
if(fly=1)
{
vspeed=random_range(-10,10)
hspeed=random_range(-10,10)
gravity=0.4
fly=2
anga=vspeed
}
if(fly=2)
{
angle+=anga
}

if(run mod 10 = 0)
{
gx+=1
}
if(run mod 30 = 0)
{
xxx=random_range(58,-58)
yyy=random_range(13,120)
xxx1=random_range(58,-58)
yyy1=random_range(13,120)
}
draw_sprite_ext(spr_sanss_glitch,gx,insx+xxx,insy-yyy,2,2,0,make_color_hsv(irandom_range(1,255),255,255),alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,insx+xxx1,insy-yyy1,2,2,0,make_color_hsv(irandom_range(1,255),255,255),alpha)

//draw_sprite_ext(spr_sans_eff,0,x,y-76,image_xscale,image_yscale,0,make_color_hsv(irandom_range(1,255),255,255),image_alpha)

if (ind != 9) {
	draw_sprite(spr_fresh_intro, ind, 200, 150);
	ind ++;
}
