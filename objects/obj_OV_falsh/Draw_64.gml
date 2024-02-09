if(image_alpha>0)
{
image_alpha-=0.05
}
else
{
instance_destroy()
}
draw_set_color(c_black)
draw_sprite_pos(spr_die,0,__view_get( e__vw.xview, 0 ),__view_get( e__vw.yview, 0 ),__view_get( e__vw.xview, 0 )+640,__view_get( e__vw.yview, 0 ),__view_get( e__vw.xview, 0 )+640,__view_get( e__vw.yview, 0 )+480,__view_get( e__vw.xview, 0 ),__view_get( e__vw.yview, 0 )+480,image_alpha)