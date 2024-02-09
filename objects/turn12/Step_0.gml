if (xt == 0) {
	a++;
	if (a == 1) {
		inst = instance_create_depth(320, 250, depthBattle.High, enemy_six);
	}
	if (a > 1 && a < 400 && (a % 95 == 0)) {
		inst.image_index++;
	}
	if (a = 20) {
		instance_create_depth(700, global.iy - 20, -9, but_IIIIII_head)
	}
	//if(a>30&&a mod 10 = 0 && a<400){
	//	scgb(320+lengthdir_x(400,a*4),320+lengthdir_y(400,a*4),320+lengthdir_x(150,a*4),320+lengthdir_y(150,a*4),1.5,1.5,point_direction(320+lengthdir_x(400,a*4),320+lengthdir_y(400,a*4),320,320),point_direction(320+lengthdir_x(150,a*4),320+lengthdir_y(150,a*4),320,320)+90,2,-9,6,0,c_white,spr_111111_gb)
	//}
	/*if (a>30&&a<400&&(a%10==0)){
		var xtt=random(640),ytt=random(480);
		var bone=CrBone(xtt,ytt,depthBattle.High,3,a,c_white);
		bone.speed=5;
	}
	if(a>30&&a mod 8 = 0 && a<400){
		scgb_six(320+lengthdir_x(400,a*4),320+lengthdir_y(400,a*4),320+lengthdir_x(150,a*4),320+lengthdir_y(150,a*4),1,1,point_direction(320+lengthdir_x(400,a*4),320+lengthdir_y(400,a*4),320,320),point_direction(320+lengthdir_x(150,a*4),320+lengthdir_y(150,a*4),320,320)+90,depthBattle.High,c_white)
	}*/
	if (a == 440) {
		//error=1;
	}
	if (error == 1) {
		ini_open("savedata.ini");
		ini_write_real("System", "phase", 2);
		ini_close();
		HELP("[YOU HAVE TO COME BACK.]");
		//easing_execute(enemy,"x",easing_class.linear,easing_class.in,enemy.x,400,10)
		//instance_create_depth(320,global.iy-6,obj_bk.depth-1,enemy_dust)
	}
	//if (a=10)
	//scgb_six(0,0,320.00,200.00,1,1,0,0,obj_bk.depth-100,c_white)
}