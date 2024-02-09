if (xt = 0) {
	b += 1
}
if (b <= 20 && xt = 0) {
	image_alpha += 0.05
	image_xscale += 0.1
	image_yscale += 0.1
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
		image_xscale -= 0.1
		//image_yscale-=0.1
	}
}
if (xt = 1 || xt = 6) {
		_body_image += _body_speed
	repeat(2) {
		a++
		if (_body_sprite = spr_espe_shen) {
			_body_speed = 0.17
			if (_body_image >= 4)
				_body_image = 0
		}
		if (_body_sprite != spr_espe_shen) {
			_body_speed = 0.45
			if (_body_sprite == spr_espe_shen_2) {
				if (_body_image > 4 && _body_image < 5 && !audio_is_playing(snd_snap)) {
					audio_play_sound(snd_snap, 100, 0)
				}
			}
			if (_body_image >= 7) {
				_body_speed = 0
				_body_sprite = spr_espe_shen
			}
		}
		if ((a % 2) == 0) {
			_body_x = (sin((a * 0.1)) * 1.4)
			_body_y = (sin((a * 0.2)) * 0.6)
			_head_x = (sin((a * 0.1)) * 0.4)
			_head_y = (sin((a * 0.2)) * 0.3)
		}
		draw_sprite_ext(spr_espe_tui, 0, x, y, 2, 2, 0, c_white, alpha)
		draw_sprite_ext(_body_sprite, _body_image, (((x + (_body_init_x * 2)) + (_body_x * 2))), ((y + (_body_init_y * 2)) + (_body_y * 2)), 2, 2, 0, c_white, alpha)
		draw_sprite_ext(spr_espe_tou, _head_image, (((((x + (_body_init_x * 2)) + (_body_x * 2)) + (_head_init_x * 2)) + (_head_x * 2))), ((((y + (_body_init_y * 2)) + (_body_y * 2)) + (_head_init_y * 2)) + (_head_y * 2)), 2, 2, 0, c_white, alpha);
	}
}

if(run_timer mod 10 = 0){
	gx+=1;
}
if(run_timer mod 30 = 0){
	xxx1 = random_range(254, 370);
	yyy1 = random_range(70, 230);
	xxx2 = random_range(254, 370);
	yyy2 = random_range(70, 230);
}
draw_sprite_ext(spr_sanss_glitch,gx,xxx1,yyy1,2,2,0,#4371db,alpha)
draw_sprite_ext(spr_sanss_glitch,gx-4,xxx2,yyy2,2,2,0,#4371db,alpha)
if (xt = 6) {
	b += 1
	if (b <= 20) {
		//image_alpha+=0.05
		image_xscale += 0.1
		//image_yscale+=0.1
	}
	if (b = 25) {
		xt = 7
		b = 114514
	}
}
if (xt = 7) {
	d += 1
	if (d <= 20 && d > 1) {
		image_alpha -= 0.05
		image_xscale -= 0.1
		image_yscale -= 0.1
	}
}

run_timer ++;

if (run_timer == 1) {
	easing_execute(id, "rect_x1", easing_class.sine, easing_class.in, 320, -80, 25, 25);
	easing_execute(id, "rect_x2", easing_class.sine, easing_class.in, 320, +80, 25, 25);
	easing_execute(id, "rect_y1", easing_class.sine, easing_class.in, 160, -90, 25);
	easing_execute(id, "rect_y2", easing_class.sine, easing_class.in, 160, +90, 25);
}
if (run_timer > 1) {
	draw_rectangle_color(rect_x1 , rect_y1 + rect_xy, rect_x2, rect_y2 + rect_xy, #4371db, #4371db, #4371db, #4371db, false);
}

if (run_timer == 55) {
	easing_execute(id, "rect_xy", easing_class.quart, easing_class.in, rect_xy, -400, 15);
	audio_play_sound(snd_snap, 0, 0);
	alpha = 1;
}