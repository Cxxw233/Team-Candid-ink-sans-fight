if(xt=1 || xt=6 || xt=7)
{
a+=1
draw_sprite_pos(sprCopyCr,0,x-30,y-80,x+40,y-80,x+30+sin(a/80)*30,y-8,x-40+sin(a/80)*25,y-8,1)
draw_sprite_ext(sprCopyLegs,0,x+6,y,2,2,0,c_white,alpha)
draw_sprite_ext(sprCopyBody,1,x,y-40-sin(a/30),2,2,0,c_white,alpha)
draw_sprite_ext(sprCopyHead,0,x+2,y-75-sin(a/30)*2,2,2,0,c_white,alpha)
}
if(xt=6)
{
var(iii)=1
repeat(7)
{
(instance_create_depth(x,y-70,depth-100,obj_sans_eff_ext)).direction=60*iii
iii+=1
}
alarm[0]=15
xt=7
}

if(xt=1 || xt=6)
{
if(a mod 10 = 0)
{
gx+=1
}
if(a mod 45 = 0)
{
xxx=random_range(58,-58)
yyy=random_range(13,120)
xxx1=random_range(58,-58)
yyy1=random_range(13,120)
}
draw_sprite_ext(spr_sanss_glitch,gx,x+xxx,y-yyy,2,2,0,make_color_rgb(65,11,74),alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,make_color_rgb(65,11,74),alpha)
}

draw_sprite_ext(spr_sans_eff,0,x,y-76,image_xscale,image_yscale,0,make_color_rgb(65,11,74),image_alpha)
