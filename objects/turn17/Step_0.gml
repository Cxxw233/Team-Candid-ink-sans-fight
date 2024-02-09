if (start) {
	time ++;
	if (time == 1) {
		enemy.touxt = 37;
		instance_create_depth(320, global.iy - 6, enemy.depth - 10, enemy_sudden);
	}
	if (time == 1) {
		crtarget(320, 320, 180, 15);
	}
	if (time == 20) {
		with (CreateBone(global.ix + 6, 480, 120,,,bones.orange)) {
			easing_execute(id, "hspeed", 0, 0, 0, +8, 1, 35);
			easing_execute(id, "y", 1, 0, y, -(480 - 320), 15);
		}
		with (CreateBone(global.iw - 6, 0, 120,,,bones.orange)) {
			easing_execute(id, "hspeed", 0, 0, 0, -8, 1, 35);
			easing_execute(id, "y", 1, 0, y, +320, 15);
		}
	}
	if (time >= 35 && time <= 65 && time mod 10 == 0) {
		crtarget(obj_soul.x, obj_soul.y, (obj_soul.x > 320 ? 0 : 180), 15);
	}
	if (time == 75) {
		CrBoardBk(160, 64, 160, 64, 15);
		for (var n = 0; n <= 1; n ++) {
			for (var i = 0; i < 24; i ++) {
				bone[n, i] = instance_create_depth(0, 0, 0, runBone);
				bone[n, i].alpha = 0;
				bone[n, i].direction = i * 36;
				bone[n, i].length = 60;
				bone[n, i].state = n;
				bone[n, i].alarm[0] = 200;
				bone[n, i].color = -1; 
				bone[n, i].blend = battle_color.sudden;
				easing_execute(bone[n, i], "alpha", 0, 0, 0, +1, 30, 40);
			}
		}
		easing_execute(id, "radius", 0, 0, radius, -530, 40);
	}
	if (time > 75 && time < 290) {
		for (var n = 0; n <= 1; n ++) {
			if (is_array(bone)) {
				for (var i = 0; i < array_length(bone[n]); i ++) {
					with (bone[n, i]) {
						direction += 6;
						if (state == 0) {
							x = 180 + other.radius * dcos(direction);
							y = 280 + other.radius * dsin(direction);
							angle = point_direction(x, y, 180, 280);
						} else {
							x = 460 + other.radius * dcos(direction);
							y = 360 + other.radius * dsin(direction);
							angle = point_direction(x, y, 460, 360);	
						}
					}
				}
			}
		}
	}
	if (time == 100) {
		crtarget(global.ix + 20, global.iy + 10, 180, 15);
		crtarget(global.ix + 20, global.ih - 10, 180, 15);
		crtarget(global.iw - 20, global.iy + 10, -180, 15);
		crtarget(global.iw - 20, global.ih - 10, -180, 15);
	}
	if (time >= 100 && time <= 200 && time mod 15 == 0) {
		crtarget(obj_soul.x, obj_soul.y, (obj_soul.x > 320 ? 0 : 180), 15);
	}
	if (time >= 100 && time mod 30 == 0 && time <= 200) {
		var cr, range = choose(0, 1);
		cr[0] = (range ? 0 : 640); cr[1] = (range ? global.ix - 10 : global.iw + 10); cr[2] = (range ? 90 : -90);
		scgb(cr[0], obj_soul.y, cr[1], obj_soul.y, 1, 2, -cr[2], cr[2], 10, -9, 10, 0, battle_color.sudden, spr_gb_sc)
	}
	if (time == 230) {
		easing_execute(id, "radius", 0, 0, radius, 500, 60);
	}
	if (time == 260) {
		CrBoardBk(64, 64, 64, 64, 15);
		crtarget_line(320, 280, 15, 90);
		crtarget_line(320, 340, 15, 90);
		for (var i = 1; i < 40; i ++) {
			with (CreateBoneIy(global.ix - (i * 35), 55, 15)) {
				auto_destroy = false; alarm[0] = 200;
				y -= 5;
				color = -1; blend = battle_color.sudden;
			}
			with (CreateBoneIh(global.iw + (i * 35), 55, -15)) {
				auto_destroy = false; alarm[0] = 200;
				y += 5;
				color = -1; blend = battle_color.sudden;
			}
		}
	}
	if (time >= 290 && time <= 380 && time mod 30 == 0) {
		repeat(8) {
			crtarget_line(random_range(global.ix + 10, global.iw - 10), 320, 20, random(360));
		}
	}
	if (time == 400) {
		CrBoneHeap(dir_val.down, 0, 200, 1000, bones.blue);
		repeat(12) {
			with (crtarget_line(random_range(global.ix + 10, global.iw - 10), 320, 20, random(360))) {
				out = true;	
			}
		}
	}
	if (time == 430) {
		enemy_sudden.out[0] = true;
	}
	if (time == 460) {
		cr_board_color(c_white, 15);
		instance_destroy(runBone);
		instance_destroy(sc_bullet_line);
		instance_destroy(obj_bullet_sc);
		tred(_lang_text[$ "menu_text"][$ "sudden"], turn18);	
	}
}
