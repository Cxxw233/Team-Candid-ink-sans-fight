function CrSoul(){

}

function CrSetSoul(_type, _angle = "down", _jump = 2, _gmu = 0, obj = obj_soul) {
///@arg type
///@arg angle
/* 没什么diao用 先放着 */
	with (obj) {
		angle = _angle;
		xt = _type;
		gravity = 0;
		vspeed = 0;
		hspeed = 0;
		jump = _jump;
		gmu = _gmu;
	}
}

function CrSoulReset(obj = obj_soul) {
	with (obj) {
		angle = "down";
		xt = soul_type.red;
		gravity = 0;
		vspeed = 0;
		hspeed = 0;
		image_angle = 0;
		jump = 2;
		gmu = 0;
		a = 0;
		b = 1;
	}	
}
