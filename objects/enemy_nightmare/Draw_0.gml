if (xt = 0) {
	b += 1
}
if (b <= 20 && xt = 0) {
	//b+=1
}
if (b = 25 && xt = 0) {
	xt = 1
	b = 0
}
if (xt = 1) {
	c += 1
	if (c <= 20) {
		//image_alpha-=0.05
		//image_yscale-=0.1
	}
}
if (xt = 1 || xt = 6) {
	a += 1
	draw_sprite_ext(spr_nightmare_legs, 0, x, y, 2, 2, 0, c_white, alpha)
	draw_sprite_ext(spr_nightmare_head, 0, x, y - 98 - sin(a / 30) * 2, 2, 2, 0, c_white, alpha)
	draw_sprite_ext(spr_nightmare_body, 1, x, y - 40 - sin(a / 30), 2, 2, 0, c_white, alpha)
};
if (xt = 6) {
	b += 1
	if (b <= 20) {}
	if (b = 25) {
		xt = 7
		b = 114514
	}
}
if (xt = 7) {
	d += 1
	if (d <= 20 && d > 1) {}
}
gt++;
if (xt = 1 || xt = 6) {
	if (gt mod 10 = 0) {
		gx += 1
	}
	if (gt mod 30 = 0) {
		xxx = random_range(58, -58)
		yyy = random_range(13, 120)
		xxx1 = random_range(58, -58)
		yyy1 = random_range(13, 120)
	}
	draw_sprite_ext(spr_reaper_glitch, gx, x + xxx, y - yyy, 2, 2, 0, c_aqua, alpha)
	draw_sprite_ext(spr_reaper_glitch, gx - 4, x + xxx1, y - yyy1, 2, 2, 0, c_aqua, alpha)
}

if (heti) {
	x -= 3;

}