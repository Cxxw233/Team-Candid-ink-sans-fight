
if (xt > 0) then a++;
if (xt == 1) {
	if (a == 1) {
		CrWallLeft(30, 800, 114514, bones.white, 350, -230);
		obj_soul.xt = 4 //purple

		enemy.touxt = ink_face.fresh;
		obj_soul.x = 45
		obj_soul.y = 376

		easing_execute(enemy, "x", 0, 0, enemy.x, 120, 10)
		with(instance_create_depth(200, 256 - 6, obj_bk.depth - 1, enemy_fresh)) {
			//alpha = 0
			//easing_execute(id, "alpha", 0, 0, 0, 1, 10)
		}

		#region Lipu
		with(cr_bone(110, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 396 + 100, -100, 15);
		}
		with(cr_bone(150, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 255 - 100, 100, 15);
		}
		with(cr_bone(200, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 424 + 100, -100, 15);
		}
		with(cr_bone(211, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 404 + 100, -100, 15);
		}
		with(cr_bone(222, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 384 + 100, -100, 15);
		}
		with(cr_bone(233, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 404 + 100, -100, 15);
		}
		with(cr_bone(244, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 424 + 100, -100, 15);
		}
		with(cr_bone(287, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 260 - 100, +100, 15);
		}
		with(cr_bone(330, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 410 + 100, -100, 15);
		}
		with(cr_bone(377, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 260 - 100, +100, 15);
		}
		with(cr_bone(446, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 220 - 100, +100, 15);
		}
		with(cr_bone(446, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 415 + 100, -100, 15);
		}
		with(cr_bone(528, 0, obj_bk.depth + 1, 15, 90, c_white)) {
			easing_execute(id, "y", easing_class.sine, easing_class.in, 410 + 100, -100, 15);
		}#endregion;
		cr = instance_create_depth(555, 315, 0, obj_fresh_block)
		cr.xt = 4
		//repeat(irandom_range(10,30))
		//cr_bone(irandom_range(global.ix,global.iw)+irandom_range(-20,20),irandom_range(global.iy,global.ih)+irandom_range(-20,20),obj_bk.depth+1,irandom_range(3,30),irandom_range(0,359),choose(c_white,c_aqua,c_orange))
	}
	if (a % 40 = 0) {
		var xx = choose(100, 540)
		var yy = irandom_range(20, 460)
		scgb(0, 0, xx, yy, 2, 2, 0, (point_direction(xx, yy, obj_soul.x, obj_soul.y) + 90), 30, 1, 10, 1, c_white, spr_fresh_gb);
	};
};
if (xt == 2) {
	with(runBone) {
		easing_execute(id, "x", easing_class.sine, easing_class.in, x, -2000, 10)
	};
	with(obj_bone) {
		easing_execute(id, "x", easing_class.sine, easing_class.in, x, -1000, 10);
	}
	//if(a=10){cr_board(320-70,256,320+70,385,10);}
	if (a == 30) {
		if (instance_exists(runBone)) then instance_destroy(runBone);
		xt = 3;
		a = 0;
		obj_soul.xt = 4;
		obj_soul.depth = -90;
	}
}

