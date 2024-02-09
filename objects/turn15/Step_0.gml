if (xt) {
	time++;
	if (time == 1) {
		enemy.touxt = ink_face.nothing;
		easing_execute(enemy, "alpha", 0, 0, 1, -1, 15);
		with(instance_create_depth(-100, 0, enemy.depth, enemy_loris)) {
			easing_execute(id, "x", easing_class.sine, easing_class.in, -100, +360, 30);
		};
		with(instance_create_depth(740, 0, enemy.depth, enemy_nothing)) {
			easing_execute(id, "x", easing_class.sine, easing_class.in, 760, -360, 30);
		};
	};
	if (time == 30) {
		CrBoardBk(120, 120, 120, 64, 15);
	}
	if (time == 60) {
		with(instance_create_depth(320 - 60, -50, -9, but_fire)) {
			xt = 1;
			speed = 9;
			direction = -90;
			image_xscale = 2;
			image_yscale = 2;
		}
		with(instance_create_depth(320 + 60, -50, -9, but_fire)) {
			xt = 1;
			speed = 9;
			direction = -90;
			image_xscale = 2;
			image_yscale = 2;
		}
		with(cr_bone(global.ix - 20, global.iy + (global.ih - global.iy) / 2, obj_bk.depth, 15, 90, global.blue, 0, 0, 1)) {
			hspeed = 20;
			state = 1;
			gravity = 1;
			gravity_direction = 180;
		}
		with(cr_bone(global.iw + 20, global.iy + (global.ih - global.iy) / 2, obj_bk.depth, 15, 90, global.blue, 0, 0, 1)) {
			hspeed = -20;
			state = 1;
			gravity = 1;
			gravity_direction = 0;
		}
	};
	if (time == 85) {
		with(obj_bone) {
			if (state == 1) {
				audio_play_sound(snd_ding, 0, 0);
				image_blend = c_orange;
			};
		};
		repeat(2) {
			var rx = random_range(120, 240);
			scgb(rx, 150, rx * 2, 150, 1, 2, point_direction(rx * 2, 150, obj_soul.x, obj_soul.y), point_direction(rx * 2, 150, obj_soul.x, obj_soul.y) + 90, 15, -6, 15, 0, c_white, sprNothingGb);
		};
		for (var pause = 0, num = 0, i = 0; i < battle_board.up + battle_board.down + 20; i += 11) {
			bone[0, num] = instance_create_depth(0, global.iy + i, obj_bk.depth + 1, runBone);
			with(bone[0, num]) {
				angle = 0;
				length = 120;
				easing_execute(id, "length", easing_class.back, easing_class.out, 120, +400, 25, 30 + pause, 2.4);
			};
			num++;
			pause += 1.2;
		};
		delete pause;
		delete i;
		delete num;
		for (var pause = 0, num = 0, i = 0; i < battle_board.up + battle_board.down + 20; i += 11) {
			bone[1, num] = instance_create_depth(640, global.ih - i, obj_bk.depth + 1, runBone);
			with (bone[1, num]) {
				angle = 0;
				length = 120;
				easing_execute(id, "length", easing_class.back, easing_class.out, 120, +400, 25, 30 + pause, 2.4);
			};
			num++;
			pause += 1.2;
		};
		delete pause;
		delete i;
		delete num;
	};
	if (time > 85 && time % 30 == 0 && time <= 150) {
		for (var i = 0; i <= 180; i += 45) {
			with(instance_create_depth(obj_soul.x, obj_soul.y, 0, obj_knife)) {
				xt = 1;
				sprite_index = spr_pixel;
				time = 30;
				time2 = 5;
				image_blend = c_white;
				image_angle = i;
			};
		}
		/*cr_kinfe(obj_soul.x,obj_soul.y,-9,45,6,0,c_white,0.5);
		cr_kinfe(obj_soul.x,obj_soul.y,-9,-45,6,0,c_white,0.5);
		cr_kinfe(obj_soul.x,obj_soul.y,-9,0,6,0,c_white,0.5);
		cr_kinfe(obj_soul.x,obj_soul.y,-9,-90,6,0,c_white,0.5);*/
	}
	if (time > 120 && time % 45 == 0 && time < 500) {
		switch (choose(0, 1)) {
			case 0: // go right
				var i = -1500;
				repeat(100) {
					with(instance_create_depth(i, -50, -9, but_fire)) {
						vspeed = 4;
						hspeed = 4;
						mode = -1;
						des = -20;
						image_xscale = 0.6;
						image_yscale = 0.6;
						image_angle = -90;
						image_speed = 1;
					};
					i += 30;
				};
				break;
			default: // go left
				var i = 1500;
				repeat(100) {
					with(instance_create_depth(i, -50, -9, but_fire)) {
						vspeed = 4;
						hspeed = -4;
						mode = -1;
						des = -20;
						image_xscale = 0.6;
						image_yscale = 0.6;
						image_angle = -90;
						image_speed = 1;
					};
					i -= 30;
				};
				break;
		}
	};
	if (time == 180) {
		audio_play_sound(snd_ding, 0, 0);
		for (var n = 0; n < array_length(bone); ++n) {
			for (var i = 0; i < array_length(bone[n]); ++i) {
				bone[n, i].color = choose(bones.blue, bones.orange, bones.blue, bones.orange, bones.blue, bones.orange, bones.blue, bones.orange);
			};
		};
	};
	if (time == 220) {
		for (var pause = 0, i = 0; i < array_length(bone[0]); ++i) {
			easing_execute(bone[0, i], "x", easing_class.sine, easing_class.in, bone[0, i].x, +60, 15, pause);
			easing_execute(bone[0, i], "x", easing_class.sine, easing_class.in, bone[0, i].x + 60, -150, 15, pause + 15);
			pause++;
		};
		for (var pause = 0, i = 0; i < array_length(bone[1]); ++i) {
			easing_execute(bone[1, i], "x", easing_class.sine, easing_class.in, bone[1, i].x, -60, 15, pause);
			easing_execute(bone[1, i], "x", easing_class.sine, easing_class.in, bone[1, i].x - 60, +150, 15, pause + 15);
			pause++;
		};
	};
	if (time == 280) {
		with(instance_create_depth(320, -100, -9, empty)) {
			sprite_index = sprYhang;
			image_xscale = 1.5;
			image_yscale = 1.5;
			easing_execute(id, "image_angle", 0, 0, 0, +7200, 25);
			easing_execute(id, "y", 0, 0, -100, 1000, 25);
		};
		CrBoardBk(120, 64, 120, 64, 13);
	};
	/*if(time>=310&&time%30==0&&time<=550){
		var offset=320;
		CreateBoneIh(offset+200,40,-6,bones.white);
		CreateBoneIx(offset+200,60,-6,bones.white,,,0);
		CreateBoneIy(offset-200,40,6,bones.white);
		CreateBoneIw(offset-200,60,6,bones.white);
	};*/
	if (time == 310) {
		for (var i = 0; i < 12; ++i) {
			boned[i] = instance_create_depth(0, 0, 0, runBone);
			boned[i].direction = i * 36;
			boned[i].length = 200;
		}
		easing_execute(id, "rdis", 0, 0, rdis, -420, 40);
		easing_execute(id, "rdis", 0, 0, rdis - 420, +420, 30, 250);
	}
	if (time > 310) {
		for (var i = 0; i < array_length(boned); ++i) {
			with(boned[i]) {
				direction += 2;
				x = 320 + other.rdis * cos(degtorad(direction));
				y = 320 + other.rdis * sin(degtorad(direction));
				angle = point_direction(x, y, 320, 320);
			}
		}
	}
	if (time >= 310 && time % 120 == 0 && time <= 550) {
		instance_create_depth(random_range(120, 360), random_range(100, 130), -9, obj_sans_circle);
	};
	if (time == 350) {
		for (var i = 0; i < 2; ++i) {
			instance_create_depth(260 + (i * 120), global.ih, 0, obj_LN_s);
		};
	};
	if (time >= 310 && time % 90 == 0 && time <= 550) {
		cr_kinfe(obj_soul.x, obj_soul.y, -9, 90, 6, 0, global.blue, 0.5);
	};
	if (time == 580) {
		CrBoneHeap("down", 0, 200, 20, bones.blue);
		easing_execute(enemy_loris, "x", easing_class.sine, easing_class.in, enemy_loris.x, -360, 30);
		easing_execute(enemy_nothing, "x", easing_class.sine, easing_class.in, enemy_nothing.x, +360, 30);
		easing_execute(enemy, "alpha", 0, 0, 0, +1, 25, 15);
	};
	if (time == 620) {
		instance_destroy(enemy_loris);
		instance_destroy(enemy_nothing);
		instance_destroy(obj_sans_circle);
		instance_destroy(runBone);
		instance_destroy(obj_bone);
		instance_destroy(but_knife);
		tred(_lang_text[$ "menu_text"][$ "nothing"], turn16);
	};
};