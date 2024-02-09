if (xt == 1) {
	time ++;
	if (time == 1) {
		enemy.touxt = ink_face.scientist;
		easing_execute(enemy, "x", easing_class.sine, easing_class.in, enemy.x, -120, 25);
		obj_soul.xt = 3;
		with (obj_soul) {
			easing_execute(id, "image_angle", easing_class.quad, easing_class.out, 0, +180, 25);
		}
	}
	if (time == 20) {
		instance_create_depth(320, global.iy - 10, depthBattle.High, enemy_science);
	}
	if (time > 60 && time % 60 == 0 && time < 200) {
		var dir = choose("down", "up", "left", "right");
		CrBoneHeap(dir, 15, 40, 25);
	}
	if (time % 30 == 0 && time <= 400) {
		var xx = random_range(global.ix, global.iw);
		(instance_create_depth(xx, -100, 0, robot)).stop = false;
	}
	if (time % 100 == 0 && time < 320) {
		switch (choose(0, 1)) {
			case 0:
				var gb = scgb(640, 300, 500, 320, 2, 1, -90, -90, 31, -9, 20, 0, choose(c_orange, global.blue));
				easing_execute(gb, "image_xscale", easing_class.sine, easing_class.in, 2, +2, 5);
				easing_execute(gb, "image_yscale", easing_class.sine, easing_class.in, 1, +1, 5);
				break;
			default:
				var gb = scgb(0, 300, 140, 320, 2, 1, -90, 90, 31, -9, 20, 0, choose(c_orange, global.blue));
				easing_execute(gb, "image_xscale", easing_class.sine, easing_class.in, 2, +2, 5);
				easing_execute(gb, "image_yscale", easing_class.sine, easing_class.in, 1, +1, 5);
				break;
		}
	}
	if (time == 320) {
		cr_board(ui_board.ix + 140, ui_board.iy, ui_board.iw - 140, ui_board.ih, 13);
		easing_execute(enemy, "y", 1, 0, enemy.y, -400, 25);
		easing_execute(enemy_science, "x", 1, 1, enemy_science.x, -100, 25);
		instance_create_depth(420, global.iy - 10, enemy.depth, enemy_angel);
	}
	if (time == 355) {
		instance_create_depth(100, -100, -19, obj_angel_plan_1);
		instance_create_depth(540, -100, -19, obj_angel_plan_1);	
	}
	if (time > 360 && time < 450 && time mod 5 == 0) {
		with(instance_create_depth(global.iw - 5 * (time - 80), global.ih + 20, -999, obj_bone)) {
			image_angle = point_direction(x, y, obj_soul.x, obj_soul.y);
			image_alpha = 0;
			image_xscale = 2;
			easing_execute(id, "image_alpha", 0, 0, 0, 1, 12);
			direction = point_direction(x, y, obj_soul.x, obj_soul.y);
			easing_execute(id, "speed", 0, 0, speed, 30, 30, 30);
		}
	}
	if (time > 360 && time < 450 && time mod 5 == 0) {
		with(instance_create_depth(global.ix + 5 * (time - 80), global.iy - 200, -999, obj_bone)) {
			image_angle = point_direction(x, y, obj_soul.x, obj_soul.y);
			image_alpha = 0;
			image_xscale = 2;
			easing_execute(id, "image_alpha", 0, 0, 0, 1, 12);
			direction = point_direction(x, y, obj_soul.x, obj_soul.y);
			easing_execute(id, "speed", 0, 0, speed, 30, 30, 30);
		}
	}
	if (time > 480 && time < 540 && time mod 5 = 0) {
		with(instance_create_depth(global.ix + 5 * time, global.ih + 20, -999, obj_bone)) {
			image_angle = point_direction(x, y, obj_soul.x, obj_soul.y);
			image_xscale = 2;
			direction = point_direction(x, y, obj_soul.x, obj_soul.y);
			easing_execute(id, "speed", 0, 0, speed, 30, 30);
		}
	}
	if (time > 480 && time < 540 && time mod 5 = 0) {
		with(instance_create_depth(global.iw - 5 * time, global.iy - 200, -999, obj_bone)) {
			image_angle = point_direction(x, y, obj_soul.x, obj_soul.y);
			image_xscale = 2;
			direction = point_direction(x, y, obj_soul.x, obj_soul.y);
			easing_execute(id, "speed", 0, 0, speed, 30, 30);
		}
	}
	if (time == 450) {
		var col = choose(bones.blue, bones.orange);
		for (var n = 0, i = 0 ; i < battle_board.down + battle_board.up + 10; i += 11)	{
			bone[0, n] = CreateBone(0, global.iy - 6 + i, 20,,,col,,,false, 0);
			n ++;
		}
		var col = (col == bones.blue ? bones.orange : bones.blue);
		for (var n = 0, i = 0 ; i < battle_board.down + battle_board.up + 10; i += 11)	{
			bone[1, n] = CreateBone(640, global.ih + 6 - i, 20,,,col,,,false, 0);
			n ++;
		}
		var p = 0;
		for (var i = 0; i < array_length(bone); ++ i) {
			for (var ii = 0; ii < (array_length(bone[i]) / 2); ++ ii) {
				with (bone[i, ii]) {
					alarm[0] = 200;
					easing_execute(id, "length", easing_class.expo, easing_class.out, length, + 450, 25, p);
					easing_execute(id, "length", easing_class.back, easing_class.out, length + 450, + 442, 25, 50 + p);
					easing_execute(id, "angle", 0, 0, 0, bones.vertical, 60, 120);
				}
				p ++;
			}
		}
	}
	if (time == 500) {
		instance_create_depth(100, -100, -19, obj_angel_plan);
		instance_create_depth(540, -100, -19, obj_angel_plan);
	}
	if (time == 600) {
		for (var n = 0, i = 0; i < 24; i ++) {
			with (instance_create_depth(global.ix - 30, global.iy - 40, 100, runBone)) {
				out = true;
				length = 40;
				angle = n;
				direction = n;
				speed = 10;
				n += 360 / 24;
			}
		}
		for (var n = 0, i = 0; i < 24; i ++) {
			with (instance_create_depth(global.iw + 30, global.iy - 40, 100, runBone)) {
				out = true;
				length = 40;
				angle = n;
				direction = n;
				speed = 10;
				n += 360 / 24;
			}
		}
		for (var n = 0, i = 0; i < 24; i ++) {
			with (instance_create_depth(global.iw + 30, global.ih + 40, 100, runBone)) {
				out = true;
				length = 40;
				angle = n;
				direction = n;
				speed = 10;
				n += 360 / 24;
			}
		}
		for (var n = 0, i = 0; i < 24; i ++) {
			with (instance_create_depth(global.ix - 30, global.ih + 40, 100, runBone)) {
				out = true;
				length = 40;
				angle = n;
				direction = n;
				speed = 10;
				n += 360 / 24;
			}
		}
	}
	if (time == 650) {
		enemy_science.fin = true;
		enemy.x = 320;
		easing_execute(enemy, "y", 1, 2, -200, ( (global.iy - 6) - -200), 30);
		with (enemy_angel) {
			alarm[0] = 60;
			easing_execute(id, "x", 1, 1, x, +50, 45);
			easing_execute(id, "y", 1, 1, y, -300, 30);
		}
	}
	if (time == 670) {
		instance_destroy(runBone);
		instance_destroy(obj_bone);
		instance_destroy(obj_angel_plan);
		instance_destroy(obj_angel_plan_1);
		instance_destroy(obj_angel_egg);
		DestroyRobot();
		tred(_lang_text[$ "menu_text"][$ "scientist"], turn14);
	}
}