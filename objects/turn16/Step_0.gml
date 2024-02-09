if (xt) {
	time ++;	
	if (time == 1) {
		enemy.touxt = ink_face.espe;
		easing_execute(enemy, "x", easing_class.sine, easing_class.in, enemy.x, -140, 30);
		instance_create_depth(276, enemy.y - 60, enemy.depth, enemy_espe);
	}
	if (time == 30) {
		instance_create_depth(800,185,0,EspeRefrigerator);
	}
	if (time == 60) {
		with (instance_create_depth(random_range(120, 240), 640, 0, EspeStick)) {
			vspeed = -10;
			xt = 0;
			time1 = 10;
			time2 = 10;
		}
		with (instance_create_depth(random_range(420, 540), -160, 0, EspeStick)) {
			vspeed = 10;
			xt = 0;
			time1 = 10;
			time2 = 10;
		}
		with (instance_create_depth(-30, 200, 0, battle_espe_stick)) {
			direction = 30;
			speed = 20;
			speed_decrease = -20;
			time_decrease = 20;
			desLength = 380;
		}
		with (instance_create_depth(670, 200, 0, battle_espe_stick)) {
			direction = 150;
			speed = 20;
			speed_decrease = -20;
			time_decrease = 20;
			rotate = 20;
			rotate_start = 20;
			grot = -24;
			desLength = 380;
		}
	}
	if (time == 180) {
		var ll = 0;
		repeat (4) {
			scgb((320 + lengthdir_x(420, (ll + 45))), (320 + lengthdir_y(420, (ll + 45))), (320 + lengthdir_x(130, (ll + 45))),(320 + lengthdir_y(130, (ll + 45))), 2, 2, (ll + 90), (ll - 90), 15, 0,30, 0, c_white, spr_espe_gb);
			ll += 90;
		}
	}
	if (time == 240) {
	    var ll = 0;
		repeat (4) {
			scgb((320 + lengthdir_x(420, ll)), (320 + lengthdir_y(420, ll)), (320 + lengthdir_x(130, ll)), (320 + lengthdir_y(130, ll)), 2,2,(ll + 90), (ll - 90), 5, 0,20, 0, c_white, spr_espe_gb);
			ll += 90;
		}	
	}
	if (time == 300) {
		espe_spegb(320 - 100, 320 - 100, 0, 0, 45, 0, 15, 15, 0);
		espe_spegb(320 + 100, 320 - 100, 0, 0, -45, 0, 15, 15, 0);
		espe_spegb(320 - 100, 320 + 100, 0, 0, -45, 0, 15, 15, 0);
		espe_spegb(320 + 100, 320 + 100, 0, 0, 45, 0, 15, 15, 0);
	}
	if (time > 100 && time % 20 == 0 && time < 320) {
	    var SIGN = choose(1, -1);
	    but[0] = instance_create_depth(600, 170, 0, battle_espe_stick);
	    but[0].mode = 6;
	    but[0].image_angle = 90;
	    but[0].speedEnd = 12;
	    but[0].direction = 180;
	    but[0].image_xscale = (2 * SIGN);
	    but[0].speed = 0;
	    if (SIGN == 1)
	        but[0].pdir = 0;
	    else
	        but[0].pdir = 1;
	    but[1] = instance_create_depth(600, 430, 0, battle_espe_stick);
	    but[1].speed = 0;
	    but[1].mode = 6;
	    but[1].image_angle = 90;
	    but[1].image_xscale = (2 * SIGN);
	    but[1].speedEnd = 12;
	    but[1].direction = 180;
	    if (SIGN == 1)
	        but[1].pdir = 1;
	    else
	        but[1].pdir = 0;
	    but[0].inst_stick = but[1];
	    but[1].inst_stick = but[0];
	}
	if(time == 400) {
	    var SIGN = choose(1, -1)
	    var ANGLE = 45
	    but[0] = instance_create_depth((320 + lengthdir_x(160, ANGLE)), (320 + lengthdir_y(160, ANGLE)), 0, battle_espe_stick)
	    but[0].mode = 6
	    but[0].image_angle = (-ANGLE)
	    but[0].speedEnd = 0
	    but[0].direction = (-ANGLE)
	    but[0].image_xscale = (2 * SIGN)
	    but[0].speed = 0
	    but[0].lengthEnd = 640;
	    easing_execute(but[0], "x", 0, 12, (320 + lengthdir_x(160, ANGLE)), lengthdir_x((-110 + ((-1) * 5)), ANGLE), 8, 50)
	    easing_execute(but[0], "y", 0, 12, (320 + lengthdir_y(160, ANGLE)), lengthdir_y((-110 + ((-1) * 5)), ANGLE), 8, 50)
		with(but[0]) {
			ds = 1;
			easing_execute(id, "goRot", 0, 0, goRot, +6, 30, 180);
						alarm[0] = 500;
			//easing_execute(id, "x", 0, 12, lengthdir_x((-110 + ((-1) * 5)), ANGLE), lengthdir_x(1200, ANGLE), 8, 250);
			//easing_execute(id, "y", 0, 12, lengthdir_y((-110 + ((-1) * 5)), ANGLE), lengthdir_y(1200, ANGLE), 8, 250);
		}
	    easing_execute(but[0], "moveEffectable", 0, 12, 1, 0, 1, 50)
	    easing_execute(but[0], "moveEffectable", 0, 12, 0, 0, 1, 65)
	    ANGLE = 135
	    but[0] = instance_create_depth((320 + lengthdir_x(160, ANGLE)), (320 + lengthdir_y(160, ANGLE)), 0, battle_espe_stick)
	    but[0].mode = 6
	    but[0].image_angle = (-ANGLE)
	    but[0].speedEnd = 0
	    but[0].direction = (-ANGLE)
	    but[0].image_xscale = (-2 * SIGN)
	    but[0].speed = 0
	    but[0].lengthEnd = 640;
	    easing_execute(but[0], "x", 0, 12, (320 + lengthdir_x(160, ANGLE)), lengthdir_x((-110 + ((-1) * 5)), ANGLE), 8, 50)
	    easing_execute(but[0], "y", 0, 12, (320 + lengthdir_y(160, ANGLE)), lengthdir_y((-110 + ((-1) * 5)), ANGLE), 8, 50)
		with(but[0]) {
			ds = 2;
			easing_execute(id, "goRot", 0, 0, goRot, +6, 30, 180);
						alarm[0] = 500;
			//easing_execute(id, "x", 0, 12, lengthdir_x((-110 + ((-1) * 5)), ANGLE), lengthdir_x(1200, ANGLE), 8, 250);
			//easing_execute(id, "y", 0, 12, lengthdir_y((-110 + ((-1) * 5)), ANGLE), lengthdir_y(1200, ANGLE), 8, 250);
		}
	    easing_execute(but[0], "moveEffectable", 0, 12, 1, 0, 1, 50)
	    easing_execute(but[0], "moveEffectable", 0, 12, 0, 0, 1, 65)
	    ANGLE = 225
	    but[0] = instance_create_depth((320 + lengthdir_x(160, ANGLE)), (320 + lengthdir_y(160, ANGLE)), 0, battle_espe_stick)
	    but[0].mode = 6
	    but[0].image_angle = (-ANGLE)
	    but[0].speedEnd = 0
	    but[0].direction = (-ANGLE)
	    but[0].image_xscale = (2 * SIGN)
	    but[0].speed = 0
	    but[0].lengthEnd = 640;
	    easing_execute(but[0], "x", 0, 12, (320 + lengthdir_x(160, ANGLE)), lengthdir_x((-110 + ((-1) * 5)), ANGLE), 8, 50)
	    easing_execute(but[0], "y", 0, 12, (320 + lengthdir_y(160, ANGLE)), lengthdir_y((-110 + ((-1) * 5)), ANGLE), 8, 50)
		with(but[0]) {
			ds = 3;
			easing_execute(id, "goRot", 0, 0, goRot, +6, 30, 180);
						alarm[0] = 500;
			//A//nim(id, "x", 0, 12, lengthdir_x((-110 + ((-1) * 5)), ANGLE), lengthdir_x(1200, ANGLE), 8, 250);
			//easing_execute(id, "y", 0, 12, lengthdir_y((-110 + ((-1) * 5)), ANGLE), lengthdir_y(1200, ANGLE), 8, 250);
		}
	    easing_execute(but[0], "moveEffectable", 0, 12, 1, 0, 1, 50)
	    easing_execute(but[0], "moveEffectable", 0, 12, 0, 0, 1, 65)
	    ANGLE = 315
	    but[0] = instance_create_depth((320 + lengthdir_x(160, ANGLE)), (320 + lengthdir_y(160, ANGLE)), 0, battle_espe_stick)
	    but[0].mode = 6
	    but[0].image_angle = (-ANGLE)
	    but[0].speedEnd = 0
	    but[0].direction = (-ANGLE)
	    but[0].image_xscale = (-2 * SIGN)
	    but[0].speed = 0
	    but[0].lengthEnd = 640;
	    easing_execute(but[0], "x", 0, 12, (320 + lengthdir_x(160, ANGLE)), lengthdir_x((-110 + ((-1) * 5)), ANGLE), 8, 50)
	    easing_execute(but[0], "y", 0, 12, (320 + lengthdir_y(160, ANGLE)), lengthdir_y((-110 + ((-1) * 5)), ANGLE), 8, 50)
		with(but[0]) {
			ds = 4;
			easing_execute(id, "goRot", 0, 0, goRot, +6, 30, 180);
			alarm[0] = 500;
			//easing_execute(id, "x", 0, 12, lengthdir_x((-110 + ((-1) * 5)), ANGLE), lengthdir_x(1200, ANGLE), 8, 250);
			//easing_execute(id, "y", 0, 12, lengthdir_y((-110 + ((-1) * 5)), ANGLE), lengthdir_y(1200, ANGLE), 8, 250);
		}
		//easing_execute(but[0], "x", 0, 12, lengthdir_x((-110 + ((-1) * 5)), ANGLE), lengthdir_x(900, ANGLE), 8, 50)
		//easing_execute(but[0], "y", 0, 12, lengthdir_y((-110 + ((-1) * 5)), ANGLE), lengthdir_y(900, ANGLE), 8, 50)
	    easing_execute(but[0], "moveEffectable", 0, 12, 1, 0, 1, 50)
	    easing_execute(but[0], "moveEffectable", 0, 12, 0, 0, 1, 65)
		//show_message("0");
	}
	if (time == 620) {
		with (battle_espe_stick) {
			switch(ds) {
				case 2 :
					easing_execute(id, "x", easing_class.sine, easing_class.in, x, -1000, 35);
					easing_execute(id, "y", easing_class.sine, easing_class.in, y, -500, 35);
			break;
				case 1 :
					easing_execute(id, "x", easing_class.sine, easing_class.in, x, +1000, 35);
					easing_execute(id, "y", easing_class.sine, easing_class.in, y, -500, 35);
			break;
				case 3 :
					easing_execute(id, "x", easing_class.sine, easing_class.in, x, -1000, 35);
					easing_execute(id, "y", easing_class.sine, easing_class.in, y, +500, 35);
			break;
				case 4 :
					easing_execute(id, "x", easing_class.sine, easing_class.in, x, +1000, 35);
					easing_execute(id, "y", easing_class.sine, easing_class.in, y, +500, 35);
			break;
			}
		}
	}
	if (time == 450) {
		for (var i = 0, n = 0; i < battle_board.left + battle_board.right + 10; i += 10) {
			bone[n] = CreateBoneIy(global.ix + i, 140, 0, choose(bones.blue, bones.orange));
			with(bone[n]) {
				y -= 200;
			}
			n ++;
		}
		var _sff = array_shuffle(bone); bone = _sff;
		for (var p = 0, i = 0; i < array_length(bone); ++ i) {
			with(bone[i]) {
				easing_execute(id, "y", easing_class.back, easing_class.in, y, +600, 60, p);
			}
			p += 5;
		}
	}
	if(time>400&&time%12 == 0&&time<550) {
	    var DIR = irandom(3)
	    var SCALE = 2
	    var CHOICE = choose(1, -1)
	    var PAUSE = irandom_range(20 / 5,35 / 5)
	    switch DIR {
	        case 0:
	            scgb((320 + (50 * CHOICE)), -80, (320 + (50 * CHOICE)), 160, SCALE, SCALE,0, 0, PAUSE, 25, 25 / 5, 0, c_white, spr_espe_gb)
	            break
	        case 1:
	            scgb((320 + (50 * CHOICE)), 640, (320 + (50 * CHOICE)), 480, SCALE, SCALE,180, 180, PAUSE, 25, 25 / 5, 0, c_white, spr_espe_gb)
	            break
	        case 2:
	            scgb(-80, (320 + (50 * CHOICE)), 160, (320 + (50 * CHOICE)), SCALE, SCALE,90, 90, PAUSE, 25, 25 / 5, 0, c_white, spr_espe_gb)
	            break
	        case 3:
	            scgb(720, (320 + (50 * CHOICE)), 480, (320 + (50 * CHOICE)), SCALE, SCALE,-90, -90, PAUSE, 25, 25 / 5, 0, c_white, spr_espe_gb)
	            break
	    }
	}
	if (time=600){
		delete bone;
		CrBoardBk(120, 64, 120, 64, 13);
		espe_spegb(global.ix,global.iy,2,2,0,0,15,17,0);
		espe_spegb(global.iw,global.iy,-2,2,0,0,15,17,0);
		espe_spegb(global.ix,global.ih,2,-2,0,0,15,17,0);
		espe_spegb(global.iw,global.ih,-2,-2,0,0,15,17,0);
		
		var bk = 320, offfset = 100;
		var col = choose(2, 1);
		with(espe_spegb(bk - offfset, bk - offfset,0,0,45,0,25,90,col,60,40)) {
			easing_execute(id, "rotate", 0, 0, 0, +4, 15);
			//easing_execute(id, "rdis", 0, 0, rdis, +640, 45, 150);
			image_xscale = 1; image_yscale = 1; image_angle += 45;
			//easing_execute(id, "x", easing_class.sine, easing_class.in, x, -1000, 35, 60);
			//easing_execute(id, "y", easing_class.sine, easing_class.in, y, -500, 35, 60);
			temp = 1;
		}
		/*with(espe_spegb(bk + offfset, bk - offfset,0,0,45,0,25,90,choose(1, 2),60,40)) {
			easing_execute(id, "rotate", 0, 0, 0, +4, 15);
			//easing_execute(id, "rdis", 0, 0, rdis, +640, 45, 150);
			image_xscale = 1; image_yscale = 1; image_angle += 90;
			//easing_execute(id, "x", easing_class.sine, easing_class.in, x, +1000, 35, 60);
			//easing_execute(id, "y", easing_class.sine, easing_class.in, y, -500, 35, 60);
			temp = 1;
		}*/
		/*with(espe_spegb(bk - offfset, bk + offfset,0,0,45,0,25,90,choose(1, 2),60,40)) {
			easing_execute(id, "rotate", 0, 0, 0, +4, 15);
			//easing_execute(id, "rdis", 0, 0, rdis, +640, 45, 150);
			image_xscale = 1; image_yscale = 1; image_angle -= 45;
			//easing_execute(id, "x", easing_class.sine, easing_class.in, x, -1000, 35, 60);
			//easing_execute(id, "y", easing_class.sine, easing_class.in, y, +500, 35, 60);
			temp = 1;
		}*/
		with(espe_spegb(bk + offfset, bk + offfset,0,0,45,0,25,90,col,60,40)) {
			easing_execute(id, "rotate", 0, 0, 0, +4, 15);
			//nim(id, "rdis", 0, 0, rdis, +640, 45, 150);
			image_xscale = 1; image_yscale = 1; image_angle -= 90;
			//easing_execute(id, "x", easing_class.sine, easing_class.in, x, +1000, 35, 60);
			//easing_execute(id, "y", easing_class.sine, easing_class.in, y, +500, 35, 60);
			temp = 1;
		}
		for (var i = 0, n = 0; i < battle_board.left + battle_board.right + 10; i += 10) {
			bone[0, n] = CreateBoneIy(global.ix + i, 70, 0, choose(bones.blue, bones.orange));
			with(bone[0, n]) {
				y -= 200;
				state = 0;
			}
			n ++;
		}
		for (var i = 0, n = 0; i < battle_board.left + battle_board.right + 10; i += 10) {
			bone[1, n] = CreateBoneIh(global.ix + i, 70, 0, choose(bones.blue, bones.orange),,,0);
			with(bone[1, n]) {
				y += 200;
				state = 1;
			}
			n ++;
		}
		var _sff = array_shuffle(bone[1]); bone[1] = _sff;
		var _sff = array_shuffle(bone[0]); bone[0] = _sff;
		for (var ii = 0; ii < array_length(bone); ++ ii) {
			for (var p = 0, i = 0; i < array_length(bone[ii]); ++ i) {
				with(bone[ii, i]) {
					if (state == 0) {
						easing_execute(id, "y", easing_class.sine, easing_class.in, y, +600, 60, p);
					} else if (state == 1) {
						easing_execute(id, "y", easing_class.sine, easing_class.in, y, -600, 60, p);
					}
				}
				p += 10;
			}
		}
	//CrWallDown(25,10,300,bones.white);CrWallUp(25,10,300,bones.white);CrWallLeft(25,10,300,bones.white);CrWallRight(25,10,300,bones.white);
	}
	if (time == 740) {
		with(camera) {
			easing_execute(id, "x", easing_class.back, easing_class.in, x, 640, 15);
			easing_execute(id, "x", easing_class.back, easing_class.out, x - 640, 640, 15, 15);
		}
	}
	if (time == 755) {
		enemy.x = 320;
		instance_destroy(enemy_espe);
		instance_destroy(battle_espe_stick);
		instance_destroy(EspeRefrigerator);
		instance_destroy(oEspeGBSpeGb);
		instance_destroy(oEspeSpeGBATK);
		instance_destroy(EspeStick);
		instance_destroy(runBone);
	}
	if (time == 780) {

		tred(_lang_text[$ "menu_text"][$ "espe"], turn17);
	}
	//if ()
	
	/*if (time == 620) {
		repeat(3){
			but = instance_create_depth(choose(irandom_range(-50,-30),irandom_range(670,690)), 180+irandom_range(-10,10), 0, battle_espe_stick)
			but.direction = 56;
		}	
	}*/
	


/*if (time=640)
{
	ScrCreateEspeSpeGB(global.ix,global.iy,2,2,0,0,15,17,0)
	ScrCreateEspeSpeGB(global.iw,global.iy,-2,2,0,0,15,17,0)
	ScrCreateEspeSpeGB(global.ix,global.ih,2,-2,0,0,15,17,0)
	ScrCreateEspeSpeGB(global.iw,global.ih,-2,-2,0,0,15,17,0)
	//CrWallDown(25,10,300,bones.white);CrWallUp(25,10,300,bones.white);CrWallLeft(25,10,300,bones.white);CrWallRight(25,10,300,bones.white);
}
if (time=655)
{
	repeat(3){
    but = instance_create_depth(choose(irandom_range(-50,-30),irandom_range(670,690)), 180+irandom_range(-10,10), 0, battle_espe_stick)
    but.direction = 56
	}
}
if (time=715)
{
	var col = 0
	ScrCreateEspeSpeGB(320,320,0,0,45,3,25,180,col,60,40)
}
if(time>710&&time%30=0&&time<900&&instance_exists(obj_soul))
{
	var(xx)=choose(irandom_range(-50,-30),irandom_range(670,690))
	var(yy)=140+irandom_range(-10,10)
    but = instance_create_depth(xx,yy,0,battle_espe_stick)
    but.direction = point_direction(xx,yy,obj_soul.x,obj_soul.y)
    but.rotate = 10
    but.rotate_start = 10
    but.time_decrease = 16
}
if (time>800&&time%10=0&&instance_exists(oEspeSpeGBATK)&&instance_exists(oEspeGBSpeGb))
{
	col = choose(1,2)
	oEspeSpeGBATK.Colour=col
	oEspeGBSpeGb.Colour=col
}
if(time=910)
{
	CrBoard(Oix+120,Oiy,Oiw-120,Oih,5)
	obj_soul.xt=1
	so_set_angle("left")
	enemy_espe._body_sprite=spr_espe_shen_1;
}
if(time>920&&time%14=0)
{
	CrBone(640,320-60,obj_bk.depth+1,9,90,c_white,-5);
	CrBone(640,320+60,obj_bk.depth+1,9,90,c_white,-5);
	with(obj_bone){len=9;sine=1;spd=10;move=-2};
}
if(time>920&&time%32=0)
{
	ScrCreateEspeSpeGB(global.iw,global.iy,-4,0,0,2,15,50,choose(1,2),60,40)
	ScrCreateEspeSpeGB(global.iw,global.ih,-4,0,0,-2,15,50,choose(1,2),60,40)
}
if(time=1100)
{
	CrFlash(c_black,10)
	instance_destroy(runBone)
	instance_destroy(obj_bone)
	instance_destroy(oEspeSpeGBATK)
	instance_destroy(oEspeGBSpeGb)
	instance_destroy(enemy_espe)
	instance_destroy(EspeRefrigerator)
	easing_execute(enemy,"x",easing_class.sine,easing_class.in,enemy.x,140,1)
	with(obj_soul)
	{
	obj_soul.angle="down"
	xt=0
	vspeed=0  
	hspeed=0 
	gravity=0
	}
	tred("* ...",turn17)
}*/
}