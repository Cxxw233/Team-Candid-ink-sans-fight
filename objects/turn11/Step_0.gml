if (xt == 1) {
	if (c < 10) {
		c += 1
		global.ix += 21
		global.iw -= 21
	}
	a += 1
	if (a = 1) {
		enemy.touxt = 12
		instance_create_depth(320, global.iy - 6, 1, enemy_killer)
	}
	if (a < 10) {
		enemy.x += (a - 10) * 3
	}
	if (a = 30) {
		if (choose(0, 1) == 0) {
			mk1 = instance_create_depth(320, 320, 0, obj_bone)
			mk1.image_angle = 45
			mk1.rot = 4
			mk1.image_alpha = 0
			mk1.image_xscale = 12
			mk2 = instance_create_depth(320, 320, 0, obj_bone)
			mk2.image_angle = 165
			mk2.rot = 4
			mk2.image_alpha = 0
			mk2.image_xscale = 12
			mk3 = instance_create_depth(320, 320, 0, obj_bone)
			mk3.image_angle = 285
			mk3.rot = 4
			mk3.image_alpha = 0
			mk3.image_xscale = 12
			easing_execute(obj_bone, "image_alpha", 0, 0, 0, 1, 20)
		} else {
			mk1 = instance_create_depth(320, 320, 0, obj_bone_hg5)
			mk1.image_angle = 45
			mk2 = instance_create_depth(320, 320, 0, obj_bone_hg5)
			mk2.image_angle = 165
			mk3 = instance_create_depth(320, 320, 0, obj_bone_hg5)
			mk3.image_angle = 285
		}
	}
	if (a > 30 && a < 230 && a % 60 = 0) {
		cr_bone(660, 320, obj_bk.depth + 1, 20, 90, c_aqua, -6);
	}
	if (a > 40 && a < 230 && a % 30 == 0) {
		var _c = instance_create_depth(obj_soul.x, obj_soul.y, 0, obj_knife);
		_c.xt = 1
		_c.sprite_index = spr_pixel
		_c.time = 15
		_c.time2 = 5
		_c.image_blend = c_red
		_c.image_angle = random(360);
	};
	/*var _a=0;
		switch(_a){
			case 0:
				var ii=0;
				for(var i=0;i<200;i+=10){
					__bone[ii]=CrBoneRun(global.ix-60,global.iy+i,0,-1000,bones.white,0);
					with(__bone[ii]){
						easing_execute(id,"length",easing_class.back,0,0,+200,60,0,pi+0.618);
					};
					++ii;
					
				};
		break;
		};
		
	};*/
	/*if(a=40)
	{
		c=instance_create_depth(320,320,0,obj_knife)
		c.xt=1
		c.sprite_index=spr_pixel
		c.time=15
		c.time2=5
		c.image_blend=c_red
		c.image_angle=0
		c=instance_create_depth(320,320,0,obj_knife)
		c.xt=1
		c.sprite_index=spr_pixel
		c.time=15
		c.time2=5
		c.image_blend=c_red
		c.image_angle=90
	}
	if(a=70)
	{
		c=instance_create_depth(320,320,0,obj_knife)
		c.xt=1
		c.sprite_index=spr_pixel
		c.time=15
		c.time2=5
		c.image_blend=c_red
		c.image_angle=45
		c=instance_create_depth(320,320,0,obj_knife)
		c.xt=1
		c.sprite_index=spr_pixel
		c.time=15
		c.time2=5
		c.image_blend=c_red
		c.image_angle=135
	}
	if(a=100||a=160||a=220)
	{
		c=instance_create_depth(320,320,0,obj_knife)
		c.xt=1
		c.sprite_index=spr_pixel
		c.time=15
		c.time2=5
		c.image_blend=c_red
		c.image_angle=(point_direction(c.x, c.y, obj_soul.x, obj_soul.y) + 90)
	}
	if(a=130||a=190)
	{
		c=instance_create_depth(obj_soul.x,obj_soul.y,0,obj_knife)
		c.xt=1
		c.sprite_index=spr_pixel
		c.time=15
		c.time2=5
		c.image_blend=c_red
		c.image_angle=(point_direction(c.x, c.y, obj_soul.x, obj_soul.y) + 90)
	}*/
	if (a = 230) {
		easing_execute(mk1, "image_alpha", 0, 0, 1, -1, 10)
		easing_execute(mk2, "image_alpha", 0, 0, 1, -1, 10)
		easing_execute(mk3, "image_alpha", 0, 0, 1, -1, 10)
		mk1.xt = 1
		mk2.xt = 1
		mk3.xt = 1
		CrWallDown(10, 35, 150, bones.white)
		CrWallUp(10, 35, 150, bones.white)
	}
	if (a > 230 && a < 380 && a % 12 = 0) {
		c = instance_create_depth(irandom_range(global.ix, global.iw), 240, 0, obj_knife)
		c.xt = 4
		c.image_angle = 0
		c.image_blend = c_red
	}
	if (a > 230 && a < 380 && a % 18 = 0) {
		cr_bone(-20, 320, obj_bk.depth + 1, 20, 90, c_orange, 12)
	}
	if (a = 350) {
		scgb(0, 0, global.ix - 60, 320, 2, 2, 0, 90, 55, 0, 10, 0, c_white, spr_killer_gb)
	}
	if (a = 420) {
		c = instance_create_depth(320, 320, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 0
		c = instance_create_depth(320, 320, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 90
		c = instance_create_depth(320, 320, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 45
		c = instance_create_depth(320, 320, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 135
	}
	if (a = 435) {
		c = instance_create_depth(global.ix, global.iy, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 90
		c = instance_create_depth(global.ix, global.ih, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 90
		c = instance_create_depth(global.iw, global.iy, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 90
		c = instance_create_depth(global.iw, global.ih, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 90
		c = instance_create_depth(global.ix, global.iy, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 0
		c = instance_create_depth(global.ix, global.ih, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 0
		c = instance_create_depth(global.iw, global.iy, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 0
		c = instance_create_depth(global.iw, global.iy, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 15
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = 0
	}
	if (a > 465 && a < 545 && frac(a / 4) = 0) {
		c = instance_create_depth(320, 320, 0, obj_knife)
		c.xt = 1
		c.sprite_index = spr_pixel
		c.time = 5
		c.time2 = 5
		c.image_blend = c_red
		c.image_angle = ((((a - 530) * 2.5) - (floor((((a - 530) * 2.5) / 360)) * 360)) + 90)
	}
	if (a > 465 && a < 545 && a % 18 = 0) {
		c = instance_create_depth(global.iw + 180, irandom_range(global.iy, global.ih), 0, obj_knife)
		c.xt = 0
		c.image_blend = c_aqua
		c.image_angle = 90
		c.speed = -12
		c.image_alpha = 0
		c.c = 0
		c = instance_create_depth(global.iw + 180, irandom_range(global.iy, global.ih), 0, obj_knife)
		c.xt = 0
		c.image_blend = c_aqua
		c.image_angle = 90
		c.speed = -12
		c.image_alpha = 0
		c.c = 0
	}
	if (a > 465 && a < 575 && a % 18 = 0) {
		var (XXX) = random_range(global.ix, global.iw)
		var (YYY) = choose(global.iy, global.ih) //random_range(global.ix,global.iy)
		var (dao) = instance_create_depth(random_range(-50, 700), choose(-50, 500), -9, but_other)
		dao.xxxt = 2333333333333
		dao.idealx = XXX //(320 + lengthdir_x(0, ((a * 2.5) + 90)))
		dao.idealy = YYY //(320 + lengthdir_y(0, ((a * 2.5) + 90)))
		dao.image_angle = 0
		dao.image_blend = c_red
		dao.sprite_index = spr_killer_knife
		dao.nowag = point_direction(XXX, YYY, obj_soul.x, obj_soul.y) //(((a * 2.5) - (floor(((a * 2.5) / 360)) * 360)) + 90)
	}
	if (a = 570) {
		with(enemy_killer) {
			xt = 6
			easing_execute(id, "alpha", 0, 0, 1, -1, 25);
		}
	}
	if (a > 610 && a < 620) {
		enemy.touxt = 13
		enemy.x -= (a - 620) * 3
	}
	if (a = 625) {
		with(enemy_killer) {
			if (alpha < 0.1) {
				instance_destroy();
			}
		}
		obj_soul.xt = 1;
		instance_destroy(obj_knife);
		instance_destroy(obj_bone);
		tred(_lang_text[$ "menu_text"][$ "killer"], turn12);
	}
}