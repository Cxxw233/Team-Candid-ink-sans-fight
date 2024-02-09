duration --;

if (duration) {
	draw_sprite_ext(spr_fresh_waring, 0, x, y, 1, 1, image_angle, color, 1);
} else {
	image_index += spd;
	draw_self();
}
