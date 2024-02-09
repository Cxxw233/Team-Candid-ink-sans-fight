//a+=1/20
a+=1
draw_sprite_ext(spr_dust_tui,0,x,y,2,2,0,c_white,alpha)

/*switch (a)
{
case 1: yy1+=1;break
case 3: yy+=1;yy1+=1;break
case 6: yy+=1;break
case 12: yy-=2;yy1-=2;break
case 20: yy+=2;yy1+=2;break
case 22: yy1+=1;break
case 24: yy1-=1;break
case 26: yy-=1;yy1-=1;break
case 29: yy-=1;yy1-=1;break
case 31: yy1-=1;break
case 33: yy1+=1;a=0;break
}
*/
//draw_sprite_pos(spr_dust_tui,0, x+xx-(sprite_get_xoffset(spr_dust_tui)*2),y+yy-(sprite_get_yoffset(spr_dust_tui)*2),x+xx+(sprite_get_width(spr_dust_tui)*2-sprite_get_xoffset(spr_dust_tui)*2),y+yy-(sprite_get_yoffset(spr_dust_tui)*2),x+(sprite_get_width(spr_dust_tui)*2-sprite_get_xoffset(spr_dust_tui)*2),y+(sprite_get_yoffset(spr_dust_tui)*2-sprite_get_yoffset(spr_dust_tui)*2),x-sprite_get_xoffset(spr_dust_tui)*2,y+(sprite_get_yoffset(spr_dust_tui)*2-sprite_get_yoffset(spr_dust_tui)*2),alpha)
draw_sprite_ext(spr_dust_shen,shenxt,x,y-40-sin(a/20),2,2,0,c_white,alpha)
if(papyrus=1&&alpha1=0)
easing_execute(id,"alpha1",easing_class.linear,easing_class.in,0,1,12)  
draw_sprite_ext(spr_dust_papyrus,0,x,y,1,1,0,c_white,alpha1)
if(instance_exists(obj_soul))
{
if(abs(obj_soul.x-x)<40)
{
shenxt=0
}
if(obj_soul.x<x-40)
{
shenxt=1
}

if(obj_soul.x>x+40 && obj_soul.x<x+120)
{
shenxt=2
}

if(obj_soul.x>x+120 && obj_soul.x<x+180)
{
shenxt=3
}

if(obj_soul.x>x+180)
{
shenxt=4
}

}

if(a mod 10 = 0)
{
gx+=1
}
if(a mod 30 = 0)
{
xxx=random_range(58,-58)
yyy=random_range(13,120)
xxx1=random_range(58,-58)
yyy1=random_range(13,120)
col=choose(c_red,c_purple)
col1=choose(c_red,c_purple)
}
draw_sprite_ext(spr_sanss_glitch,gx,x+xxx,y-yyy,2,2,0,col,alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,col1,alpha)

if(xt=1)
{
papyrus=0
easing_execute(id,"alpha",easing_class.linear,easing_class.in,alpha,-1,12) 
easing_execute(id,"alpha1",easing_class.linear,easing_class.in,alpha1,-1,12) 
xtt++
if(xtt=20)
instance_destroy(id)
}
