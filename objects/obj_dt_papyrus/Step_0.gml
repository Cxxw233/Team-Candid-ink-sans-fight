a++
if (image_xscale = 1 && image_alpha = 1){
	if (a = 50){
		CrScreenFlash(15);
		with(obj_dt_light){
			l1=0;
			l2=0;
			l3=0;
			l4=0;
		};
		enemy_dt.touxt=2;
		audio_play_sound(mus_create,1005,0);
		instance_create_depth(320,global.iy-6,obj_bk.depth-2,enemy_dt_papyrus);
		instance_destroy(battle_move_wall);
		instance_destroy();
	};
};

