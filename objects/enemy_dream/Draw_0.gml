if (xt = 0) {
	b += 1
}
if (b <= 20 && xt = 0) {
	//b+=1if(xt=0)
	{
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
	

}

	if (delta_xt) {
		a += 1
		if (xttt = 0) {
			draw_sprite_ext(spr_dream_legs, 0, x + delta_xy, y, 2, 2, 0, c_white, alpha)
			draw_sprite_ext(spr_dream_head, 0, x + delta_xy, y - 106 - sin(a / 30) * 2, 2, 2, 0, c_white, alpha)
			draw_sprite_ext(spr_dream_body, _body_image, x + delta_xy, y - 40 - sin(a / 30), 2, 2, 0, c_white, alpha)
		};
		if (delta_alpha) {
			draw_sprite_ext(spr_shattered_legs, 0, 320, y, 2, 2, 0, c_white, delta_alpha)
			draw_sprite_ext(spr_shattered_head, 0, 320, y - 106 - sin(a / 30) * 2, 2, 2, 0, c_white, delta_alpha)
			draw_sprite_ext(spr_shattered_body, 1, 320, y - 40 - sin(a / 30), 2, 2, 0, c_white, delta_alpha)
			draw_sprite_ext(spr_shattered_body, 0, 320, y - 40 - sin(a / 30), 2, 2, 0, c_white, delta_alpha)
		};
	};
	gt++;
	if (delta_xt) {
		if (gt mod 10 = 0) {
			gx += 1
		}
		if (gt mod 30 = 0) {
			xxx = random_range(58, -58)
			yyy = random_range(13, 120)
			xxx1 = random_range(58, -58)
			yyy1 = random_range(13, 120)
		}
		if (xttt = 0) {
			draw_sprite_ext(spr_sanss_glitch, gx, x + xxx, y - yyy, 2, 2, 0, make_color_rgb(255, 255, 0), alpha)
			draw_sprite_ext(spr_sanss_glitch, gx - 4, x + xxx1, y - yyy1, 2, 2, 0, make_color_rgb(255, 255, 0), alpha)
		}
		if (xttt = 1) {
			draw_sprite_ext(spr_reaper_glitch, gx, x + xxx, y - yyy, 2, 2, 0, make_color_rgb(255, 255, 0), alpha)
			draw_sprite_ext(spr_reaper_glitch, gx - 4, x + xxx1, y - yyy1, 2, 2, 0, make_color_rgb(255, 255, 0), alpha)
		}
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

if (heti) {
	x += 3;
	
}