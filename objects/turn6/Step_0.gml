if (xt = 1) {
	a += 1
	if (a = 1) {
		instance_create_depth(320, global.iy - 66, enemy.depth - 1, enemy_cross)
		enemy.touxt = 7
	}
	if (a > 50 && a < 260 && a mod 40 = 0) {
		with(enemy_cross) {
			if (xttt = 0) {
				xttt = 1
			} else {
				with(instance_create_depth(irandom_range(global.ix - 40, global.iw + 40), choose(global.iy - 40, global.ih + 40), -9, but_knife)) {
					sprite_index = spr_cross_knife
					image_alpha = 0
					xxxt = 11
				}
			}
		}
	}
	if (a > 50 && a < 260 && a % 30 = 0) {
		var i = 0
		var xx = choose(global.ix - 30, global.iw + 30)
		var yy = choose(global.iy - 30, global.ih + 30)
		repeat(19) {
			i += 1
			var bone = instance_create_depth(xx, yy, obj_bk.depth + 1, obj_bone)
			bone.direction = 360 / 19 * i
			bone.image_angle = 360 / 19 * i
			bone.speed = 8
			bone.image_blend = c_red
			bone.image_xscale = 3
		}
	}
	if (a > 90 && a < 260 && a % 50 = 0) {
		scgb(0, 0, (obj_soul.x - 70), (obj_soul.y - 70), 1, 2, -45 - 90 - 180, -45 - 90 - 180, 15, 0, 2, 15, c_white, spr_cross_gb);
		scgb(640, 0, (obj_soul.x + 70), (obj_soul.y - 70), 1, 2, 45 + 90 + 180, 45 + 90 + 180, 15, 0, 2, 15, c_white, spr_cross_gb);
		scgb(0, 480, (obj_soul.x - 70), (obj_soul.y + 70), 1, 2, 225 + 90 + 180, 225 + 90 + 180, 15, 0, 2, 15, c_white, spr_cross_gb);
		scgb(640, 480, (obj_soul.x + 70), (obj_soul.y + 70), 1, 2, 135 - 90 - 180, 135 - 90 - 180, 15, 0, 2, 15, c_white, spr_cross_gb);
	}
	if (a = 300) {
		//CrBoard(global.ix-60,global.iy,global.iw+60,global.ih,9)
		with(instance_create_depth(320, 740, 0, but_knife)) {
			//xt=2
			//xxxt=114514
			//sprite_index=spr_cross_knife
			//image_blend=c_red
			//vspeed=-21
			xt = 2
			depth = -9;
			xxxt = 114514
			sprite_index = spr_cross_knife
			image_blend = c_red
			vspeed = -30
		}
	}
	if (a = 320) {
		obj_soul.x = 380;
		instance_create_depth(320, global.iy - 5, obj_bk.depth - 1, but_wall)
		if (os_type == os_windows) {
			SOUL = instance_create_depth(260, obj_soul.y, obj_soul.depth, obj_soul_C)
			SOUL.xt = 1
		}
		enemy_cross.xxt = 2;
	}
	if (a > 320 && a < 520 && a % 30 = 0) {
		CrBone(irandom_range(global.ix, global.iw), global.iy - 30, obj_bk.depth + 1, 3, 90, c_red, 0, random_range(5, 8))
		var knife1 = instance_create_depth(-20, irandom_range(260, 380), 0, but_knife)
		knife1.xxxt = 999
		//knife1.image_index=3;
		//knife1.xt=3;
		knife1.image_angle = 180;
		knife1.sprite_index = spr_chara_knife
		knife1.speed = 6;
	}
	if (a > 320 && a < 450 && a % 40 = 0) {
		CrBone(irandom_range(global.ix, global.iw), global.iy - 30, obj_bk.depth + 1, 3, 90, c_red, 0, random_range(5, 8))
		var knife2 = instance_create_depth(660, irandom_range(260, 380), 0, but_knife)
		knife2.xxxt = 999
		//knife2.image_index=3;
		//knife2.xt=3;
		knife2.image_angle = 0;
		knife2.sprite_index = spr_chara_knife
		knife2.speed = -6;
	}
	if (a > 320 && a < 420 && a % 45 = 0) {
		//CrBone(global.ix-14,global.iy+(global.ih-global.iy)/2,obj_bk.depth,12,90,choose(global.blue,c_orange),9)
		//CrBone(global.iw+14,global.iy+(global.ih-global.iy)/2,obj_bk.depth,12,90,choose(global.blue,c_orange),-9)
	}
	if (a = 460) {
		scgb(0, 0, global.ix, global.iy, 2, 2, 45, 45, 30, -9, 5, 0, c_white, spr_cross_gb);
		scgb(640, 480, global.iw, global.iy, 2, 2, -45, -45, 30, -9, 5, 0, c_white, spr_cross_gb);
		scgb(0, 0, 320, 220, 3, 2, 0, 0, 30, -9, 5, 30, c_white, spr_cross_gb);
	}
	if (a = 510) {
		if (os_type == os_windows) then instance_destroy(SOUL)
		instance_destroy(but_wall);
		obj_soul.xt = 0
		obj_soul.vspeed = 0
	}
	if (a = 530) {
		var (Yto) = 200
		easing_execute(enemy, "y", 0, 0, enemy.y, Yto - global.iy, 13)
		easing_execute(enemy_cross, "y", 0, 0, enemy_cross.y, Yto - global.iy, 13)
		cr_board(38, Yto, 602, 385, 13)
		enemy_cross.xxt = 2;
	}
	if (a = 540) {
		with(instance_create_depth(global.ix, global.iy, -9, but_other)) {
			sprite_index = spr_cross_knife
			image_alpha = 0
			xxxt = 11
		}
		with(instance_create_depth(global.ix, global.ih, -9, but_other)) {
			sprite_index = spr_cross_knife
			image_alpha = 0
			xxxt = 11
		}
		with(instance_create_depth(global.iw, global.ih, -9, but_other)) {
			sprite_index = spr_cross_knife
			image_alpha = 0
			xxxt = 11
		}
		with(instance_create_depth(global.iw, global.iy, -9, but_other)) {
			sprite_index = spr_cross_knife
			image_alpha = 0
			xxxt = 11
		}
	}
	if (a = 600 || a = 690 || a = 750) {


		var (xxx) = 220
		var (yyy) = 220
		for (i = 0; i < 4; i += 1) {
			scgb(xxx + lengthdir_x(500, i * 90 - 45), yyy + lengthdir_x(500, i * 90 - 45), xxx, yyy, 2, 2, i * 90 - 45, i * 90 - 45, 1, -9, 5, -15, c_white, spr_cross_gb)
		}

		var (xxx) = 420
		var (yyy) = 420
		for (i = 0; i < 4; i += 1) {
			scgb(xxx + lengthdir_x(500, i * 90 - 45), yyy + lengthdir_x(500, i * 90 - 45), xxx, yyy, 2, 2, i * 90 - 45, i * 90 - 45, 1, -9, 5, -15, c_white, spr_cross_gb)
		}

		var (xxx) = 220
		var (yyy) = 420
		for (i = 0; i < 4; i += 1) {
			scgb(xxx + lengthdir_x(500, i * 90 - 45), yyy + lengthdir_x(500, i * 90 - 45), xxx, yyy, 2, 2, i * 90 - 45, i * 90 - 45, 1, -9, 5, -15, c_white, spr_cross_gb)
		}

		var (xxx) = 420
		var (yyy) = 220
		for (i = 0; i < 4; i += 1) {
			scgb(xxx + lengthdir_x(500, i * 90 - 45), yyy + lengthdir_x(500, i * 90 - 45), xxx, yyy, 2, 2, i * 90 - 45, i * 90 - 45, 1, -9, 5, -15, c_white, spr_cross_gb)
		}

	}
	if (a > 640 && a mod 2 = 0 && a < 730) {
		event_user(choose(0, 1, 2, 3))
	}


	if (a = 760) {
		with (but_knife) { alarm[0] = 120; }
		with (but_other) { alarm[0] = 120; }
		with (obj_bone) { alarm[0] = 120; }
		with (enemy_cross) { xt = 1; }
	}
	if (a = 850) {
		easing_execute(enemy, "y", 0, 0, enemy.y, 256 - global.iy, 17)
		//instance_destroy(obj_knife)
		tred(_lang_text[$ "menu_text"][$ "cross"], turn8); // geno
	}
}

/*if(xt=1)
{
a+=1
if(a=1)
{
instance_create_depth(320,global.iy-106,enemy.depth-1,enemy_cross)
enemy.touxt=7
}
if(b<10)
{
b+=1
global.ix-=5
global.iw+=5
global.iy-=4
enemy.y-=4
}
}