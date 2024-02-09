if (a<5)
{
a+=0.5
y+=a/2
}
if (a>=5)
{
a+=1
}
if (a=22)
{
instance_destroy()
}
if (global.MISS=0)
{
draw_set_alpha(1)
draw_set_colour(c_white)
draw_sprite(spr_MISS,1,x,y)
/*draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(Fnt_hurt)
draw_set_colour(c_red)
draw_text(x,y,string(HURT))*/
}/**/
if (global.MISS=1)
{
draw_set_alpha(1)
//draw_set_halign(fa_center)
//draw_set_valign(fa_center)
//draw_set_font(Fnt_hurt)
draw_set_colour(c_white)
draw_sprite(spr_MISS,0,x,y)
}

/**/

/* */
/*  */
