xt = 0
//CrSetTurnNum(10);
//CrTalk("^1...","^2I promise you will die there",)
a = 0
b = 0
time = 0;
error = 0;
//instance_create_depth(display_get_dpi_x(),display_get_dpi_x(),depthBattle.Normal,butBuff);
//global.buffer="screen";
with(enemy) {
	alpha = 0;
}
audio_stop_all();

function HELP() {
	///@arg str
	return show_error(argument[0], true);
}
depth = obj_bk.depth - 1
obj_system.hp_STR = "@@"
alarm[0] = 30
CrFlash(c_black, 5)
//var flash=SetFader(0,0,0,c_black);

//easing_execute(flash,"alpha",easing_class.sine,easing_class.in,flash.alpha,+1,3);
//easing_execute(flash,"alpha",easing_class.sine,easing_class.in,flash.alpha,-1,3,3);

//room_speed=15;
//if(os_type==os_android)&&(global.players==1) then android_fps._fps=15;