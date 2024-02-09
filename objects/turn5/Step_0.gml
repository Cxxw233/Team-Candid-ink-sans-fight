if (xt = 1) {
	a += 1
	if (a = 1) {
		enemy.touxt = 6
		instance_create_depth(320, global.iy - 6, enemy.depth - 1, enemy_us_sans)
	}
	if (a < 10) {
		enemy.x += (a - 10) * 3
	}
	if (a > 0 && a < 100 && a mod 30 = 0) {
		var by = random_range(global.iy + 60, global.ih - 40);
		CreateBoneVertical(global.ix - 6, by, 6, 20);
		CreateBoneVertical(global.iw + 6, by, -6, 20);
		/*CrBone(global.ix-20,yyy-60,obj_bk.depth+1,9,90,c_white,6)
		CrBone(global.ix-20,yyy+64,obj_bk.depth+1,9,90,c_white,6)
		CrBone(global.iw+20,yyy-60,obj_bk.depth+1,9,90,c_white,-6)
		CrBone(global.iw+20,yyy+64,obj_bk.depth+1,9,90,c_white,-6)*/
	}
	if (a = 130) {
		var yy = 0
		repeat(8) {
			yy += 1
			CrBone(global.ix - 13 * yy, global.iy, obj_bk.depth, yy * 1.1, 90, c_white, 10)
			CrBone(global.ix - 13 * yy, global.ih, obj_bk.depth, yy * 1.1, 90, c_white, 10)
			CrBone(global.iw + 13 * yy, global.ih, obj_bk.depth, yy * 1.1, 90, c_white, -10)
			CrBone(global.iw + 13 * yy, global.iy, obj_bk.depth, yy * 1.1, 90, c_white, -10)
		}
	}
	if (a = 136) {
		scgb(320, -100, 320, 200, 2, 2, 0, 0, 1, -13, 7, 0, c_white, spr_ink_gb)
		CrBoard(global.ix + 40, global.iy, global.iw - 40, global.ih, 8)
	}
	if (a > 144 && a < 200 && a mod 10 = 0) {
		CreateBoneIh(global.iw + 13, 20, -5);
		CreateBoneIy(global.ix - 13, 90, 5);
		//CrBone(global.ix-13,global.iy,obj_bk.depth+1,17,90,c_white,5)
		//CrBone(global.iw+13,global.ih,obj_bk.depth+1,5,90,c_white,-5)
	}
	if (a = 220) {
		with(runBone) {
			if (hspeed < 0) {
				hspeed -= 10
			}
		}
		CrBoard(38, global.ih - 24, 602, global.ih, 10)
	}
	if (a > 230 && a < 380 && a mod 10 = 0) {
		var col = choose(global.blue, c_orange)
		CrBone(global.ix - 18, global.ih - 10, obj_bk.depth + 1, 1, 90, col, 9)
		CrBone(global.iw + 18, global.ih - 10, obj_bk.depth + 1, 1, 90, col, -9)
	}
	if (a = 380) {
		with(enemy_us_sans) {
			xt = 6
		}
	}
	if (a > 410 && a < 420) {
		enemy.x -= (a - 420) * 3
	}
	if (a = 425) {
		instance_destroy(enemy_us_sans)
		tred(_lang_text[$ "menu_text"][$ "swap"], turn6) // _lang_text.menu_text.
	}
}