draw_self()
//draw_sprite_ext(spr_pap_bone,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if(image_xscale!=0)
{
draw_sprite_ext(spr_pap_bone,0,x+lengthdir_x(-5*image_xscale,image_angle),y+lengthdir_y(-5*image_xscale,image_angle),1,image_yscale,point_direction(x+lengthdir_x(-5*image_xscale,image_angle),y+lengthdir_y(-5*image_xscale,image_angle),x,y),image_blend,image_alpha)
draw_sprite_ext(spr_pap_bone,0,x+lengthdir_x(5*image_xscale,image_angle),y+lengthdir_y(image_xscale*5,image_angle),-1,image_yscale,point_direction(x+lengthdir_x(5*image_xscale,image_angle),y+lengthdir_y(5*image_xscale,image_angle),x,y)+180,image_blend,image_alpha)
}
