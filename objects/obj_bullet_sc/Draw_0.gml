if (!line) {
	if (xt == 0) {
		x += (((xstart - x) / (2.2 + t / 8)))
		y += (((ystart - y) / (2.2 + t / 8)))
		a += 0.2
		draw_sprite_ext(spr_battle_bullet_sc, -1, x, y, 0.8, 0.8, 0, c_white, a)
	}
	if (xt == 1) {
		sprite_index = spr_battle_sbullet; //draw_sprite_ext(spr_battle_sbullet,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		draw_self();
	}
}

/*if (line) {
	time[0] ++;
	if (time[0] <= time[1]) {
		draw_set_alpha(t);
		draw_set_color(c_red);
		draw_line_width(value[0, 0], value[0, 1], value[1, 0], value[1, 1], 3);
	} else {
		sprite_index = spr_battle_sbullet; //draw_sprite_ext(spr_battle_sbullet,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		draw_self();
	}
}*/