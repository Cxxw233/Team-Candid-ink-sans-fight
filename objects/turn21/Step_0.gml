if (xt) {
	time ++;
	if (time == 1) {
		// 想在入场加个音效，保留想法，缺少snd
		with (enemy) {
			touxt = 39;
			easing_execute(id, "alpha", 1, 0, alpha, -1, 15);
		}
		with (instance_create_depth(200, 256 - 6, obj_bk.depth - 1, enemy_dream)) {
			easing_execute(id, "alpha", 1, 0, 0, 1, 15);
		}
		with (instance_create_depth(440, 256 - 6, obj_bk.depth - 1, enemy_nightmare)) {
			easing_execute(id, "alpha", 1, 0, 0, 1, 15);
		}
	}
	if (time == 30) {
		for (var n = 0, d = 0, i = -10; i < battle_board.left + battle_board.right + 12; i += 11) {
			bone[0, n] = CreateBoneIy(global.ix + i, 10);
			with (bone[0, n]) {
				color = -1; blend = make_color_rgb(0, 32, 32);
				y -= 30;
				easing_execute(id, "length", easing_class.back, easing_class.out, length, + 80, 15, d);
			}
			d ++; n ++;
		}
		for (var n = 0, d = 0, i = -10; i < battle_board.left + battle_board.right + 12; i += 11) {
			bone[1, n] = CreateBoneIh(global.iw - i, 10);
			with (bone[1, n]) {
				color = -1; blend = make_color_rgb(0, 32, 32);
				y += 30;
				easing_execute(id, "length", easing_class.back, easing_class.out, length, + 80, 15, d);
			}
			d ++; n ++;
		}
	}
	if (time == 45) {
		(instance_create_depth(320, global.iy - 30, 0, dream_stick_move)).image_alpha = 0;
		easing_execute(id, "radius", 1, 0, radius, - 450, 30);
	}
	if (time > 45 && time < 270) {
		with (dream_stick_move) {
			angle_direction += 6;
			x = 320 + other.radius * dcos(angle_direction);
			y = 320 + other.radius * dsin(angle_direction);
			image_angle = point_direction(x, y, 320, 320);
		}
	}
	if (time > 45 && time mod 15 == 0 && time <= 240) {
		with (instance_create_depth(global.ix - 30, global.iy - 10, obj_bk.depth, empty)) {
			destroy = true;
			//other.bone[3, other.bone[2]] = self.id;
			sprite_index = spr_fresh_nm2;
			hurt = true;
			hspeed = 5;
			image_blend = make_color_rgb(40, 40, 40);
		}
		with (instance_create_depth(global.iw + 30, global.ih + 10, obj_bk.depth, empty)) {
			destroy = true;
			//other.bone[4, other.bone[2]] = self.id;
			sprite_index = spr_fresh_nm2; image_yscale = -1;
			hurt = true;
			hspeed = -5;
			image_blend = make_color_rgb(40, 40, 40);
		}
	}
	if (time == 240) {
		with (dream_stick_move) {
			// y = 100 + random_range(-10, 10);
			// easing_execute(id, "x", 1, 2, - 30, + 700, 45, 30);
			alarm[1] = 60;
		}
		easing_execute(id, "radius", 1, 0, radius, + 450, 30);
		with (empty) {
			if (hurt) {
				if (y < 320) {
					alarm[0] = 120;
					easing_execute(id, "y", 1, 1, y, + 60, 15);
					easing_execute(id, "y", 1, 1, y + 60, - 300, 30, 15);	
				} else {
					alarm[0] = 120;
					easing_execute(id, "y", 1, 1, y, - 60, 15);
					easing_execute(id, "y", 1, 1, y - 60, + 300, 30, 15);	
				}
			}
		}
		var d = 0;
		audio_play_sound(snd_ding, 0, 0);
		for (var i = 0; i < 2; i ++) {
			for (var k = 0; k < array_length(bone[i]); k ++) {
				with (bone[i, k]) {
					color = bones.orange;
					easing_execute(id, "length", easing_class.bounce, easing_class.out, length, + 72, 20);
				}
				d ++;
			}
		}
		with (instance_create_depth(320, 320, obj_bk.depth, obj_fresh_nm)) {
			image_xscale = 0.8;	
			image_blend = other.col;
		}
		with (instance_create_depth(320, 320, obj_bk.depth, obj_fresh_nm)) {
			image_angle = 90;
			image_xscale = 0.8;	
			image_blend = other.col;
		}
		repeat(25) {
			with (instance_create_depth(320 + irandom_range(-10, 10), 162, 0, obj_star_dream)) {
				sb = true;
				gravity_direction = point_direction(x, y, obj_soul.x, obj_soul.y);
				gravity = 0.5;
			}
		}
	}
	if (time == 280) {
		repeat(12) {
			instance_create_depth(random_range(100, 540), random_range(80, 120), - 10, obj_dart_nightmare);
		}
		with (enemy_nightmare) {
			heti = true; 
			easing_execute(id, "alpha", 0, 0, 1, - 1, 15);
		}
		with (enemy_dream) {
			heti = true;
			easing_execute(id, "y", 0, 0, y, - 3, 1, 15);
			easing_execute(id, "alpha", 0, 0, 1, - 1, 15);
			easing_execute(id, "delta_alpha", 0, 0, 0, + 1, 15);
		}
	}
	if (time >= 350 && time mod 10 == 0 && time < 500) {
		repeat(3) {
			var dx = choose(choose(0, 640)), dy = random_range(global.iy + 10, global.ih - 10);
			with (instance_create_depth(dx, dy, - 10, obj_star_dream)) {
				sb = true;
				if (dx < 320) {
					hspeed = 4;	
				} else {
					hspeed = -4;	
				}
			}
				
		}
	}
	if (time >= 320 && time mod 60 == 0 && time < 500) {
		switch (choose(0, 1)) {
			case 0:
				with (instance_create_depth(random_range(global.ix, global.iw), global.ih - (global.ih - global.iy) / 2, obj_bk.depth, obj_fresh_nm1)) {
					image_yscale = 2;
					image_blend = other.col;
					image_angle = choose(dir_val.down, dir_val.left, dir_val.right, dir_val.up);
					duration = 30;
				}
				with (instance_create_depth(random_range(global.ix, global.iw), global.ih - (global.ih - global.iy) / 2, obj_bk.depth, obj_fresh_nm1)) {
					image_yscale = 2;
					image_blend = other.col;
					image_angle = choose(dir_val.down, dir_val.left, dir_val.right, dir_val.up);
					duration = 30;
				}
		break;
			case 1:
				with (instance_create_depth((global.ix + global.iw) / 2, random_range(global.iy, global.ih), obj_bk.depth, obj_fresh_nm1)) {
					image_yscale = 2;
					image_blend = other.col;
					image_angle = choose(dir_val.down, dir_val.left, dir_val.right, dir_val.up);
					duration = 30;
				}
				with (instance_create_depth((global.ix + global.iw) / 2, random_range(global.iy, global.ih), obj_bk.depth, obj_fresh_nm1)) {
					image_yscale = 2;
					image_blend = other.col;
					image_angle = choose(dir_val.down, dir_val.left, dir_val.right, dir_val.up);
					duration = 30;
				}
		break;
		}	
	}
	if (time == 510) {
		with (fader) {
			easing_execute(id, "alpha", 0, 0, 0, + 1, 15);
			easing_execute(id, "alpha", 0, 0, 1, - 1, 15, 15);
		}
	}
	if (time == 525) {
		instance_destroy(enemy_dream);
		with (enemy) {
			alpha = 1;
			touxt = 22;
		}
		instance_destroy(dream_stick_move);
		instance_destroy(obj_fresh_nm);
		instance_destroy(obj_fresh_nm1);
		instance_destroy(runBone);
	}
	if (time == 535) {
		tred("* E4B88 0E588 87E6A FABE69/  7A0E6 848FE 4B989.", turn22);
	}
}