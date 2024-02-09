if(xt=1)
{
if(alpha<1)
{
alpha+=0.25
}
}
if(xt=2)
{
if(alpha>0)
{
alpha-=0.25
}
if(alpha=0)
{
instance_destroy()
}
}
a+=1
yy=sin(a/30)*3
draw_sprite_ext(spr_ae_s_tui,0,x,y,2,2,0,c_white,alpha)
draw_sprite_ext(spr_ae_s_shen,shenxt,x,y-44+yy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_ae_s_tou,0,x,y+yy*1.5-94,2,2,0,c_white,alpha)

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
draw_sprite_ext(spr_sanss_glitch,gx,x+xxx,y-yyy,2,2,0,c_gray,alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,c_gray,alpha)