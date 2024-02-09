a+=1
if(a mod 10 = 0)
{
touxt+=1
}
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
draw_sprite_pos(spr_geno_tui,0, x+xx-(sprite_get_xoffset(spr_geno_tui)*2),y+yy-(sprite_get_yoffset(spr_geno_tui)*2),x+xx+(sprite_get_width(spr_geno_tui)*2-sprite_get_xoffset(spr_geno_tui)*2),y+yy-(sprite_get_yoffset(spr_geno_tui)*2),x+(sprite_get_width(spr_geno_tui)*2-sprite_get_xoffset(spr_geno_tui)*2),y+(sprite_get_yoffset(spr_geno_tui)*2-sprite_get_yoffset(spr_geno_tui)*2),x-sprite_get_xoffset(spr_geno_tui)*2,y+(sprite_get_yoffset(spr_geno_tui)*2-sprite_get_yoffset(spr_geno_tui)*2),alpha)
draw_sprite_ext(spr_error_body,0,x+xx,y-42+yy,2,2,0,c_white,alpha)
draw_sprite_ext(spr_error_head,touxt,x+xx1,y+yy1-82,2,2,0,c_white,alpha)
touxt+=0.5;
gt++;
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
t1=choose("e","E")
t6=choose("e","E")
t2=choose("r","R")
t7=choose("r","R")
t3=choose("r","R")
t8=choose("r","R")
t4=choose("o","O")
t9=choose("o","O")
t5=choose("r","R")
t10=choose("r","R")
c1=choose(c_white,make_color_rgb(255,0,0),make_color_rgb(0,0,255))
c2=choose(c_white,make_color_rgb(255,0,0),make_color_rgb(0,0,255))
c3=choose(c_white,make_color_rgb(255,0,0),make_color_rgb(0,0,255))
c4=choose(c_white,make_color_rgb(255,0,0),make_color_rgb(0,0,255))
c5=choose(c_white,make_color_rgb(255,0,0),make_color_rgb(0,0,255))
c6=choose(c_white,make_color_rgb(255,0,0),make_color_rgb(0,0,255))
c7=choose(c_white,make_color_rgb(255,0,0),make_color_rgb(0,0,255))
c8=choose(c_white,make_color_rgb(255,0,0),make_color_rgb(0,0,255))
}
draw_set_font(fntDTM)
draw_text_color(x+xxx,y-yyy,string(t1)+string(t2)+string(t3)+string(t4)+string(t5),c1,c2,c3,c4,alpha)
draw_text_color(x+xxx1,y-yyy1,string(t6)+string(t7)+string(t8)+string(t9)+string(t10),c5,c6,c7,c8,alpha)