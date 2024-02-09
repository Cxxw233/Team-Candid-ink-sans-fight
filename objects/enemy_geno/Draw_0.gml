if (xxxx == 80) {
	cxxsb ++;	
}
if (cxxsb) {
	a += 1
	if (a mod 10 = 0) {
		touxt += 1
	}
	switch (a) {
		case 1:
			xx -= 1;
			yy1 += 1;
			break
		case 3:
			yy += 1;
			yy1 += 1;
			xx1 -= 1;
			break
		case 6:
			xx1 -= 1;
			xx -= 1;
			yy += 1;
			break
		case 8:
			xx1 -= 1;
			xx -= 1;
			break
		case 12:
			yy -= 2;
			yy1 -= 2;
			break
		case 16:
			xx += 1;
			xx1 += 1;
			break
		case 18:
			xx += 1;
			xx1 += 1;
			break
		case 20:
			yy += 2;
			yy1 += 2;
			break
		case 22:
			xx += 1;
			xx1 += 1;
			yy1 += 1;
			break
		case 24:
			xx += 1;
			xx1 += 1;
			yy1 -= 1;
			break
		case 26:
			yy -= 1;
			yy1 -= 1;
			break
		case 29:
			yy -= 1;
			yy1 -= 1;
			break
		case 31:
			yy1 -= 1;
			break
		case 33:
			yy1 += 1;
			xx1 -= 1;
			xx -= 1;
			a = 0;
			break
	}
	if (wdnmd) {
		draw_sprite_ext(spr_geno_scarf, 0, x + xx - 30, y - 92 + yy, 2, 2, sin(a * 0.1 * alam) * 4, c_white, alpha)
		draw_sprite_pos(spr_geno_tui, 0, x + xx - (sprite_get_xoffset(spr_geno_tui) * 2), y + yy - (sprite_get_yoffset(spr_geno_tui) * 2), x + xx + (sprite_get_width(spr_geno_tui) * 2 - sprite_get_xoffset(spr_geno_tui) * 2), y + yy - (sprite_get_yoffset(spr_geno_tui) * 2), x + (sprite_get_width(spr_geno_tui) * 2 - sprite_get_xoffset(spr_geno_tui) * 2), y + (sprite_get_yoffset(spr_geno_tui) * 2 - sprite_get_yoffset(spr_geno_tui) * 2), x - sprite_get_xoffset(spr_geno_tui) * 2, y + (sprite_get_yoffset(spr_geno_tui) * 2 - sprite_get_yoffset(spr_geno_tui) * 2), alpha)
		draw_sprite_ext(spr_geno_shen, 0, x + xx, y - 42 + yy, 2, 2, 0, c_white, alpha)
		draw_sprite_ext(spr_geno_tou, 0, x + xx1, y + yy1 - 82, 2, 2, 0, c_white, alpha)
		draw_sprite_ext(spr_sanss_glitch, touxt, x + xx1 - 20, y + yy1 - 116, 2, 2, 0, c_white, alpha)
	}
}
bb++;
if (bb mod 10 = 0) {
	gx += 1
}
if (bb mod 30 = 0) {
	xxx = random_range(58, -58)
	yyy = random_range(13, 100)


}

if (wdnmd) then draw_sprite_ext(spr_sanss_glitch, gx, x + xxx, y - yyy, 2, 2, 0, c_white, alpha);

draw_set_alpha(1)
draw_set_color(c_yellow)
draw_rectangle(x - xxxx, y - 80 - xxxx, x + xxxx, y - 80 + xxxx, 0)


if (cxxsb == 6) {
	cxxsb = 7;
	easing_execute(id, "xxxx", 1, 0, xxxx, +80, 12);
	easing_execute(id, "xxxx", 1, 0, xxxx + 80, -80, 12, 12);
	easing_execute(id, "wdnmd", 0, 0, 1, -1, 1, 12);
	alarm[0] = 30;
}