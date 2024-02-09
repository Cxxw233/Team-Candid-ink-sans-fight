if (c < 10) {
	c += 1
	global.ix += 21
	global.iw -= 21
};
if (xt = 0) {
	a += 1
	if (a = 1) {
		CrFlash(c_black, 10);
		enemy.visible = 0;
		audio_sound_pitch(bgmink_2, 0);
	};
	if (a = 10) {
		instance_create_depth(320, global.iy - 6, 0, enemy_error);
		audio_sound_pitch(bgmink_2, 0.4);
	};
	if (a == 60) {
		line = instance_create_depth(0, 0, 0, battle_error_line)
		line.x1 = 0
		line.x2 = 640
		line.y1 = 0
		line.y2 = 640
		line.alarm[2] = 10
		line = instance_create_depth(0, 0, 0, battle_error_line)
		line.x1 = 0
		line.x2 = 640
		line.y1 = 640
		line.y2 = 0
		line.alarm[2] = 10
	};
	if (a == 92) {
		room_speed = 20;
		var xx = 245
		repeat(25) {
			line = instance_create_depth(0, 0, obj_bk.depth + 1, battle_error_line)
			line.x1 = xx
			line.x2 = xx
			line.y1 = 480
			line.y2 = 0
			line.alarm[2] = 10
			xx += 20
		};
	};
	if (a = 120 || a = 150 || a = 180 || a = 210 || a = 240 || a = 270) {
		_a++
		room_speed = choose(60, 50, 40, 30, 20, 10)
		if (_a == 0 || _a == 5) {
			repeat(5) {
				line = instance_create_depth(0, 0, 0, battle_error_line)
				line.x1 = 0
				line.x2 = 640
				line.y1 = yy1
				line.y2 = yy1
				line.alarm[4] = 10
				line = instance_create_depth(0, 0, 0, battle_error_line)
				line.x1 = 0
				line.x2 = 640
				line.y1 = yy2
				line.y2 = yy2
				line.alarm[4] = 10
			}
			yy1 += 3
			yy2 -= 3
		}
		if (_a == 1 || _a == 3) {
			line = instance_create_depth(0, 0, 0, battle_error_line)
			line.x1 = xx1
			line.x2 = xx2
			line.y1 = yy1
			line.y2 = yy2
			line.alarm[2] = 10
			xx1 -= 6
			xx2 -= 6
			yy1 += 6
			yy2 += 6
		}
		if (_a == 2 || _a == 4) {
			repeat(5) {
				var rad = random_range(385, 255)
				line = instance_create_depth(0, 0, 0, battle_error_line)
				line.x1 = 0
				line.x2 = 640
				line.y1 = rad
				line.y2 = rad
				line.mode = 1
				line.alarm[2] = 5
				line.alarm[3] = 10
			}
		}
	}
	if (a % 40 == 0) {
		scgb(-100, global.iy, 50 + irandom_range(-30, 30), global.iy + irandom_range(-30, 30), irandom_range(1, 2.5), 2, 90, irandom_range(60, 120), irandom_range(1, 5), -10, irandom_range(5, 25), 0, c_white, spr_error_gb)
		scgb(740, global.ih, 590 + irandom_range(-30, 30), global.ih + irandom_range(-30, 30), irandom_range(1, 2.5), 2, -90, irandom_range(-60, -120), irandom_range(1, 5), -10, irandom_range(5, 25), 0, c_white, spr_error_gb)
		if (a > 270) {
			CrBoard(ui_board.ix + 100 + irandom_range(-20, 20), global.iy, ui_board.iw - 100 + irandom_range(-20, 20), global.ih, 20)
		};
		if (a % 80 = 0) {
			room_speed = irandom_range(40, 10)
		};
	}
	if (a <= 270 && irandom_range(0, 12) == 10) {
		instance_create_depth(irandom_range(global.ix, global.iw), irandom_range(global.iy, global.ih), 0, ButRedBlock)
	}
	if (a > 270 && irandom_range(0, 50) == 10) {
		i = 0;
		xtt = irandom_range(0, 5);
		switch (xtt) {
			case 0:
				repeat(5) {
					i++;
					instance_create_depth(global.ix + (i - 1) * 134, -120, 0, but_error_block);
				}
				break
			case 1:
				repeat(10) {
					i++;
					mk = instance_create_depth(global.ix + (i - 1) * 134 / 2, -120, 0, but_error_block);
					mk.image_xscale = 0.5;
				}
				break
			case 2:
				repeat(irandom_range(2, 10)) {
					i++;
					instance_create_depth(global.ix + (i - 1) * 134 * irandom_range(0.2, 1.5), -120, 0, but_error_block);
				}
				break
			case 3:
				repeat(6) {
					i++;
					instance_create_depth(37 + (i - 1) * 134 / 2, -120, 0, but_error_block);
				}
				break
			case 4:
				repeat(irandom(6) + 1) {
					i++;
					instance_create_depth(global.ix + (i - 1) * 134, -120, 0, but_error_block);
				}
				break
			case 5:
				repeat(a / 100 + irandom_range(0, 5) + (1 - a / 100)) {
					i++;
					mk = instance_create_depth(global.ix + (i - 1) * 134 / 2, -120, 0, but_error_block);
					mk.image_xscale = 0.5;
				}
				break
		}
	}
	if (a = 420 || a = 480 || a = 540 || a = 600) {
		repeat(irandom_range(5, 15)) {
			var bone = instance_create_depth(random_range(global.ix, global.iw), 520, -9, obj_bone)
			bone.gravity = irandom_range(0.1, 1)
			bone.speed = irandom_range(5, 20)
			bone.direction = 90 - irandom_range(-30, 30)
			bone.image_blend = choose(c_white);
			bone.image_xscale = irandom_range(1, 3)
			bone.image_angle = direction + irandom_range(-10, 10) + 90
		}
		CrBoard(ui_board.ix + 100 + irandom_range(-20, 20), global.iy, ui_board.iw - 100 + irandom_range(-20, 20), global.ih, 20)
		room_speed = irandom_range(20, 5)
	}
	if (a > 270 && a % 2 = 0 && a < 600) {
		var rad = random_range(global.iw, global.ix)
		line = instance_create_depth(0, 0, obj_bk.depth + 1, battle_error_line)
		line.x1 = rad
		line.x2 = rad
		line.y1 = 245
		line.y2 = 225
		line.alarm[0] = 60
		line.vspd = 6
		rad = random_range(global.iw, global.ix)
		line = instance_create_depth(0, 0, obj_bk.depth + 1, battle_error_line)
		line.x1 = rad
		line.x2 = rad
		line.y1 = 245
		line.y2 = 225
		line.alarm[0] = 60
		line.vspd = 6
	};
	if (a = 620) {
		ini_open("savedata.ini");
		ini_write_real("System", "phase", 3);
		ini_close();
		FATAL_ERROR("FATAL ERROR : 0x80004005");
	}
};