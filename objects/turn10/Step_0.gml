if (xt = 1) {
	a += 1
	if (a = 1) {
		enemy.touxt = 11
		easing_execute(enemy, "x", easing_class.linear, easing_class.in, enemy.x, 400, 10)
		instance_create_depth(320, global.iy - 6, obj_bk.depth - 1, enemy_dust)
	}
	if (a > 1 && a <= 11) {
		//easing_execute(global,"iw",1,12,global.iw,-180,10)
		//easing_execute(global,"ix",1,12,global.ix,180,10)
		global.iw += ((global.iw - 180) - global.iw) * 0.08 //(目标 - 目前) * 速度
		global.ix += ((global.ix + 180) - global.ix) * 0.08
	}
	if (a = 10) {
		var GB = -6
		repeat(13) {
			GB += 1
			scgb(320 - GB * 57, 530, 320 - GB * 57, 440, 1, 2, 0, -135, 1, -9, 1, -8, c_white, spr_dust_gb)
			scgb(320 + GB * 57, 530, 320 + GB * 57, 440, 1, 2, 0, 135, 1, -9, 1, -8, c_white, spr_dust_gb)
		}
	}
	if (a = 30) {
		easing_execute(global, "iw", 1, 12, global.iw, 90, 13)
		easing_execute(global, "ix", 1, 12, global.ix, -90, 13)
		easing_execute(global, "iy", 1, 12, global.iy, -30, 13)
		easing_execute(enemy_dust, "y", easing_class.linear, easing_class.in, enemy_dust.y, -30, 13)
	}
	if (a > 30 && a <= 43) {
		global.iw += ((global.iw + 90) - global.iw) * 0.08 //(目标 - 目前) * 速度
		global.ix += ((global.ix - 90) - global.ix) * 0.08
		global.iy += ((global.iy - 30) - global.iy) * 0.08
	}
	if (a = 40) {
		enemy.alpha = 0;
		scgb(420, -100, 420, 160, 2, 2, 0, 0, 1, -100, 10, 0, c_white, spr_dust_gb)
		scgb(220, -100, 220, 160, 2, 2, 0, 0, 1, -100, 10, 0, c_white, spr_dust_gb)
		scgb(320, -100, 320, 160, 2, 2, 0, 0, 1, -100, 10, 0, c_white, spr_dust_gb)
	}
	if (a > 50 && a mod 5 = 0 && a < 150) {
		if (a mod 10 = 0) {
			scgb(obj_soul.x, -100, obj_soul.x, 160, 1, 2, 0, 0, 1, -100, 0, 0, c_white, spr_dust_gb)
		}
		cr_bone(global.ix - 20, random_range(global.ih, global.iy), 999, 2, 0, c_white, 23)
		cr_bone(global.iw + 20, random_range(global.ih, global.iy), 999, 2, 0, c_white, -23)
	}
	if (a = 160) {
		obj_soul.xt = 1
		obj_soul.vspeed = 30
		easing_execute(global, "iw", 1, 12, global.iw, -40, 13)
		easing_execute(global, "ix", 1, 12, global.ix, 40, 13)
	}
	if (a > 160 && a <= 173) {
		global.iw += ((global.iw - 40) - global.iw) * 0.08 //(目标 - 目前) * 速度
		global.ix += ((global.ix + 40) - global.ix) * 0.08
	}
	if (a = 180) {
		var (i) = 0
		repeat(10) {
			cr_bone(global.ix - 12 * (i + 6), global.ih, 999, sin(i / 5) * 13, 90, c_white, 20)
			cr_bone(global.iw + 12 * (i + 6), global.ih, 999, sin(i / 5) * 13, 90, c_white, -20)
			i += 1
		}
	}
	if (a = 190) {
		so_set_angle("up")
		obj_soul.vspeed = -30
	}
	if (a = 200) {
		var (i) = 0
		repeat(10) {
			cr_bone(global.ix - 12 * (i + 6), global.iy, 999, sin(i / 5) * 9, 90, c_white, 20)
			cr_bone(global.iw + 12 * (i + 6), global.iy, 999, sin(i / 5) * 9, 90, c_white, -20)
			i += 1
		}
	}
	if (a = 210) {
		obj_soul.xt = 3;
		obj_soul.vspeed = 0
		obj_soul.hspeed = 0
		obj_soul.gravity = 0
		easing_execute(obj_soul, "image_angle", easing_class.sine, easing_class.in, 0, +180, 25);
	}
	if (a > 210 && a mod 2 = 0 && a < 300) {
		if (a mod 40/*80*/) = 0 {
			var xx = irandom_range(0, 640)
			var xxx = irandom_range(100, 540)
			scgb(xx, 500, xxx, 120, 1.3, 2, 0, point_direction(xxx, -40, obj_soul.x, obj_soul.y) + 90, 6, -9, 0, 0, c_white, spr_dust_gb)
			var xx = irandom_range(0, 640)
			var xxx = irandom_range(100, 540)
			scgb(xx, 500, xxx, 120, 1.3, 2, 0, point_direction(xxx, -40, obj_soul.x, obj_soul.y) + 90, 6, -9, 0, 0, c_white, spr_dust_gb)
			var xx = irandom_range(0, 640)
			var xxx = irandom_range(100, 540)
			scgb(xx, 500, xxx, 120, 1.3, 2, 0, point_direction(xxx, -40, obj_soul.x, obj_soul.y) + 90, 6, -9, 0, 0, c_white, spr_dust_gb)

		}
		instance_create_depth(random_range(global.ix, global.iw), -50 + random_range(40, -40), -99999, but_dust_yellow_bone)
	}
	if (a = 330) {
		easing_execute(enemy_dust, "x", easing_class.linear, easing_class.in, enemy_dust.x, -140, 10)
		CrBoard(260, 180, 380, 300, 10);
		easing_execute(obj_soul, "y", easing_class.sine, easing_class.in, 310, -70, 15)
		easing_execute(obj_soul, "x", 0, 0, obj_soul.x, (320 - obj_soul.x), 10)
		obj_soul.xt = 2
		obj_soul.image_angle = 0
	}
	if (a > 350 && a < 540 && a mod 5 = 0) {
		var (angle) = choose(0, 1, 2, 3)
		var (binr) = instance_create_depth(320 - lengthdir_x(500, angle * 90), 240 - lengthdir_y(500, angle * 90), 0, but_dust_green_b)
		binr.direction = angle * 90
		binr.image_angle = angle * 90
		binr.speed = 12
	}
	if (a = 580) {
		easing_execute(enemy_dust, "x", easing_class.linear, easing_class.in, enemy_dust.x, 140, 10)
		obj_soul.xt = 0
		instance_destroy(obj_soul_green)
		easing_execute(global, "iw", 1, 12, global.iw, 140, 13)
		easing_execute(global, "ix", 1, 12, global.ix, -140, 13)
		CrBoard(200, 230, 440, 380, 10);
		open = 1; opend = 0;
	}
	if (a > 600 && (a % 90) == 0 && a < 750) {
		cr_LN_K(obj_soul.x, 320, 0, 0, 8, c_red)
	}
	if (a >= 600 && a < 750 && a % 23 = 0) {
		c = instance_create_depth(irandom_range(global.ix, global.iw), global.ih + 20, obj_bk.depth + 1, obj_trident)
		c.time1 = 15
		c.time2 = 5
		c.time3 = 30
		c.time4 = 5
	}
	if (a = 780) {
		with(enemy_dust) {
			xt = 1
		}
		open = 0
	}
	if (a = 800) {
		with(enemy) {
			//easing_execute(id,"x",easing_class.linear,easing_class.in,x,(320-x),20,15);
			x -= 400;
			easing_execute(id, "alpha", 0, 0, 0, +1, 30);
		}
		instance_destroy(obj_LN_K)
		instance_destroy(obj_bone)
		instance_destroy(obj_trident)
		tred(_lang_text[$ "menu_text"][$ "murder"], turn9);
	} /**/
}