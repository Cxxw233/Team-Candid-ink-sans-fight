if(obj_bk.xt=4){
if (depth < obj_bk.depth) {
	draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	if(image_xscale!=0)
	{
	draw_sprite_ext(sprite_index,0,x+lengthdir_x(-5*image_xscale,image_angle),y+lengthdir_y(-5*image_xscale,image_angle),1,image_yscale,point_direction(x+lengthdir_x(-5*image_xscale,image_angle),y+lengthdir_y(-5*image_xscale,image_angle),x,y),image_blend,image_alpha)
	draw_sprite_ext(sprite_index,0,x+lengthdir_x(5*image_xscale,image_angle),y+lengthdir_y(image_xscale*5,image_angle),-1,image_yscale,point_direction(x+lengthdir_x(5*image_xscale,image_angle),y+lengthdir_y(5*image_xscale,image_angle),x,y)+180,image_blend,image_alpha)
	}
} else {
	if (surface_exists(surface_mask)) {
	surface_set_target(surface_mask);{
		draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		if(image_xscale!=0) {
			draw_sprite_ext(sprite_index,0,x+lengthdir_x(-5*image_xscale,image_angle),y+lengthdir_y(-5*image_xscale,image_angle),1,image_yscale,point_direction(x+lengthdir_x(-5*image_xscale,image_angle),y+lengthdir_y(-5*image_xscale,image_angle),x,y),image_blend,image_alpha)
			draw_sprite_ext(sprite_index,0,x+lengthdir_x(5*image_xscale,image_angle),y+lengthdir_y(image_xscale*5,image_angle),-1,image_yscale,point_direction(x+lengthdir_x(5*image_xscale,image_angle),y+lengthdir_y(5*image_xscale,image_angle),x,y)+180,image_blend,image_alpha)
		}
	};surface_reset_target();
	}
}
}
else{
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if(image_xscale!=0)
{
draw_sprite_ext(sprite_index,0,x+lengthdir_x(-5*image_xscale,image_angle),y+lengthdir_y(-5*image_xscale,image_angle),1,image_yscale,point_direction(x+lengthdir_x(-5*image_xscale,image_angle),y+lengthdir_y(-5*image_xscale,image_angle),x,y),image_blend,image_alpha)
draw_sprite_ext(sprite_index,0,x+lengthdir_x(5*image_xscale,image_angle),y+lengthdir_y(image_xscale*5,image_angle),-1,image_yscale,point_direction(x+lengthdir_x(5*image_xscale,image_angle),y+lengthdir_y(5*image_xscale,image_angle),x,y)+180,image_blend,image_alpha)
}
}

