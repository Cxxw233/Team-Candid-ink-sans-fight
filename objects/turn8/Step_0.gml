if (xt = 1) {
	a += 1
	if (a = 1) {
		instance_create_depth(320, global.iy - 6, enemy.depth - 1, enemy_geno)
		with(enemy) {
			easing_execute(id, "x", easing_class.sine, easing_class.in, x, -130, 10, 1)
			touxt = 9
		}
	}
	if (a = 10) {
		scgb(320, -100, 50, global.iy + 60, 2, 2, 0, 90, 1, -9, 8, 0, c_white)
		scgb(320, -100, 590, global.iy + 60, 2, 2, 0, -90, 1, -9, 8, 0, c_white)

		scgb(320, -100, 50, global.ih - 60, 2, 2, 0, 90, 1, -9, 8, 0, c_white)
		scgb(320, -100, 590, global.ih - 60, 2, 2, 0, -90, 1, -9, 8, 0, c_white)
		var i = -2
		repeat(5) {
			with(instance_create_depth(320 - i * 120, 100, -60, but_geno_block)) {
				image_xscale = 0
				image_yscale = 0
				easing_execute(id, "image_xscale", easing_class.sine, easing_class.in, 0, 1, 20)
				easing_execute(id, "image_yscale", easing_class.sine, easing_class.in, 0, 1, 20)
				easing_execute(id, "y", easing_class.sine, easing_class.in, y, -220, 20)
			}
			i += 1
		}
	}
	if (a = 40) {
		scgb(320, -100, 50, global.iy + 20, 2, 2, 0, 90, 1, -9, 8, 0, c_white)
		scgb(320, -100, 590, global.iy + 20, 2, 2, 0, -90, 1, -9, 8, 0, c_white)

		scgb(320, -100, 50, global.ih - 20, 2, 2, 0, 90, 1, -9, 8, 0, c_white)
		scgb(320, -100, 590, global.ih - 20, 2, 2, 0, -90, 1, -9, 8, 0, c_white)
		with(instance_find(but_geno_block, irandom_range(0, 4))) {
			gravity = 0.6
		}
	}
	if (a = 70) {
		scgb(320, -100, 320, 220, 2, 2, 0, 0, 1, -10, 10, 0, c_white, spr_ink_gb)
		scgb(global.ix, -100, global.ix, 220, 2.5, 2.5, 0, 0, 1, -10, 10, 0, c_white, spr_ink_gb)
		scgb(global.ix, -100, global.ix, 220, 2.5, 2.5, 45, 45, 1, -10, 10, 0, c_white, spr_ink_gb)
		scgb(global.iw, -100, global.iw, 220, 2.5, 2.5, 0, 0, 1, -10, 10, 10, c_white, spr_ink_gb)
		scgb(global.iw, -100, global.iw, 220, 2.5, 2.5, -45, -45, 1, -10, 10, 0, c_white, spr_ink_gb)
		scgb(-100, global.iy, 50, global.iy, 2, 2, 90, 90, 1, -10, 10, 0, c_white)
		scgb(740, global.ih, 590, global.ih, 2, 2, -90, -90, 1, -10, 10, 0, c_white)
	}
	if (a = 110) {
		with(but_geno_block) {
			gravity = 0.8;
		}
	}
	if (a > 110 && a < 210) {
		if (a > 110 && a < 210 && a % 7 == 0) {
			var xx = random_range(global.ix, global.iw),
				yy = random_range(global.iy, global.ih),
				duration = random(45);
			MakeButWhiteBlock(xx, yy, depthBattle.High, 12, 12, duration);
		}
		var bone = instance_create_depth(random_range(global.ix, global.iw), 479, -9, obj_bone)
		bone.gravity = 0.5
		bone.speed = irandom_range(9, 16)
		bone.direction = 90 - irandom_range(-10, 10)
		bone.image_blend = choose(c_white);
		bone.image_xscale = 3
	}
	if (a > 110 && a < 300) {
		if (instance_exists(obj_bone)) {
			with(obj_bone) {
				image_angle = direction
			}
		}
	}
	if (a = 230) {
		CrBoard(320 - 80, global.iy, 320 + 80, global.ih, 10)
	}
	if (a = 260) {
		obj_soul.xt = 1
	}
	/*if(a>280&&a%5==0){
		CrBone(global.ix-20,320,obj_bk.depth+1,12,90,global.blue,4);
	}*/
	if (a = 280)

	{
		scgb(320, -100, 200, global.ih, 2, 2, 0, 90, 1, -9, 7, 0, c_white, spr_ink_gb)
		scgb(320, -100, 440, global.ih, 2, 2, 0, -90, 1, -9, 7, 0, c_white, spr_ink_gb)
		scgb(320, -100, 320, 100, 2, 2, 0, 0, 1, -9, 7, 0, c_white, spr_ink_gb)

		scgb(320, -100, 200, 290, 1, 2, 0, 90, 1, -9, 7, 0, c_white, spr_ink_gb)
		scgb(320, -100, 440, 290, 1, 2, 0, -90, 1, -9, 7, 0, c_white, spr_ink_gb)
	}
	if (a = 300) {
		with(enemy_geno) {
			cxxsb = 6
		}
		with(enemy) {
			easing_execute(id, "x", easing_class.sine, easing_class.out, x, (320 - x), 20, 15);
		}
	}
	if (a = 320) {
		//instance_destroy(enemy_geno);
		obj_bone.alarm[0] = 60;
		ButWhiteBlock.alarm[10] = 60;
		
	} /**/
	if (a == 335) {
		tred(_lang_text[$ "menu_text"][$ "geno"], turn10);
	}
}