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
draw_sprite_pos(spr_reaper_tui,0, x+xx-(sprite_get_xoffset(spr_reaper_tui)*2),y+yy-(sprite_get_yoffset(spr_reaper_tui)*2),x+xx+(sprite_get_width(spr_reaper_tui)*2-sprite_get_xoffset(spr_reaper_tui)*2),y+yy-(sprite_get_yoffset(spr_reaper_tui)*2),x+(sprite_get_width(spr_reaper_tui)*2-sprite_get_xoffset(spr_reaper_tui)*2),y+(sprite_get_yoffset(spr_reaper_tui)*2-sprite_get_yoffset(spr_reaper_tui)*2),x-sprite_get_xoffset(spr_reaper_tui)*2,y+(sprite_get_yoffset(spr_reaper_tui)*2-sprite_get_yoffset(spr_reaper_tui)*2),alpha)
draw_sprite_ext(spr_reaper_shen,0,x+xx,y-40+yy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_reaper_tou,0,x+xx1,y+yy1-80,2,2,0,c_white,alpha)
draw_sprite_ext(spr_reaper_tou,floor(touxt),x+xx1,y+yy1-80,2,2,0,c_white,alpha1)
gt++;

if(gt mod 10 = 0)
{
gx+=1
}
if(gt mod 30 = 0)
{
xxx=random_range(58,-58)
yyy=random_range(13,160)
xxx1=random_range(58,-58)
yyy1=random_range(13,160)
}
draw_sprite_ext(spr_reaper_glitch,gx,x+xxx,y-yyy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_reaper_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,c_white,alpha)

