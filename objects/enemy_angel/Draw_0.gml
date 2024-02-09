gpu_set_blendenable(false)
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(x - 200, y - 200, x + 200, global.iy - 6, false);
draw_set_alpha(1);
if (xt != 1) {
	draw_sprite_ext(spr_angel_eff, 0, x, y - 76, image_xscale, image_yscale, 0, c_white, 1);
} else {
	draw_sprite_ext(spr_angel_eff, 0, x, y - 76, 2.5, 2.5, 0, c_white, 1)
}
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

draw_sprite_pos(spr_angel_s_leg, 0, x + xx - (sprite_get_xoffset(spr_angel_s_leg) * 2), y + yy - (sprite_get_yoffset(spr_angel_s_leg) * 2), x + xx + (sprite_get_width(spr_angel_s_leg) * 2 - sprite_get_xoffset(spr_angel_s_leg) * 2), y + yy - (sprite_get_yoffset(spr_angel_s_leg) * 2), x + (sprite_get_width(spr_angel_s_leg) * 2 - sprite_get_xoffset(spr_angel_s_leg) * 2), y + (sprite_get_yoffset(spr_angel_s_leg) * 2 - sprite_get_yoffset(spr_angel_s_leg) * 2), x - sprite_get_xoffset(spr_angel_s_leg) * 2, y + (sprite_get_yoffset(spr_angel_s_leg) * 2 - sprite_get_yoffset(spr_sans_tui) * 2), 1)
draw_sprite_ext(spr_angel_s_body, 0, x + xx, y - 42 + yy, 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_sans_tou, 0, x + xx1, y + yy1 - 77, 2, 2, 0, c_white, 1)
gt++;
if (gt mod 10 = 0) {
	gx += 1
}
if (gt mod 30 = 0) {
	xxx = random_range(58, -58)
	yyy = random_range(40, 120)
	xxx1 = random_range(58, -58)
	yyy1 = random_range(40, 120)
}
draw_sprite_ext(spr_sanss_glitch, gx, x + xxx, y - yyy, 2, 2, 0, make_color_rgb(255, 255, 0), alpha)
draw_sprite_ext(spr_sanss_glitch, gx - 4, x + xxx1, y - yyy1, 2, 2, 0, make_color_rgb(255, 255, 0), alpha)



gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);


if (image_xscale > 0) {
	draw_sprite_ext(spr_angel_eff, 1, x, y - 76, image_xscale, image_yscale, 0, c_white, image_alpha)
}



if (xt = 0) {
	b += 1
}
if (b <= 25 && xt = 0) {
	image_xscale += 0.12
	image_yscale += 0.12
}
if (b = 15 && xt = 0) {
	xt = 1
	b = 0
}
if (xt = 1) {
	image_alpha -= (1 / 5)
}


a += 1
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


;
if (xt = 6) {
	b += 1
	if (b <= 25) {
		image_alpha += (1 / 25)
	}
	if (b = 30) {
		xt = 7
		b = 114514
	}
}
if (xt = 7) {
	d += 1
	if (d <= 25 && d > 1) {
		image_xscale -= 0.1
		image_yscale -= 0.1
	}
}