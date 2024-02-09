a+=0.5
if (old = 0)
{
	_body_image += _body_speed
	if (_body_sprite == spr_dt_shen1) {
		if (_body_image < 4) {
			_body_speed = 0.9
		}
		else if (_body_image >= 4) {
			_body_speed = 0
			_body_image = 0
			_body_sprite = spr_dt_shen2
		}
	}
	if (_body_sprite == spr_dt_shen2) {
		if (_body_image < 4) {
			_body_speed = 0.9
		}
		else if (_body_image >= 4) {
			_body_speed = 0
			_body_image = 0
			_body_sprite = spr_dt_shen
		}
	}
	if (_body_sprite == spr_dt_shen3) {
		if (_body_image < 5 && xtt = 0) {
			_body_speed = 0.9
		}
		else if (_body_image >= 5 && xtt = 0) {
			_body_speed = 0
			_body_image = 5
		}
		else if (_body_image >= 5 && xtt = 1) {
			_body_speed = 0.9
			_body_image = 0
			xtt = 0
			_body_sprite = spr_dt_shen4
		}
	}
	if (_body_sprite == spr_dt_shen4) {
		if (_body_image < 5) {
			_body_speed = 0.9
		}
		else if (_body_image >= 5) {
			_body_speed = 0
			_body_image = 0
			_body_sprite = spr_dt_shen
		}
	}
	xx=sin(a / 12) * 6
	yy=1 + sin(a / 6) * 6
    draw_sprite_pos(spr_dt_tui, papyindex, x+xx-(sprite_get_xoffset(spr_dt_tui)),y+yy-(sprite_get_yoffset(spr_dt_tui)),x+xx+(sprite_get_width(spr_dt_tui)-sprite_get_xoffset(spr_dt_tui)),y+yy-(sprite_get_yoffset(spr_dt_tui)),x+(sprite_get_width(spr_dt_tui)-sprite_get_xoffset(spr_dt_tui)),y+(sprite_get_yoffset(spr_dt_tui)-sprite_get_yoffset(spr_dt_tui)),x-sprite_get_xoffset(spr_dt_tui),y+(sprite_get_yoffset(spr_dt_tui)-sprite_get_yoffset(spr_dt_tui)),alpha)
    draw_sprite_ext(_body_sprite, papyindex+_body_image, x - 7 + sin(a / 12) * 6, y - 80 + sin(a / 6) * 4, 1, 1, 0 - (sin(a / 12) * 2.5 ) + (tan(a / 0.001) * 0), c_white, alpha)
	draw_sprite_ext(spr_dt_tou, papyindex,  x - 26 + sin(a / 12) * 10, y - 160 + sin(a / 6) * 4, 1, 1, 0 - (sin(a / 12) * 2.5 ) + (tan(a / 0.001) * 0), c_white, alpha)
	draw_sprite_ext(spr_dt_yan, papyindex, x - 36 + sin(a / 12) * 10, y - 148 + sin(a / 6) * 4, 1, 1, 0 + (sin(a / 12) * 4 ), c_white, alpha)
}
else if (old = 1)
     draw_sprite_ext(spr_dt_old, 0, x, y, 1, 1, 0, c_white, alpha)
y = global.iy - 6

if (old = 0){
gt++;
if (gt mod 10 = 0) {
	gx += 1
}
if (gt mod 30 = 0) {
	xxx = random_range(65, -65)
	yyy = random_range(40, 210)
	xxx1 = random_range(65, -65)
	yyy1 = random_range(40, 210)
}
draw_sprite_ext(spr_sanss_glitch, gx, x + xxx, y - yyy, 2, 2, 0, make_color_rgb(255, 0, 0), alpha)
draw_sprite_ext(spr_sanss_glitch, gx - 4, x + xxx1, y - yyy1, 2, 2, 0, make_color_rgb(255, 104, 32), alpha)
}
else if (old = 1){
gt++;
if (gt mod 10 = 0) {
	gx += 1
}
if (gt mod 30 = 0) {
	xxx = random_range(65, -65)
	yyy = random_range(40, 210)
	xxx1 = random_range(65, -65)
	yyy1 = random_range(40, 210)
}
draw_sprite_ext(spr_sanss_glitch, gx, x + xxx, y - yyy, 2, 2, 0, c_white, alpha)
draw_sprite_ext(spr_sanss_glitch, gx - 4, x + xxx1, y - yyy1, 2, 2, 0, c_white, alpha)
}