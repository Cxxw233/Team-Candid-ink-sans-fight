// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
///@arg x
///@arg y
///@arg hs
///@arg vs
///@arg ang
///@arg rot
///@arg Waittime
///@arg Dur
///@arg Col
///@arg *dist
///@arg *dist_MoveTime

function espe_spegb(sx, sy, hs, vs, ang, rot, pause, dur, col, dist = 60, dist_move_time = 40) {
	with (instance_create_depth(sx, sy, 0, oEspeGBSpeGb)) {
		hsp = hs;
		vsp = vs;
		image_angle = ang;
		rotate = rot;
		GoTime = pause;
		Firetime = dur;
		Colour = col;
		
		return id;
	}
}

function ScrCreateEspeSpeGB(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10){
	with (instance_create_depth(argument0, argument1, 0, oEspeGBSpeGb)){
		hsp = argument2;
		vsp = argument3;
		image_angle = argument4;
		rotate = argument5;
		GoTime = argument6;
		Firetime = argument7;
		Colour = argument8;
		if (argument9 == undefined){
			argument9 = 60;
		}
		if (argument10 == undefined){
			argument10 = 40;
		}
		Entrance = argument9;
		EntranceTimer = argument10;
		
		return id;
	}
}