/// @description Draw self
//draw_self();
if (Colour == 0)
	image_blend = c_white;
	//image_blend = make_color_rgb(152, 120, 255);
if (Colour == 1)
	image_blend = c_aqua
if (Colour == 2)
	image_blend = c_orange
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, 2, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, 1, (x + lengthdir_x(31, (image_angle - 90))), (y + lengthdir_y(31, (image_angle - 90))), image_xscale, (image_yscale*9999*image_yscale), image_angle, image_blend, image_alpha);









