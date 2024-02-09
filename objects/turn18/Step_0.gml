if (xt = 1) {
	a += 1
	if (a = 1) {
		with(enemy) {
			touxt = 19;
			easing_execute(id, "alpha", 0, 0, 1, -1, 15)
		}
		instance_create_depth(320, global.iy - 6, enemy.depth - 1, enemy_reaper)
	}
	if (a = 33) {
		scgb(320, -100, 320, 10, 2, 3, 0, 0, -1, -9, 1, 0, c_white, spr_reaper_gb)
	}
	if (a = 40) {
		with(instance_create_depth(100, 100, -9, obj_reaper_sickle)) {
			image_xscale = 0
			image_yscale = 0
			xt = 0
		}
		with(instance_create_depth(640 - 100, 100, -9, obj_reaper_sickle)) {
			image_xscale = 0
			image_yscale = 0
			xt = 1
		}
	}
	if (a = 90) {
		with(obj_gb) {
			scgb(x, y, x + (x - (instance_exists(obj_soul) ? obj_soul.x : 0)), y, image_xscale, image_yscale, image_angle, image_angle, 3, depth, 6, 0, c_white, sprite_index)
			scgb(x, y, x - (x - (instance_exists(obj_soul) ? obj_soul.x : 0)), y, image_xscale, image_yscale, image_angle, image_angle, 3, depth, 6, 0, c_white, sprite_index)
			instance_destroy()
		}
	}
	if (a = 105) {
		with(enemy) {
			easing_execute(id, "alpha", 0, 0, 0, 0.4, 15);
			easing_execute(id, "x", 0, 0, x, 50, 10)
		}
	}
	if (a > 110 && a mod 60 = 0 && a < 450) {

		var (bone1) = cr_bone(choose(global.ix - 60, global.iw + 60), random_range(global.iy, global.ih), -20, random_range(1, 3), irandom(360), c_black)
		var (bone2) = cr_bone(choose(global.ix - 60, global.iw + 60), random_range(global.iy, global.ih), -20, random_range(1, 3), irandom(360), c_black)

		easing_execute(bone1, "hspeed", 0, 0, (bone1.x > 320 ? 4 : -4), (bone1.x > 320 ? -40 : 40), 30, 20)
		easing_execute(bone2, "hspeed", 0, 0, (bone2.x > 320 ? 4 : -4), (bone2.x > 320 ? -40 : 40), 30, 20)



		var (ins_) = random_range(global.ix, global.iw)
		scgb(ins_, 610, ins_, 440, 0.8, 1.8, 0, 0, 12, -10, 18, 0, c_white, spr_ink_gb)
		var (ins_) = random_range(global.ix, global.iw)
		scgb(ins_, -10, ins_, 100, 0.8, 1.8, 180, 180, 12, -10, 18, 0, c_white, spr_ink_gb)
		var (ins_y) = bone1.y
		scgb(-50, ins_y, 20, ins_y, bone1.image_xscale / 2, 1.8, 90, 90, 12, -10, 18, 0, c_white, spr_ink_gb)
		var (ins_y) = bone2.y
		scgb(690, ins_y, 620, ins_y, bone2.image_xscale / 2, 1.8, 270, 270, 12, -10, 18, 0, c_white, spr_ink_gb)
	}
	if (a = 445) {
		cr_board(global.ix - 70, global.iy, global.iw + 70, global.ih, 10)
	}
	if (a = 460) {
		scgb(320, -100, 320, 100, 1.5, 2, 0, 0, 1, -9, 114514, 0, c_white, spr_ink_gb)
		scgb(global.ix, -100, global.ix, 100, 1.5, 2, 0, 0, 1, -9, 114514, 0, c_white, spr_ink_gb)
		scgb(global.iw, -100, global.iw, 100, 1.5, 2, 0, 0, 1, -9, 114514, 0, c_white, spr_ink_gb)
	}
	if (a > 470 && a mod 15 = 0 && a < 670) {
		with(cr_bone(choose(global.ix, global.iw, 320), random_range(global.iy, global.ih), -10, 0, 90, c_black)) {
			easing_execute(id, "image_xscale", 0, 0, 0, 2, 10)
			easing_execute(id, "gravity", 0, 0, 0, (x = 320 ? choose(0.5, -0.5) : (x = global.ix ? 0.5 : -0.5)), 10)
			gravity_direction = 0
		}
	}
	if (a > 470 && a mod 60 = 0 && a < 670) {
		var gb_x_start = choose(random_range(-300, -100), random_range(740, 1040))
		var gb_y_start = random_range(-200, -100)
		var gb_x_end = random(640)
		var gb_y_end = random(240)
		var gb_angle = (point_direction(gb_x_end, gb_y_end, obj_soul.x, obj_soul.y) + 90)
		var gb_kins = spr_reaper_gb
		scgb(gb_x_start, gb_y_start, gb_x_end, gb_y_end, 1, 2, irandom(360), gb_angle, 5, -11, 8, 0, c_white, gb_kins)

	}
	if (a = 670) {
		with(enemy_reaper) {
			easing_execute(id, "alpha1", 0, 0, 1, -1, 15, 10)
			easing_execute(id, "touxt", 0, 0, 6, -4, 15, 10)
			easing_execute(id, "alpha", 0, 0, 1, -1, 30, 25)
		}
		with(obj_gb) {
			terminal = 0
		}
	}
	if (a = 690) {
		with(enemy) {
			easing_execute(id, "alpha", 0, 0, 0.4, 1 - 0.4, 15);
			easing_execute(id, "x", 0, 0, x, -50, 10)
		}
		tred(_lang_text[$ "menu_text"][$ "reaper"], turn19)
		with(enemy_reaper) {
			alarm[0] = 120;
		}
		with(obj_bone) {
			instance_destroy()
		}
	}

}