a+=1
if(xt=1||xt=4||xt=5)
{
draw_sprite_ext(spr_ho_s_tui,0,x,y,2,2,0,c_white,alpha)
draw_sprite_ext(spr_ho_s_shen,0,x,y-44+sin(a/25)*2,2,2,0,c_white,alpha)
draw_sprite_ext(spr_sanss_glitch,gx,x+xxx,y-yyy,2,2,0,col,alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,x+xxx1,y-yyy1,2,2,0,col1,alpha)
}
if(show=1)
{
draw_set_alpha(1)
draw_set_color(c_orange)
draw_rectangle(x+100,y+yy-200,x,y+yy1-200,0)
draw_set_color(global.blue)
draw_rectangle(x-100,y-yy,x,y-yy1,0)
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
col=choose(make_color_rgb(228,128,27),make_color_rgb(0,255,255))
col1=choose(make_color_rgb(228,128,27),make_color_rgb(0,255,255))
}
if(xt=4)
{
b=20
xt=5
}
if(xt=5)
{
index=1
b+=1
if(b<=35)
{
easing_execute(id,"alpha1",easing_class.sine,easing_class.out,0,1,15)
}
if(b>50&&b<=55)
{
enemy.visible=1
easing_execute(id,"alpha",easing_class.sine,easing_class.out,1,-1,10)
easing_execute(id,"yscale",easing_class.sine,easing_class.out,100,-100,15)
}
}
if(xt=4||xt=5)
draw_sprite_ext(spr_ho_sans_eff,index,x,y-60,xscale*2,yscale,0,c_white,alpha1)