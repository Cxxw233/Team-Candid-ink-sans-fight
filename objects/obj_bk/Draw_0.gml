if (global.tre == 0) {
	if (instance_exists(obj_soul_C)) {
		if (obj_soul_C.x > global.iw - 8)
			obj_soul_C.x = global.iw - 8
		if (obj_soul_C.x < global.ix + 8)
			obj_soul_C.x = global.ix + 8
		if (obj_soul_C.y > global.ih - 8)
			obj_soul_C.y = global.ih - 8
		if (obj_soul_C.y < global.iy + 8)
			obj_soul_C.y = global.iy + 8
	}
	if (instance_exists(obj_soul)) {
		if (obj_soul.x > global.iw - 8)
			obj_soul.x = global.iw - 8
		if (obj_soul.x < global.ix + 8)
			obj_soul.x = global.ix + 8
		if (obj_soul.y > global.ih - 8)
			obj_soul.y = global.ih - 8
		if (obj_soul.y < global.iy + 8)
			obj_soul.y = global.iy + 8
	}
}
if (xt == 1) {
	draw_set_alpha(1);
	draw_set_colour(c_black);
	draw_rectangle(global.ix, global.iy, global.iw, global.ih, 0);
}
if (xt == 2) {
	draw_set_alpha(1);
	draw_set_colour(c_black);
	draw_rectangle(0, 0, 640, global.iy - 1, 0);
	draw_rectangle(0, 0, global.ix - 1, 480, 0);
	draw_rectangle(global.iw + 1, 0, 640, 480, 0);
	draw_rectangle(__view_get(e__vw.xview, 0), global.ih + 1, 640, 480, 0);
}
if (xt == 3) {
	draw_set_alpha(1);
	draw_set_colour(c_black);
	draw_rectangle(global.ix, global.iy, global.iw, global.ih, 0);
	draw_rectangle(0, 0, 640, global.iy, 0);
	draw_rectangle(0, 0, global.ix - wh, 480, 0);
	draw_rectangle(640, 0, global.iw + wh, 480, 0);
	draw_rectangle(0, 480, 640, global.ih + wh, 0);
}

if (xt == 4) {
	draw_sprite_ext(spr_pixel, 0, 0, 0, room_width, room_height, 0, c_black, 1);
	draw_surface_part_ext(surface_mask, global.ix, global.iy, global.iw - global.ix, global.ih - global.iy + wh, global.ix, global.iy, 1, 1, c_white, 1);
	/* 上方 */ draw_surface_part_ext(outside_mask, 0, 0, room_width, global.iy, 0, 0, 1, 1, c_white, 1);
	/* 左侧 */ draw_surface_part_ext(outside_mask, 0, global.iy, global.ix, room_height - global.iy, 0, global.iy, 1, 1, c_white, 1);
	/* 右侧 */ draw_surface_part_ext(outside_mask, global.iw, global.iy, room_width - global.iw, room_height - global.iy, global.iw, global.iy, 1, 1, c_white, 1);
	/* 下方 */ draw_surface_part_ext(outside_mask, global.ix, global.ih, global.iw - global.ix, room_height - global.ih, global.ix, global.ih, 1, 1, c_white, 1);
}
draw_set_alpha(alpha);
draw_set_color(colour);
draw_rectangle(global.ix - wh, global.iy - wh, global.iw + wh, global.iy - 1, 0);
draw_rectangle(global.ix - wh, global.iy, global.ix - 1, global.ih, 0);
draw_rectangle(global.iw + 1, global.iy - wh, global.iw + wh, global.ih, 0);
draw_rectangle(global.ix - wh, global.ih + 1, global.iw + wh, global.ih + wh, 0);
