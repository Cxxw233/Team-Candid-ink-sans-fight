if (xt > 1) {
	a += 1
	yy = sin(a / 20)
	draw_sprite_ext(sprite_index, 0, x, y, xs, 2, 0, c_white, 1)
	draw_sprite_ext(sprite_index, 1, x, y + yy, xs, 2, 0, c_white, 1)
	draw_sprite_ext(sprite_index, 2, x, y + yy * 1.5, xs, 2, 0, c_white, 1)
	gt++
	if (gt mod 10 = 0) {
		gx += 1
	}
	if (gt mod 30 = 0) {
		xxx = random_range(58, -58)
		yyy = random_range(40, 120)
		xxx1 = random_range(58, -58)
		yyy1 = random_range(40, 120)
	}
	draw_sprite_ext(spr_sanss_glitch, gx, x + xxx, y - yyy, xs, 2, 0, make_color_rgb(185, 59, 60), 1)
	draw_sprite_ext(spr_sanss_glitch, gx - 4, x + xxx1, y - yyy1, xs, 2, 0, make_color_rgb(185, 59, 60), 1)
}
if (xt = 0) {
	easing_execute(id, "alpha", 1, 12, 0, 1, 20)
	easing_execute(id, "yy1", 1, 12, y - 200, 140, 20)
	xt = 1
	alarm[0] = 22
}
if (xt = 1) {
	draw_sprite_ext(spr_sc_eff, 0, x, yy1, 1.5, 1.5, 0, c_white, alpha)
}
if (xt = 2) {
	index += 0.3
	if (index = 0.3) {
		with(enemy) {
			x -= 460
			audio_play_sound(snd_shoot,0,0);
		}
	}
	draw_sprite_ext(spr_sc_bomb, index, x, y - 60, power(2.3, 3), power(2.3, 3), 0, c_white, 1 - index / 3.1)
	if (index = 3) {
		xt = 3
	}
}
if (xt = 4) {
	easing_execute(id, "xs", 1, 12, xs, -xs, 30)
	easing_execute(id, "x", 1, 12, x, choose(-100, 100), 30)
	easing_execute(enemy, "x", 2, 12, enemy.x, 460, 17)
	xt = 5
}
if (xt = 5) {
	if (xs = 0) {
		instance_destroy()
	}
}

if (out[0]) {
	out[1] ++;
	if (out[1] == 1) {
		index = 0;
		easing_execute(id, "alpha", 1, 12, 0, 1, 20);
		easing_execute(id, "yy1", 1, 12, y - 200, 140, 20);
	}
	if (out[1] >= 2 && out[1] <= 22) {
		draw_sprite_ext(spr_sc_eff, 0, x, yy1, 1.5, 1.5, 0, c_white, alpha);
	}
	if (out[1] >= 23) {
		index += 0.3;
		if (index = 0.3) {
			with (enemy) {
				x = 320;
				audio_play_sound(snd_shoot,0,0);
			}
			xt = -1;
		}
		draw_sprite_ext(spr_sc_bomb, index, x, y - 60, power(2.3, 3), power(2.3, 3), 0, c_white, 1 - index / 3.1);
		if (index >= 2) {
			instance_destroy();
		}
	}
}