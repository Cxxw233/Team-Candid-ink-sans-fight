if(xt=0)
{
if(alpha<1)
{
alpha+=0.1
}
}


a+=1
yy=sin(a/30)*3
//draw_sprite_ext(newSprOuterLegs,0,x,y,0.5,0.5,0,c_white,alpha)
//draw_sprite_ext(newSprOuterBody,shenxt,x,y-42+yy,0.5,0.5,0,c_white,alpha)
//draw_sprite_ext(newSprOuterHead,0,x,y+yy*1.5-82-9,0.5,0.5,0,c_white,alpha);
draw_sprite_ext(spr_outer_s_tui,0,x,y,2,2,0,c_white,alpha)
draw_sprite_ext(spr_outer_s_shen,shenxt,x,y-42+yy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_outer_s_tou,0,x,y+yy*1.5-82,2,2,0,c_white,alpha)



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
}
draw_sprite_ext(spr_sanss_glitch,gx,x+xxx,y-yyy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,c_white,alpha)