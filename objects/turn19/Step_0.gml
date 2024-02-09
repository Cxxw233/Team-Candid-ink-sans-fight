if (xt) {
	time ++;
	if (time == 1) {
		enemy.touxt = 20;	
	}
	if (time == 26) {
		CrBoardBk(64, 64, 64, 64, 1);
		enemy.x = 114514;
		instance_create_depth(320, global.iy-6, obj_bk.depth-1, enemy_epic);
	}
	if (time == 35 + 25) {
		show = false;
	}
	if (time == 75) {
		for(var n = 0, i = 0; i < battle_board.left + battle_board.right + 11; i += 11;) {
			bone[0, n] = CreateBoneIy(global.ix + i, 40,,,,,false);
			with (bone[0, n]) {
				y -= 100;
				color = -1; blend = battle_color.epic;
			}
			n ++;
		}
		for(var n = 0, i = 0; i < battle_board.left + battle_board.right + 11; i += 11;) {
			bone[1, n] = CreateBoneIh(global.iw - i, 40,,,,,false);
			with (bone[1, n]) {
				y += 100;
				color = -1; blend = battle_color.epic;
			}
			n ++;
		}	
		for (var i = 0, p = 0; i < (array_length(bone[0]) / 2); ++ i) {
			with (bone[0, i]) {
				easing_execute(id, "y", easing_class.back, easing_class.out, y, +80, 25, p);
				p += 3;
			}
		}
		for (var i = array_length(bone[0]) - 1, p = 0; i > (array_length(bone[0]) / 2); -- i) {
			with (bone[0, i]) {
				easing_execute(id, "y", easing_class.back, easing_class.out, y, +80, 25, p);
				p += 3;
			}
		}
		for (var i = 0, p = 0; i < (array_length(bone[1]) / 2); ++ i) {
			with (bone[1, i]) {
				easing_execute(id, "y", easing_class.back, easing_class.out, y, -80, 25, p);
				p += 3;
			}
		}
		for (var i = array_length(bone[1]) - 1, p = 0; i > (array_length(bone[1]) / 2); -- i) {
			with (bone[1, i]) {
				easing_execute(id, "y", easing_class.back, easing_class.out, y, -80, 25, p);
				p += 3;
			}
		}
		array_copy(bone, 2, bone, 0, array_length(bone[0]));
		array_copy(bone, 3, bone, 1, array_length(bone[1]));
		bone[2] = array_shuffle(bone[2]); bone[3] = array_shuffle(bone[3]);
	}
	if (time > 120 && time % 15 == 0 && time < 280) {
		var d1 = choose(2, 3);
		do { 
			var target_num = irandom(array_length(bone[d1])-1); 
		} until( (!Anim_IsExists(bone[d1, target_num])) );
		with (bone[d1, target_num]) {
			easing_execute(id, "length", easing_class.back, easing_class.in, length, +120, 15);
			easing_execute(id, "length", easing_class.sine, easing_class.out, length + 120, -120, 15, 15);
		}
	}
	if (time == 180) {
		var bk = 320;
		scgb(0, 0, bk - 100, bk - 100, 1, 2, point_direction(bk - 100, bk - 100, 320, 320), 90 + point_direction(bk - 100, bk - 100, 320, 320), 15, 0, 15, 0, c_white, spr_epic_gb);
		scgb(640, 0, bk + 100, bk - 100, 1, 2, point_direction(bk + 100, bk - 100, 320, 320), 90 + point_direction(bk + 100, bk - 100, 320, 320), 15, 0, 15, 0, c_white, spr_epic_gb);
		scgb(0, 480, bk - 100, bk + 100, 1, 2, point_direction(bk - 100, bk + 100, 320, 320), 90 + point_direction(bk - 100, bk + 100, 320, 320), 15, 0, 15, 0, c_white, spr_epic_gb);
		scgb(640, 480, bk + 100, bk + 100, 1, 2, point_direction(bk + 100, bk + 100, 320, 320), 90 + point_direction(bk + 100, bk + 100, 320, 320), 15, 0, 15, 0, c_white, spr_epic_gb);
	}
	if (time == 240) {
		scgb(0, 320, 320 - 120, 320, 1, 2, -90, 90, 15, 0, 15, 0, c_white, spr_epic_gb);
		scgb(640, 320, 320 + 120, 320, 1, 2, 90, -90, 15, 0, 15, 0, c_white, spr_epic_gb);
		instance_create_depth(320, 500, obj_bk.depth + 1, battle_move_wall);
		easing_execute(battle_move_wall, "y", 0, 0, 500, -160, 15);
	}
	if (time == 300) {
		obj_soul.xt = soul_type.blue;
		for (var i = 0; i < array_length(bone[0]); i += 2) {
			with (bone[0, i]) {
				easing_execute(id, "y", easing_class.back, easing_class.in, y, +300, 60);
			}
		}
		for (var i = 1; i < array_length(bone[0]); i += 2) {
			with (bone[0, i]) {
				easing_execute(id, "y", easing_class.back, easing_class.in, y, +300, 60, 60);
			}
		}
		for (var i = 0; i < array_length(bone[1]); i += 2) {
			with (bone[1, i]) {
				easing_execute(id, "y", easing_class.back, easing_class.in, y, -300, 60, 30);
			}
		}
		for (var i = 1; i < array_length(bone[1]); i += 2) {
			with (bone[1, i]) {
				easing_execute(id, "y", easing_class.back, easing_class.in, y, -300, 60, 90);
			}
		}
	}
	if (time == 360) {
		for (var i = 0, n = 0; i < battle_board.up + battle_board.down + 11; i += 11; ) {
			bone[4, n] = CreateBoneIx(global.iy + i, 40,,bones.orange);
			bone[4, n].x -= 60;
			n ++;
		}
		for (var i = 0, n = 0; i < battle_board.up + battle_board.down + 11; i += 11; ) {
			bone[5, n] = CreateBoneIw(global.ih - i, 40,,bones.orange);
			bone[5, n].x += 60;
			n ++;
		}
		for (var i = 0, p = 0; i < (array_length(bone[4]) / 2); ++ i) {
			with (bone[4, i]) {
				easing_execute(id, "length", easing_class.elastic, easing_class.out, length, +150, 30, p);
				easing_execute(id, "length", easing_class.back, easing_class.out, length + 150, -150, 30, 90 + p);
			}
			p += 3;
		}
		for (var i = array_length(bone[4]) - 1, p = 0; i > (array_length(bone[4]) / 2); -- i) {
			with (bone[4, i]) {
				easing_execute(id, "length", easing_class.elastic, easing_class.out, length, +150, 30, p);
				easing_execute(id, "length", easing_class.back, easing_class.out, length + 150, -150, 30, 90 + p);
			}
			p += 3;
		}
		for (var i = 0, p = 0; i < (array_length(bone[5]) / 2); ++ i) {
			with (bone[5, i]) {
				easing_execute(id, "length", easing_class.elastic, easing_class.out, length, +150, 30, p);
				easing_execute(id, "length", easing_class.back, easing_class.out, length + 150, -150, 30, 90 + p);
			}
			p += 3;
		}
		for (var i = array_length(bone[5]) - 1, p = 0; i > (array_length(bone[5]) / 2); -- i) {
			with (bone[5, i]) {
				easing_execute(id, "length", easing_class.elastic, easing_class.out, length, +150, 30, p);
				easing_execute(id, "length", easing_class.back, easing_class.out, length + 150, -150, 30, 90 + p);
			}
			p += 3;
		}
	}
	if (time == 480) {
		with (obj_soul) {
			xt = soul_type.red;
			jump = 2;
			angle = "down";
			vspeed = 0;
			hspeed = 0;
		}
		battle_move_wall.alarm[0] = 120;
		easing_execute(battle_move_wall, "y", easing_class.sine, easing_class.in, battle_move_wall.y, +300, 30);
		CrBoardBk(150, 64, 150, 64, 13);
		for (var i = 0; i < array_length(bone); ++ i) {
			for (var ii = 0; ii < array_length(bone[i]); ++ ii)	{
				with (bone[i, ii]) {
					instance_destroy();
				}
			}
		}
		delete bone;
	}
	if (time >= 490 && time % 4 == 0 && time <= 670) {
		CreateBoneVertical(global.iw + 6, 320 + sin(time / 6.7) * 15.6, -8, 25);
	}
	if (time == 540) {
		(instance_create_depth(-60, 320, 0, obj_Pilar)).xt = 1;	
	}
	if (time == 600) {
		with (instance_create_depth(640 + 60, 320, 0, obj_Pilar)) {
			mode = -1;
		}
	}
	if (time >= 540 && time % 25 == 0 && time <= 660) {
		with (instance_create_depth(random_range(global.ix, global.iw), global.iy - 10, obj_bk.depth + 1, empty)) {
			destroy = true;
			hurt = true;
			sprite_index = mc_cookie_epic;
			gravity = 0.8;
		}
	}
	if (time == 660) {
		show = true;
	}
	if (time == 685) {
		enemy.x = 320;
		instance_destroy(runBone);
		instance_destroy(empty);
		instance_destroy(obj_Pilar);
		instance_destroy(enemy_epic);
		instance_destroy(battle_move_wall);
		instance_destroy(obj_gb);
	}
	if (time == 715) {
		tred(_lang_text[$ "menu_text"][$ "epic"], turn20);
	}
}
