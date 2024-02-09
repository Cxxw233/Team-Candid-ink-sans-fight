///@desc DrawCollision
if (global.egg != 1) {
	draw_self();	
}

if(xt=2)
{
	draw_sprite(spr_soul_green_1,0,x,y)
}

if (global.egg == 1) {
	var col = make_color_hsv((time mod 255), 255, 255);
	draw_sprite_ext(spr_soul, 14, x, y, 1, 1, time * 5, col, 1);
}