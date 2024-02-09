if (xt = 1) {
	a += 1
	if (a = 1) {
		setboardbk(62.5, 62.5, 62.5, 62.5, 10)
		enemy.touxt = 8
		with(instance_create_depth(320, 320, 0, obj_soul_C)) {
			xt = 6;
			buff = 1;
		}
	}
	if (a < 10) {
		//enemy.x-=(a-10)*4
	}
	if (a = 10) {
		instance_create_depth(320, global.iy - 6, -2, enemy_ho)
	}
	if(a>10&&a%60=0&&a<200){
		if (choose(0, 1) = 0) {
			scgb(0, 0, obj_soul.x, global.iy - 80, 2, 2, 0, 0, 30, 0, 10, 0, choose(global.blue, c_orange))
		};
		else {
			scgb(0, 0, obj_soul_C.x, global.iy - 80, 2, 2, 0, 0, 30, 0, 10, 0, choose(global.blue, c_orange))
		};
		scgb(0, 0, global.iw + 80, obj_soul.y, 2, 2, 0, -90, 30, -9, 10, 0, choose(global.blue, c_orange))
	}
	if(a>10&&a%70=0&&a<200){
		var bone_1_angle = 0
		var(xxx)=320
		var(yyy)=200
		repeat(8){
			var bone_1 = instance_create_depth(xxx,yyy,obj_bk.depth-1000,runBone)
			bone_1.length = 30
			bone_1.color = choose(1,2)
			bone_1.rotate = 5
			bone_1.angle = bone_1_angle
			bone_1.direction = bone_1_angle
			bone_1.speed = 5
			bone_1.depth=obj_bk.depth-1000
			bone_1_angle+=45
			iii++
		}
	}
	if(a>10&&a<200){
	if(instance_exists(runBone))
	{
		with(runBone){direction=angle};
	}
	}
	if(a=120){
	if(instance_exists(runBone))
	{
		easing_execute(runBone, "rotate", easing_class.back, easing_class.out, 5, +4, 8);
		easing_execute(runBone, "speed", easing_class.back, easing_class.out, 5, +4, 8);
	}
	}
	if (a = 230) {
		CrFlash(c_red, 10)
		instance_create_depth(0, 0, 0, obj_effect_ho)
		CrBoard(ui_board.ix, ui_board.iy, ui_board.iw, ui_board.ih, 1)
		instance_destroy(obj_bone)
		instance_destroy(obj_bone_hg2)
		instance_destroy(obj_bone_hg3)
		instance_destroy(runBone)
		instance_destroy(obj_gb)
		obj_soul.buff = 2
		obj_soul.buffer = 1
		obj_bk.xt=4
		instance_destroy(obj_soul_C)
	}
	if (a >= 230 && a <= 440 && (a % 3) == 0)
		CrBone(649, 360, 181, 5, 90, c_white, -4.5)
	if (a >= 220 && a <= 440 && (a % 18) == 0) {
		mk = instance_create_depth(660, 300, 165, battle_move_wall_old)
		mk.speed = -7
	}
	if (a >= 230 && a <= 440 && (a % 60) == 0) {
		scgb(0, 0, global.ix, global.ih, 1.4, 2, 0, point_direction(global.ix, global.ih, obj_soul.x, obj_soul.y) + 90, 20, -9, 10, 0, c_white)
		scgb(0, 0, global.iw, global.ih, 1.4, 2, 0, point_direction(global.iw, global.ih, obj_soul.x, obj_soul.y) + 90, 20, -9, 10, 0, c_white)
	}
	if (a = 260) {
		cr_bone(global.ix, 320, 171, 16, 90, c_orange, 4)
		cr_bone(global.iw, 320, 171, 16, 90, c_orange, -4)
	}
	if (a = 450) {
		CrFlash(c_blue, 10)
		setboardbk(62.5, 62.5, 62.5, 62.5, 10)
		instance_destroy(obj_bone)
		instance_destroy(obj_gb)
		instance_destroy(battle_move_wall_old)
		instance_destroy(obj_bg_ho_fire)
		with(obj_soul) {
			buff = 1
			vspeed = 0
			hspeed = 0
			gravity = 0
		}
		obj_effect_ho.color = c_blue
	}
	if (a = 460) {
		mk1 = cr_bone(320, 320, 190, 13, 0, c_white)
		mk2 = cr_bone(320, 320, 190, 13, 90, c_white)
		mk3 = cr_bone(320, 320, 190, 5, 45, global.blue)
		mk4 = cr_bone(320, 320, 190, 5, 135, global.blue)
		mk1.rot = 2
		mk2.rot = 2
		mk3.rot = -2
		mk4.rot = -2
	}
	if (a >= 460 && a % 70 = 0 && a <= 660) {
		var xx1 = irandom_range(50, 590)
		scgb(-20, irandom_range(global.iy, global.ih), xx1, 180, 1, 2, 0, (point_direction(xx1, 180, obj_soul.x, obj_soul.y) + 90), 2, -4, 10, 0, c_white)
	}
	if (a = 690) {
		CrFlash(c_black, 10)
		instance_destroy(obj_effect_ho)
		instance_destroy(obj_bone)
		instance_destroy(obj_gb)
		instance_destroy(enemy_ho)
		instance_destroy(obj_bg_ho_snow)
		instance_destroy(obj_bg_ho)
		enemy.visible = 1
	}
	if (a == 700) {
		obj_soul.buff = 0
		obj_soul.xt = 0
		obj_soul.sprite_index = spr_soul
		obj_bk.xt = 2
		tred(_lang_text[$ "menu_text"][$ "ho"], turn11);
	}
}