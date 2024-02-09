if (b < 10) {
	b += 1
	global.ix += 21
	global.iw -= 21
	col -= 255 / 10
	if (instance_exists(obj_bk)) {
		obj_bk.colour = make_color_rgb(255, col, col)
	}
}
if (xt = 1) {
	a += 1
	if (a = 1) {
		CrBone(320, 320, -10, 0, 0, global.blue)
	}
	if (a < 10) {
		enemy.x -= (a - 10) * 4
	}
	if (a = 2) {
		instance_create_depth(320, global.iy - 6, -1, enemy_fell)
	}
	if (a > 50 && a < 60) {
		with(obj_bone) {
			image_xscale += 1.5
		}
	}
	if (a > 60 && a < 276) {
		obj_bone.image_angle += 10
	}
	if (a > 60 && a mod 4 = 0 && a < 258) {
		scgb(320 + lengthdir_x(400, a * 4), 320 + lengthdir_y(400, a * 4), 320 + lengthdir_x(150, a * 4), 320 + lengthdir_y(150, a * 4), 1, 2, point_direction(320 + lengthdir_x(400, a * 4), 320 + lengthdir_y(400, a * 4), 320, 320), point_direction(320 + lengthdir_x(150, a * 4), 320 + lengthdir_y(150, a * 4), 320, 320) + 90, 1, -9, 1, 0, c_white, spr_fell_gb0)
	}
	if (a > 170 && a mod 4 = 0 && a < 258) {
		scgb(320 + lengthdir_x(400, a * 4 + 90), 320 + lengthdir_y(400, a * 4 + 90), 320 + lengthdir_x(150, a * 4 + 90), 320 + lengthdir_y(150, a * 4 + 90), 1, 2, point_direction(320 + lengthdir_x(400, a * 4 + 90), 320 + lengthdir_y(400, a * 4 + 90), 320, 320), point_direction(320 + lengthdir_x(150, a * 4 + 90), 320 + lengthdir_y(150, a * 4 + 90), 320, 320) + 90, 1, -9, 1, 0, c_white, spr_fell_gb0)
	}
	if (a = 268) {
		obj_soul.xt = 1
	}
	if (a = 258) {
		CrBoard(global.ix - 80, global.iy, global.iw + 80, global.ih, 7)
	}
	if (a > 268 && a < 358 && a mod 20 = 0) {
		var by = random_range(global.ih - 30, global.iy + 30);
		var arr = CreateBoneVertical(global.ix - 6, by, 6, 20);
		for (var i = 0; i < array_length(arr); ++i) {
			arr[i].color = -1;
			arr[i].blend = c_red;
		}
		/*var yyy = irandom_range(global.iy+49,global.ih-30)
		CrBone(global.ix-20,yyy-60,obj_bk.depth+1,9,90,c_red,6)
		CrBone(global.ix-20,yyy+60,obj_bk.depth+1,9,90,c_red,6)*/
	}
	if (a = 358) {
		with(enemy_fell) {
			xt = 4
		}
	}
	if (a > 358 && a < 368) {
		enemy.x += (a - 368) * 4
	}
	if (a > 266 && a < 276) {
		obj_bone.image_xscale -= 1.5
	}
	if (a > 366 && a <= 376) {
		col += 255 / 10
		if (instance_exists(obj_bk)) {
			obj_bk.colour = make_color_rgb(255, col, col)
		}
	}
	if (a = 386) {
		instance_destroy(runBone);
		instance_destroy(obj_bone)
		tred(_lang_text[$ "menu_text"][$ "fell"], turn4);
	}
}