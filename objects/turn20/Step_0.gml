if (xt = 1) {
	a += 1
	if (a = 1) {
		enemy.touxt = 21;
		easing_execute(enemy, "x", easing_class.linear, easing_class.in, enemy.x, 400, 10);
		instance_create_depth(320, global.iy - 6, obj_bk.depth - 2, enemy_dt);
		instance_create_depth(320, global.iy - 6, obj_bk.depth - 0.001, obj_dt_light);
		obj_soul.xt=1;
	};
	if (a = 10){
		setboardbk(120, global.up, 120, 60, 10);
	};
	if (a > 10 && (a % 11) = 0 && a <= 60){
		mk=CrBoneRun(global.ix-10,global.ih+20,10+i*18,obj_bk.depth+1,c_white,-30,4)
		easing_execute(mk, "angle", easing_class.linear, easing_class.in, -30, -60, 14) 
		mk1=CrBoneRun(global.iw+10,global.ih+20,10+i*18,obj_bk.depth+1,c_white,30,-4)
		easing_execute(mk1, "angle", easing_class.linear, easing_class.in, 30, 60, 14) 
		i+=2
	};
	if (a > 50 && (a % 9) = 0 && a <= 140){
		CrBone(global.ix-2, global.iy - 20, obj_bk.depth + 1, 6, 90, c_white, 5);
		CrBone(global.iw+2, global.iy - 20, obj_bk.depth + 1, 6, 90, c_white, -5);
		with(obj_bone) {
			len = 9;
			sine = 1;
			spd = 6;
			move = -2
		};
	};
	if (a = 20){
		instance_create_depth(320, 500, obj_bk.depth + 1, battle_move_wall);
		easing_execute(battle_move_wall, "y", 0, 0, 440, -100, 18);
	};
	if (a = 60){
		CrWallDown(15,35,120,bones.white)
	};
	if (a = 55){
		scgb(-20,global.iw-0,global.ix-30,global.iw-90,2,2,0,90,10,0,2.5,0,c_white,spr_dt_gb)
	}
	if (a = 90 || a = 120 || a = 150 || a = 180){
		scgb(-20,-20,global.iw+30,choose(irandom_range(global.iy-10,global.ih+10),obj_soul.y,330),1,2,0,-90,15,0,2.5,0,c_white,spr_dt_gb)
	}
	if (a = 60){
		audio_play_sound(snd_ding,1000,0);
		easing_execute(id, "yyy", easing_class.circ, easing_class.in, 240, -240, 12);
		xtt = 1;
	};
	if (a = 190){
		audio_play_sound(snd_ding,1000,0);
		easing_execute(id, "yyy", easing_class.circ, easing_class.in, 0, 240, 12);
		easing_execute(enemy_dt, "x", easing_class.sine, easing_class.in, enemy_dt.x, -160, 25);
	};
	if (a = 200){
		audio_play_sound(snd_blink,1000,0);
		obj_dt_light.l1=1
	};
	if (a = 210){
		audio_play_sound(snd_blink,1001,0);
		obj_dt_light.l2=1
	};
	if (a = 215){
		xtt = 0;
		enemy_dt.touxt=1;
		instance_create_depth(320,global.iy-6,0,obj_dt_papyrus);
	}
	if (a = 220){
		audio_play_sound(snd_blink,1002,0);
		obj_dt_light.l3=1
	};
	if (a = 230){
		audio_play_sound(snd_blink,1003,0);
		obj_dt_light.l4=1
	};
	if (a = 280){
		enemy_dt_papyrus._body_sprite = spr_dt_shen3;
		so_set_angle("up")
		obj_soul.vspeed = -30
		xtt = 4;
		angled = 1;
	};
	if (a = 290){
		audio_play_sound(snd_ding,100,0);
		open = 1;
	};
	if (a > 290 && (a % 6) = 0 && a <= 430){
		crbonepap(global.ix-8, global.ih + 20, obj_bk.depth + 1, 5, 90, c_white, 5);
		with(obj_bone_pap) {
			len = 15;
			sine = 1;
			spd = 6;
			move = -2
		};
	};
	if (a > 293 && (a % 25) = 0 && a <= 430){
		CrBone(global.ix-2, global.iy - 20, obj_bk.depth + 1, 6, 90, c_white, 5);
		CrBone(global.iw+2, global.iy - 20, obj_bk.depth + 1, 6, 90, c_white, -5);
	};
	if (a > 290 && (a % 70) = 0 && a <= 430){
		var yyy = choose(global.iy-50,global.ih+50)
		scgb(0,0,obj_soul.x,yyy,2,2,0,(yyy = global.iy-50 ? 0 : 180) ,20,0,10,0,c_white,(yyy = global.iy-30 ? spr_dt_gb : spr_dt_papyrus_gb))	
	};
	if (a = 470){
		enemy_dt_papyrus.xtt = 1;
		so_set_angle("down")
		obj_soul.vspeed = 30
		angled = 0;
		open = 0;
		easing_execute(id, "angle", easing_class.back, easing_class.out, angle, 360 - (angle % 360), 30);
	};
	if (a = 475){
		enemy_dt.touxt = 3;
		setboardbk(60, global.up, 60, 60, 20);
		CrWallDown(30,30,5,c_white)
		easing_execute(enemy_dt, "x", easing_class.sine, easing_class.in, enemy_dt.x, 160, 15);
		easing_execute(enemy_dt_papyrus, "x", easing_class.sine, easing_class.in, enemy_dt_papyrus.x, 420, 10,10);
	};
	if (a = 490){
		mk=instance_create_depth(320, 500, obj_bk.depth + 1, battle_move_wall);
		mk.len=25
		easing_execute(battle_move_wall, "y", 0, 0, 440, -100, 10);
	};
	if (a > 490 && ((a - 100) % 100) == 0 && a < 510) {
		but = CrBoneRun(320, 240, 388, 0, bones.orange, 0, 0, 6);
		easing_execute(but, "vspeed", 0, 12, 6, -12, 40, 10);
	};
	if (a > 490 && (a % 100) == 0 && a < 510) {
		but = CrBoneRun(320, 400, 388, 0, bones.orange, 0, 0, -6);
		easing_execute(but, "vspeed", 0, 12, -6, 12, 40, 10);
	};
	if (a = 510){
		obj_soul.xt = 1;
		scgb(320, -30, 320 + lengthdir_x(150, 45), 320 + lengthdir_y(150, 45), 2, 2, 0, -45, 15, -9, 10, 0, c_white,spr_dt_gb);
		scgb(320, -30, 320 - lengthdir_x(150, 45), 320 + lengthdir_y(150, 45), 2, 2, 0, 45, 15, -9, 10, 0, c_white,spr_dt_gb);
	};
	if (a = 540){
		instance_create_depth(320,global.ih+7,obj_bk.depth+5,obj_bone_epic);
		easing_execute(enemy_dt_papyrus, "x", easing_class.expo, easing_class.in, -100, 420, 15);
		easing_execute(enemy_dt, "x", easing_class.cubic, easing_class.in, enemy_dt.x, 400, 8,10);
		enemy_dt_papyrus._body_sprite = spr_dt_shen1;
	};
	if (a = 580){
		audio_play_sound(snd_ding,100,0);
		xtt = 2;
		for(i = 0; i < 6; ++i){
			var color = choose(c_aqua,c_orange);
			var xxx = choose(global.ix-68,global.iw+68)
			scgb(680,320,xxx,global.iy-30+i*30,1,2,0,-90,25,0,2.5,0,color,spr_dt_papyrus_gb);
		};
	};
	if (a = 620){
		xtt = 0;
		CrWallDown(20,20,10,bones.white)
		easing_execute(id, "xscale", easing_class.back, easing_class.in, 1, -2, 15);
		easing_execute(id, "xx", easing_class.back, easing_class.in, 0, 640, 15);
		enemy_dt_papyrus._body_sprite = spr_dt_shen1;
	};
	if (a > 630 && (a % 3) = 0 && a <= 705){
		mk1=crbonepap(global.ix-32.5, global.iy - 20, obj_bk.depth + 100, 5, 0, c_white, 0,6);
		mk2=crbonepap(global.iw+32.5, global.iy - 20, obj_bk.depth + 100, 5, 0, c_white, 0,6);
		with(mk1) {
			len = 15;
			sine = 1;
			spd = 8;
			move = -2
		};
		with(mk2) {
			len = 15;
			sine = 1;
			spd = 8;
			move = 2
		};
	};
	if (a > 650 && (a % 12) = 0 && a <= 710){
		CrBoneIy(global.ix-20,50,bones.orange,2)
		CrBoneIh(global.iw+20,50,bones.orange,90,-2,0)
	}
	if (a = 710){
		scgb(320,0,320,global.iy-30,2.5,2,0,0,10,0,3,0,c_white,spr_dt_papyrus_gb);
	};
	if (a = 750){
		CrFlashDT();
		instance_destroy(enemy_dt);
		instance_destroy(obj_dt_light);
		i = 0;
		enemy.alpha = 0;
		enemy_dt_papyrus.old = 1;
		xtt = 0;
		xx = 0;
		xscale = 1;
		nowhp = CrGetHp();
		obj_system.starthp = 20;
		CrSetHp(20);
		global.LV = 1;
		obj_soul.image_angle = 180;
		name = CrGetName();
		global.Name = "sans"
		setboardbk(100, global.up, 100, 60, 10);
		instance_destroy(runBone);
		for(i = 0; i <= 10; ++i){
		colors[i] = choose(c_aqua,c_orange)
		mk[i] = crbonepap(20+(i)*60, 550, obj_bk.depth-999999, 6, 90, colors[i]);
		easing_execute(mk[i], "y", easing_class.cubic, easing_class.in, 520, 440-520, 20,i/2);
		ds_list_add(list, colors[i]); 
		// 等价于 list[|]
		};
	};
	if (a = 785){
		for(i = 0; i <= 10; ++i){
			var xxxx = choose(global.ix-30,global.iw+30);
			but[i] = crbonepap(xxxx+(xxxx = global.ix-30 ? -i : i)*80, 320, obj_bk.depth+1, 12, 90, colors[i],(xxxx = global.ix-30 ? 7.5 : -7.5));
		};
	};
	if (a = 845){
		var turn = choose(0,1);
		var iii = 0;
		if (turn = 0){
			mk=instance_create_depth(global.ix-30,global.ih,obj_bk.depth+1,obj_bone_dt);
			mk.hspeed = 6;
			repeat(5){
			iii++;
			mk1=crbonepap(global.iw+48.5+(iii-1)*10, global.iy - 40, obj_bk.depth + 100, 5, 90, c_white, -4);
		    mk2=crbonepap(global.iw+48.5+(iii-1)*10, global.ih + 40, obj_bk.depth + 100, 5, 90, c_white, -4);
		    with(mk1) {
				len = 15;
				sine = 1;
			    spd = 8+iii/2;
			    move = 2;
		    };
		    with(mk2) {
				len = 15;
				sine = 1;
				spd = 8+iii/2;
				move = 2;
			};
			};
		};
		else if (turn = 1){
			mk=instance_create_depth(global.iw+30,global.ih,obj_bk.depth+1,obj_bone_dt);
			mk.hspeed = -6;
			repeat(5){
			iii++;
			mk1=crbonepap(global.ix-48.5+(iii-1)*-10, global.iy - 40, obj_bk.depth + 100, 5, 90, c_white, 4);
		    mk2=crbonepap(global.ix-48.5+(iii-1)*-10, global.ih + 40, obj_bk.depth + 100, 5, 90, c_white, 4);
		    with(mk1) {
				len = 15;
				sine = 1;
			    spd = 8+iii/2;
			    move = -2;
		    };
		    with(mk2) {
				len = 15;
				sine = 1;
				spd = 8+iii/2;
				move = -2;
			};
			};
		};
	};
	if (a = 900){
		draw=instance_create_depth(320,global.iy-68,-99999,obj_bat);
		draw._enemy = 1;
	};
	if (a = 910){
		ds_list_destroy(list);
		CrScreenFlash(15);
		instance_destroy(obj_bat);
		instance_destroy(enemy_dt_papyrus);
		instance_destroy(obj_bone_pap);
		enemy.alpha = 1;
		CrSetHp(nowhp);
		global.Name = name
		obj_system.starthp = 99;
		global.LV = 20;
		obj_soul.image_angle = 0;
		enemy.x = 320;
		tred(_lang_text[$ "menu_text"][$ "trust"], turn21);
	};
};