if (xt == 3) {
	if (a = 5) {
		
		cr_board(0, 0, 640, global.ih, 5);
	}
	if (a = 70) {
		var (i) = 0
		repeat(60) {
			i += 11;
			mk = CrBoneRun(-20 + i, global.ih + 100, 40, obj_bk.depth + 1, bones.white, 90);
			easing_execute(mk, "y", easing_class.sine, easing_class.in, global.ih + 100, -100, 20, i / 11);
		};
	};
	if (a > 5 && a mod 60 = 0 && a < 300) {
		with(instance_create_depth(-40, global.ih - (global.ih - global.iy) / 8, obj_bk.depth, battle_move_wall)) {
			depth = -50;
			len = 30;
			if (x > 320) {
				hspeed = -3
			} else {
				hspeed = 3
			}
		}
		with(instance_create_depth(700, global.ih - (global.ih - global.iy) / 8 * 3, obj_bk.depth, battle_move_wall)) {
			depth = -50
			len = 30
			if (x > 320) {
				hspeed = -3
			} else {
				hspeed = 3
			}
		}
		with(instance_create_depth(-40, global.ih - (global.ih - global.iy) / 8 * 5, obj_bk.depth, battle_move_wall)) {
			depth = -50
			len = 30
			if (x > 320) {
				hspeed = -3
			} else {
				hspeed = 3
			}
		}
	}
	if (a > 10 && a mod 100 = 0 && a < 300) {
		var int = choose(c_orange, global.blue);
		var x1 = irandom_range(-20, -30);
		var y1 = irandom_range(0, global.ih);
		var x2 = irandom_range(660, 670);
		var y2 = irandom_range(0, global.ih);
		with(CrBone(x1, y1, 0, 8, 0, int, 8)) {
			rot = 3;
		};
		with(CrBone(x2, y2, 0, 8, 0, int, -8)) {
			rot = -3;
		};
		with(CrBone(x1, y1, 0, 8, 90, int, 8)) {
			rot = 3;
		};
		with(CrBone(x2, y2, 0, 8, 90, int, -8)) {
			rot = -3;
		};
	};
	if (a > 10 && a mod 100 = 0 && a < 300) {
		scgb(random_range(38, 602), -100, random_range(38, 602), 50, 2, 2, 0, 0, irandom_range(1, 50), -999, irandom_range(1, 20), 0, c_white, spr_fresh_gb)
	}
	if (a > 10 && a mod 40 = 0 && a < 300) {
		instance_create_depth(random_range(38, 602), -80, -50, obj_fresh_tnt)
	}
	if (a > 10 && a mod 60 = 0 && a < 300) {
		instance_create_depth(random_range(38, 602), -80, -50, obj_fresh_supertnt)
	}
	if (a > 10 && a mod 130 = 0 && a < 300) {
		instance_create_depth(-70, irandom_range(40, 440), -50, obj_fresh_EM)
	}
	if (a > 10 && a mod 110 = 0 && a < 300) {
		instance_create_depth(-70, irandom_range(40, 440), -50, obj_fresh_cat)
	}
	if (a = 320) {
		with(instance_create_depth(320, global.iy + (global.ih - global.iy) / 2, obj_bk.depth, obj_fresh_nm)) {
			image_angle = 90
			image_blend = c_purple;
			easing_execute(id, "image_xscale", 0, 0, image_xscale, -0.2, 10)
		}
		with(instance_create_depth(320, global.iy + (global.ih - global.iy) / 2, obj_bk.depth, obj_fresh_nm)) {
			image_blend = c_purple;
			easing_execute(id, "image_xscale", 0, 0, image_xscale, -0.1, 10)
		}
	}
	if (a = 313) {
		with(enemy_fresh) {
			fly = 1
		}
	}
	if (a == 300) {
		easing_execute(id, "delta", 0, 0, delta, +1, 30);
		easing_execute(id, "delta", 0, 0, delta + 1, -3, 30, 190);		
		easing_execute(fader, "alpha", 0, 0, 0, +0.5, 15);
		layer_set_fx("fx_ct", fx_ind);
	}
	if (a > 313) {
		fx_set_parameter(fx_ind, "g_VignetteSharpness", delta);
	}
	if (a = 300) {
		obj_soul.xt = 0;
		obj_soul.image_angle = 0
		obj_soul.jump = 2
		obj_soul.vspeed = 0
		obj_soul.hspeed = 0
		with(obj_fresh_EM) {
			speed += 10
		}
		with(battle_move_wall) {
			if (hspeed > 0) {
				hspeed += 10
			} else {
				hspeed -= 10
			}
		}
		easing_execute(runBone, "y", easing_class.sine, easing_class.in, global.ih, 100, 10);
		cr_board(320 - 70, 256, 320 + 70, 385, 13)
	}
	if (a > 320 && a < 500 && a mod 45 = 0) {
		switch (choose(0, 1)) {
			case 0:
				with (instance_create_depth(irandom_range(global.ix, global.iw), global.ih - (global.ih - global.iy) / 2, obj_bk.depth, obj_fresh_nm1)) {
					image_yscale = 2;
					image_blend = c_purple;
					image_angle = choose(dir_val.down, dir_val.left, dir_val.right, dir_val.up);
					duration = room_speed;
				}
				with (instance_create_depth(irandom_range(global.ix, global.iw), global.ih - (global.ih - global.iy) / 2, obj_bk.depth, obj_fresh_nm1)) {
					image_yscale = 2;
					image_blend = c_purple;
					image_angle = choose(dir_val.down, dir_val.left, dir_val.right, dir_val.up);
					duration = room_speed;
				}
				break;
			case 1:
				with (instance_create_depth((global.ix + global.iw) / 2, irandom_range(global.iy, global.ih), obj_bk.depth, obj_fresh_nm1)) {
					image_yscale = 2;
					image_blend = c_purple;
					image_angle = choose(dir_val.down, dir_val.left, dir_val.right, dir_val.up);
					duration = room_speed;
				}
				with (instance_create_depth((global.ix + global.iw) / 2, irandom_range(global.iy, global.ih), obj_bk.depth, obj_fresh_nm1)) {
					image_yscale = 2;
					image_blend = c_purple;
					image_angle = choose(dir_val.down, dir_val.left, dir_val.right, dir_val.up);
					duration = room_speed;
				}
				break;
		}
	}
	if (a > 330 && a mod 30 = 0 && a < 470) {
		switch (choose(0, 1)) {
			case 0:
				scgb(320, -100, global.iw + 50, obj_soul.y, 1, 2, 0, -90, 1, -99, 0, 0, c_white, spr_fresh_gb);
				break;
			case 1:
				scgb(-100, 320, obj_soul.x, global.iy - 50, 1, 2, 0, 0, 1, -99, 0, 0, c_white, spr_fresh_gb);
				break;
		}
	}
	if (a = 500) {
		easing_execute(enemy, "x", 0, 0, enemy.x, (320 - enemy.x), 20);
		with(enemy_fresh) {
			instance_destroy()
		}
		xt = 4
	}
	if (instance_exists(obj_soul)) {
		if (obj_soul.hspeed != 0) {
			with(obj_soul) {
				if (hspeed > 0) {
					hspeed -= 0.5
				}
				if (hspeed < 0) {
					hspeed += 0.5
				}
			}
		}
	}
};
if (xt == 4) {
	easing_execute(fader, "alpha", 0, 0, 0.5, -0.5, 15);
	fader.color = c_black;
	layer_destroy("fx_ct");
	instance_destroy(obj_fresh_EM)
	instance_destroy(obj_fresh_nm)
	instance_destroy(obj_fresh_nm1)
	instance_destroy(obj_fresh_tnt)
	instance_destroy(obj_fresh_cat)
	instance_destroy(enemy_fresh)
	instance_destroy(obj_gb)
	instance_destroy(obj_bone)
	instance_destroy(runBone)
	enemy.x = 320
	enemy.y = 250
	obj_soul.xt = 0
	obj_soul.image_angle = 0
	//enemy.y+=20
	//instance_destroy(obj_fresh_block)
	//instance_destroy(obj_fresh_bk_1)
	//instance_destroy(obj_fresh_bk_2)
	//instance_destroy(but_outer_bk)
	tred(_lang_text[$ "menu_text"][$ "fresh"], turn15);
};#region noneLegacy
/*
if(b<=119&&a>30)
{
b+=1
global.ix += (320-75 - global.ix) * 0.1
global.iw += (320+74 - global.iw) * 0.1 
global.iy += (310-75 - global.iy) * 0.1
global.ih += (310+74 - global.ih) * 0.1 
enemy.y += (230 - enemy.y) * 0.1 
}
	a++
	if(a=1){
	obj_bone.hspeed=-4
	}
	if(b=120)
	{
		obj_soul.run=0
		obj_soul.x=320
		obj_soul.y=310
		obj_bk.alpha=0
		global.ix=320-100
		global.iy=320-100
		global.iw=320+100
		global.ih=540
		mk=instance_create_depth(320,310,0,but_outer_bk)
		mk.xt=5
		b+=1
	}
        if(a=156)
        {
            mk1 = instance_create_depth(320, 310, -100, obj_fresh_block)
            mk1.image_angle=75
        }
        if(a=186)
        {
            mk2 = instance_create_depth(320, 310, -100, obj_fresh_block)
            mk2.image_angle=75
        }
        if(a=216)
        {
            mk3 = instance_create_depth(320, 310, -100, obj_fresh_block)
            mk3.image_angle=75
        }
        if(a=246)
        {
            mk4 = instance_create_depth(320, 310, -100, obj_fresh_block)
            mk4.image_angle=75
        }
        if(a=396)
            mk1.time=2
        if(a=426)
            mk2.time=2
        if(a=456)
        {
            mk3.time=2
            mk4.time=2
        }
		if(a=486)
		{
			but_outer_bk.xt=114514
			but_outer_bk.x=-1000
			instance_create_depth(400, 390, (depth - 1), obj_fresh_bk_1)
		}
		if(a>485)
		{
			obj_soul.x=320
		}
		if(a=570)
		{
		obj_bk.alpha=1
		global.ix=320-500
		global.iy=320-500
		global.iw=320+500
		global.ih=387
		}
		if (a = 600)
		{
        c = instance_create_depth(640, (353 - ((a - 600) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 2 + (16 / 32)
		}
		if (a = 620)
		{
        c = instance_create_depth(640, (353 - ((a - 580) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 2 + (16 / 32)
		}
		if (a = 640)
		{
        c = instance_create_depth(640, (353 - ((a - 600) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 2 + (8 / 32)
		}
		if (a = 660)
		{
        c = instance_create_depth(640, (353 - ((a - 590) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 3 + (16 / 32)
		}
		if (a = 680)
		{
        c = instance_create_depth(640, (353 - ((a - 570) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 4 + (48 / 32)
		}
		if (a = 700)
		{
        c = instance_create_depth(640, (353 - ((a - 550) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 5 + (16 / 32)
		}
		if (a = 720)
		{
        c = instance_create_depth(640, (353 - ((a - 520) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 6 + (20 / 32)
		}
		if (a = 740)
		{
        c = instance_create_depth(640, (353 - ((a - 490) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 7 + (16 / 32)
		}
		if (a = 760)
		{
        c = instance_create_depth(640, (353 - ((a - 460) / 2)), 0,obj_fresh_block)
		c.xt=1
        c.image_yscale = 8 + (40 / 32)
		}
/*		if(a>650&&a%40=0&&a<850)
		{
            c1=instance_create_depth(irandom_range(700,900),irandom_range(300,400), (depth - 1), obj_fresh_block)
            c1.image_yscale = irandom_range(1,3)
			c1.xt=irandom_range(2,3)
			c1.image_angle=90
            c2=instance_create_depth(irandom_range(700,900),irandom_range(300,400), (depth - 1), obj_fresh_block)
			c2.xt=irandom_range(2,3)
			c2.image_yscale = irandom_range(1,3)
			c2.image_angle=90
			xx=choose(100,540)
			yy=irandom_range(20,460)
			scgb(0,0,xx,yy,2,2,0,(point_direction(xx, yy, obj_soul.x, obj_soul.y) + 90),30,1,10,1,c_white)
		}
		/*if(a=950)
//{
//with(enemy_sans)

//instance_destroy()*/
#endregion;