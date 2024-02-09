if (b < 10) {
	b += 1
	global.ix += 4
	global.iw -= 4
}
if (xt = 1) {
	a += 1
	if (a = 1) {
		instance_create_depth(320, global.iy - 6, 1, enemy_sans)
	}
	if (a < 10) {
		enemy.x += (a - 10) * 3
	}
	if (a = 30) {
		instance_create_depth(320, 100, -9, but_star)
		instance_create_depth(160, 100, -9, but_star)
		instance_create_depth(480, 100, -9, but_star)
	}
	if (a = 50) {
		scgb(-20, global.iy + (global.ih - global.iy) / 2, global.ix - 30, global.iy + (global.ih - global.iy) / 2, 2, 2, 0, 90, 1, -4, 135, 0, c_white)
		scgb(660, global.iy + (global.ih - global.iy) / 2, global.iw + 30, global.iy + (global.ih - global.iy) / 2, 2, 2, 0, -90, 1, -4, 135, 0, c_white, spr_ink_gb)
	}
	if (a = 70) {
		scgb(320, -10, 320, global.iy - 60, 2, 2, 0, 0, 1, -9, 6, 12, c_white)
	}
	if (a > 70 && a < 125 && (a mod 5) = 0) {
		scgb(320 + (a - 70) * 4, -100, 320 + (a - 70) * 4, global.iy - 60, 1, 2, 180, 0, 1, -9, 6, 12, c_white)
		scgb(320 - (a - 70) * 4, -100, 320 - (a - 70) * 4, global.iy - 60, 1, 2, -180, 0, 1, -9, 6, 12, c_white)
	}
	if (a > 135 && a < 190 && (a mod 5) = 0) {
		scgb(global.ix + (a - 136) * 4, -100, global.ix + (a - 136) * 4, global.iy - 60, 1, 2, 180, 0, 1, -9, 6, 12, c_white)
		scgb(global.iw - (a - 136) * 4, -100, global.iw - (a - 136) * 4, global.iy - 60, 1, 2, -180, 0, 1, -9, 6, 12, c_white)
	}
	if (a = 200) {
		scgb(-20, global.iy, global.ix - 30, global.iy, 2, 2, 0, 90, 2, -4, 43, 0, c_white)
		scgb(660, global.ih, global.iw + 30, global.ih, 2, 2, 0, -90, 2, -4, 43, 0, c_white, spr_ink_gb)
	}
	if (a = 200) {
		scgb(320, -10, 320, global.iy - 60, 2, 2, 0, 0, 4, -9, 6, 12, c_white)
		scgb(220, -10, 220, global.iy - 60, 2, 2, 0, 0, 4, -9, 6, 12, c_white)
		scgb(120, -10, 120, global.iy - 60, 2, 2, 0, 0, 4, -9, 6, 12, c_white)
		scgb(420, -10, 420, global.iy - 60, 2, 2, 0, 0, 4, -9, 6, 12, c_white)
		scgb(520, -10, 520, global.iy - 60, 2, 2, 0, 0, 4, -9, 6, 12, c_white)
	}
	if (a = 230) {
		scgb(320 + 50, -10, 320 + 50, global.iy - 60, 2, 2, 0, 0, 1, -9, 6, 12, c_white)
		scgb(320 - 50, -10, 320 - 50, global.iy - 60, 2, 2, 0, 0, 1, -9, 6, 12, c_white)
		scgb(220 - 50, -10, 220 - 50, global.iy - 60, 2, 2, 0, 0, 1, -9, 6, 12, c_white)
		scgb(420 + 50, -10, 420 + 50, global.iy - 60, 2, 2, 0, 0, 1, -9, 6, 12, c_white)
	}
	if (a > 250 && a <= 260) {
		global.ix += 17
		global.iw -= 17
	}
	if (a = 265) {
		scgb(320, -30, 320 + lengthdir_x(150, 45), 320 + lengthdir_y(150, 45), 2.1, 2, 0, -45, 1, -9, 10, 0, c_white)
		scgb(320, -30, 320 - lengthdir_x(150, 45), 320 + lengthdir_y(150, 45), 2.1, 2, 0, 45, 1, -9, 10, 0, c_white)
	}
	if (a = 300) {
		scgb(320, -30, 320 + lengthdir_x(150, 0), 320, 2.1, 2, 0, 90, 1, -9, 10, 0, c_white)
		scgb(320, -30, 320 - lengthdir_x(150, 0), 320, 2.1, 2, 0, -90, 1, -9, 10, 0, c_white)
		scgb(320, -30, 320, global.iy - 50, 2.1, 2, 0, 0, 1, -6, 10, 0, c_white)
	}
	if (a > 1 && a < 305 && (a mod 30) = 0) {
		//instance_create_depth(choose(global.ix-6,global.iw+6),10,114514,but_line_t1)
		var cs = choose(1, 0);
		var bx = (cs ? global.ix - 6 : global.iw + 6);
		var bspd = (cs ? 19 : -19);
		CreateBoneIh(bx, 122, bspd, bones.orange);

		//cr_bone( bx, 10, 114514, 100 , 90, c_orange, bspd);
	}
	if (a = 305) {
		with(enemy_sans) {
			xt = 6
		}
	}
	if (a > 345 && a < 355) {
		enemy.x -= (a - 355) * 3
	}
	if (a = 360) {
		with(enemy_sans) {
			instance_destroy()
		}
		tred(_lang_text[$ "menu_text"][$ "sans"], turn2);
	}
}