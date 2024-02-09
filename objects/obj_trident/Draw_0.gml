if(a<time1)
{
	draw_sprite_ext(spr_pixel,0,x,global.ih+10,1,1000,0,make_color_rgb(255,105,105),1)
}
if(a>=time1)
{
	draw_self();
}