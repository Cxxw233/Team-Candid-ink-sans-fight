if (xt == 1) {
	a++;
	if (a == 1) {
		//setboardbk(140,60,140,60,10);
		instance_create_depth(320, global.iy - 6, enemy.depth - 1, enemy_copy)
		obj_soul.xt = 1;
		with(enemy) {
			touxt = 10;
			easing_execute(id, "x", easing_class.linear, easing_class.in, x, -120, 12);
		}
	}
	if (a = 1) {
		var _num = ______num //数量     ______num放创建了
		var _angle = 360 / _num //不用动就行
		var __length = 12 // length
		for (var __i = 0; __i < _num; __i += 1) {
			___bone[__i] = instance_create_depth(114514, 114514, obj_bk.depth, obj_bone);
			___bone[__i].image_xscale = __length;
			___bone[__i].image_angle = _angle * __i;
			___bone[__i].des = 0;
		}
	}
	if (a = 3) {
		easing_execute(id, "xxx", 0, 0, xxx, -750, 50) //控制骨头移动的Anim  xx放创建了
	}
	if (a > 1) {
		var _num = ______num //别动
		var _angle = 360 / _num //别动

		for (var __i = 0; __i < _num; __i += 1) //键山骨头
		{
			if (instance_exists(___bone[__i])) {
				___bone[__i].x = 320 + lengthdir_x(xxx + ___bone_xx[__i], _angle * __i + a * 2);
				___bone[__i].y = 320 + lengthdir_y(xxx + ___bone_xx[__i], _angle * __i + a * 2);
				___bone[__i].image_angle = point_direction(320 + lengthdir_x(xxx + ___bone_xx[__i], _angle * __i + a * 2), 320 + lengthdir_y(xxx + ___bone_xx[__i], _angle * __i + a * 2), 320, 320);
			}
		}
	}

	if (a >= 30 && a < 300 && a % 25 = 0) {
		var yyy = global.ih - 30
		cr_bone(global.ix - 20, yyy - 60, obj_bk.depth + 1, 9, 60, c_white, 9)
		cr_bone(global.ix - 120, yyy + 60, obj_bk.depth + 1, 9, 60, c_white, 9)
		cr_bone(global.ix - 20, yyy - 60, obj_bk.depth + 1, 9, 105, c_white, 9) // ix+20
		cr_bone(global.iw + 20, yyy - 60, obj_bk.depth + 1, 9, -60, c_white, -9)
		cr_bone(global.iw + 120, yyy + 60, obj_bk.depth + 1, 9, -60, c_white, -9)
		cr_bone(global.iw + 20, yyy - 60, obj_bk.depth + 1, 9, -105, c_white, -9) //iw-20
	}
	if (a > 30 && a % 50 = 0 && a < 300) {
		var int = choose(c_orange, global.blue);
		with(CrBone(0, 340, obj_bk.depth + 1, 8, 0, int, 15)) {
			rot = 9;
		};
		with(CrBone(640, 340, obj_bk.depth + 1, 8, 0, int, -15)) {
			rot = -9;
		};
		with(CrBone(0, 340, obj_bk.depth + 1, 8, 90, int, 15)) {
			rot = 9;
		};
		with(CrBone(640, 330, obj_bk.depth + 1, 8, 90, int, -15)) {
			rot = -9;
		};
	}
	if (a > 1 && a < 320 && a mod 50 = 0) {
		var (xx) = choose(100, 540)
		scgb(320, -20, xx, global.ih, 1, 2, 0, point_direction(xx, global.ih, 320, global.ih) + 90, 1, -12, 0, 0, c_white, spr_copy_gb)
	}
	if (a = 320) {
		with(obj_soul) {
			xt = 0
			vspeed = 0
			hspeed = 0
		}
		cr_board(320 - 72.5, 320 - 60, 320 + 72.5, 320 + 60, 10)
		easing_execute(id, "xxx", 0, 0, xxx, -30, 30)
		//		easing_execute(obj_bone_hg2,"y",0,0,obj_bone_hg2.y,-20,20)
	}
	if (a > 340 && a mod 1 = 0 && a < 400) {
		___bone_xx[irandom_range(1, ______num - 1)] -= 4
	}
	if (a >= 330 && a < 400 && a % 30 = 0) {
		//mk = CrBone(0, irandom_range(280, 360), obj_bk.depth + 1, 16, 90, global.blue, 16)
		var value, int; int = choose(0, 1);
		value[0, 0] = global.ix - 20; value[0, 1] = 15;
		value[1, 0] = global.iw + 20; value[1, 1] = -15;
		CreateBoneIh(value[int, 0], 120, value[int, 1], bones.blue);
	}
	if ((a > 330) && (a < 400) && (a % 30 == 0)) {
		var xx1 = irandom_range(50, 220)
		var xx2 = irandom_range(420, 590)
		var yy = irandom_range(global.iy, global.ih)
		scgb(-20, irandom_range(global.iy, global.ih), xx1, yy, 1, 2, 0, (point_direction(xx1, yy, obj_soul.x, obj_soul.y) + 90), 2, -4, 10, 0, c_white, spr_copy_gb)
		scgb(660, irandom_range(global.iy, global.ih), xx2, yy, 1, 2, 0, (point_direction(xx2, yy, obj_soul.x, obj_soul.y) + 90), 2, -4, 10, 0, c_white, spr_copy_gb)
	}
	/*if(a>330 && a<580 && a mod 30 =0)
	{
		var yyy = irandom_range(global.iy+49,global.ih-30)
		CrBone(global.ix-20,yyy-60,obj_bk.depth+1,9,90,c_white,9)
		CrBone(global.ix-20,yyy+60,obj_bk.depth+1,9,90,c_white,9)
	}*/
	if (a == 420) {
		easing_execute(id, "xxx", 0, 0, xxx, 1550, 90)
	}
	if (a = 430) {
		cr_board(320 - 140, global.iy, 320 + 140, global.ih, 13)
	}
	if (a == 440 ) {
		// up
		for (var i = -20, h = 0, d = 0; i < battle_board.left + battle_board.right + 20; i += 12) {
			awa[0, h] = CreateBoneIy(global.ix + i, 10);
			with (awa[0, h]) {
				y -= 30;
				easing_execute(id, "length", easing_class.back, easing_class.out, length, + 60, 10, d);
			}
			h ++; d ++;
		}
		// down
		for (var i = -20, h = 0, d = 0; i < battle_board.left + battle_board.right + 20; i += 12) {
			awa[1, h] = CreateBoneIh(global.iw - i, 10);
			with (awa[1, h]) {
				y += 30;
				easing_execute(id, "length", easing_class.back, easing_class.out, length, + 60, 10, d);
			}
			h ++; d ++;
		}
		// left
		for (var i = -20, h = 0, d = 0; i < battle_board.up + battle_board.down + 20; i += 12) {
			awa[2, h] = CreateBoneIx(global.iy + i, 10);
			with (awa[2, h]) {
				x -= 30;
				easing_execute(id, "length", easing_class.back, easing_class.out, length, + 60, 10, d);
			}
			h ++; d ++;
		}
		// right
		for (var i = -20, h = 0, d = 0; i < battle_board.up + battle_board.down + 20; i += 12) {
			awa[3, h] = CreateBoneIw(global.ih - i, 10);
			with (awa[3, h]) {
				x += 30;
				easing_execute(id, "length", easing_class.back, easing_class.out, length, + 60, 10, d);
			}
			h ++; d ++;
		}
		with (CreateBone(320, 320, 0)) {
			rotate = 5;
			easing_execute(id, "length", easing_class.bounce, easing_class.out, 0, 200, 30);
			var dt = (500 - other.a);
			easing_execute(id, "length", easing_class.sine, easing_class.in, length + 200, - (length + 200), 25, dt);
			depth = -4;
			alarm[0] = dt + 25;
		}
		/*with (CreateBone(320, 320, 0)) {
			rotate = -5;
			easing_execute(id, "length", easing_class.sine, easing_class.out, 0, 100, 30);
			state = 233;
			dlen[0] = 100;
			dlen[2] = 4 * pi;
			dlen[3] = pi;
			depth = -4;
		}*/
	}
	if (a >= 440 && a mod 10 == 0) {
		for (var i = 0; i < array_length(awa); i ++) {
			for (var k = 0; k < array_length(awa[i]); k ++) {
				with (awa[i, k]) {
					if (!Anim_IsExists(id)) {
						if (i == 0) {
							easing_execute(id, "y", easing_class.back, easing_class.in, y, +600, 60, i * 10);
						}
						if (i == 1) {
							easing_execute(id, "y", easing_class.back, easing_class.in, y, -600, 60, i * 10);
						}
						if (i == 3) {
							easing_execute(id, "x", easing_class.back, easing_class.in, x, -600, 60, i * 10);
						}
						if (i == 2) {
							easing_execute(id, "x", easing_class.back, easing_class.in, x, +600, 60, i * 10);
						}
						color = choose(bones.white, bones.blue, bones.blue, bones.orange, bones.orange, bones.orange, bones.orange);
					}
				}
			}
		}
	}
	if (a > 500 && !instance_exists(runBone)) {
		with(enemy_copy) {
			xt = 6;
		}
		with(enemy) {
			easing_execute(id, "x", easing_class.quad, 0, x, +120, 12, 17);
		}
		tred(_lang_text[$ "menu_text"][$ "copy"], turn7);
	}
}