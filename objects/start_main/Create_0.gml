globalvar _define_fps; _define_fps = ( os_type == os_windows ? 30 : 29 );

keyboard_set_map(ord("Z"),vk_enter)
keyboard_set_map(ord("X"),vk_shift)

randomize();

global.hell=0

global.dye[1]=crread("savedata.ini","real","ALLDYE","DYE1")
global.dye[2]=crread("savedata.ini","real","ALLDYE","DYE2")
global.dye[3]=crread("savedata.ini","real","ALLDYE","DYE3")
global.dye[4]=crread("savedata.ini","real","ALLDYE","DYE4")
global.dye[5]=crread("savedata.ini","real","ALLDYE","DYE5")
global.dye[6]=crread("savedata.ini","real","ALLDYE","DYE6")
global.dye[7]=crread("savedata.ini","real","ALLDYE","DYE7")
global.dye[8]=crread("savedata.ini","real","ALLDYE","DYE8")

global.DyeCan=1

if(global.dye[1]!=0 && global.dye[2]!=0 && global.dye[3]!=0 && global.dye[4]!=0 && global.dye[5]!=0 && global.dye[6]!=0 && global.dye[7]!=0 && global.dye[8]!=0)
{
global.DyeCan=0
}

c=0
//_lang=(global.lau=1 ? "chs": "eng")

//event_user(0);


room_speed = _define_fps;
instance_create_depth(0,0,depthBattle.Fader,fader);
//SetFader(0,0,1);gamespeed_fps

//global.players=false;
global.green=make_color_rgb(43,230,29);
global.aqua=make_color_rgb(28,229,237);
global.purple=make_color_rgb(152,29,230);
global.pink=make_color_rgb(222,29,230);
global.red=make_color_rgb(255,0,0);
global.orange=make_color_rgb(237,131,28);
global.yellow=make_color_rgb(230,227,29);
ini_open("savedata.ini");
// global.phase=ini_write_real("System","phase",global.phase);
global.phase=ini_read_real("System","phase",1);
switch(release_mode){
	case false:
		ini_write_string("Version","Number","Dev");
break;
	default:
		ini_write_string("Version","Number",release_version);
break;
}
color=0;
colora=0;
//CrSetVersion(ini_read_string("Version","Number",""));

ini_close();
ini_open("savedata.ini");
for(var i=1;i<9;i++){
global.dye[i]=ini_read_real("System","dye"+string(i),5);
/*global.dye[2]=ini_read_real("System","dye2",5);
global.dye[3]=ini_read_real("System","dye3",5);
global.dye[4]=ini_read_real("System","dye4",5);
global.dye[5]=ini_read_real("System","dye5",5);
global.dye[6]=ini_read_real("System","dye6",5);
global.dye[7]=ini_read_real("System","dye7",5);
global.dye[8]=ini_read_real("System","dye8",5);
*/}ini_close();
/*if (file_exists("temp")){
	var f=file_bin_open("temp",0);
	file=file_bin_read_byte(f);
	file_bin_close(f);
}*/
/*if (global.phase==4){
	var i=0;
	repeat(7){
		i++;
		ini_write_real("System","dye",i);
	}
}*/
//audio_play_sound(snd_start,0,0)
global.blue=make_color_rgb(20,168,255)
ini_open("savedata.ini");
window_set_caption("Ink!Sans Fight " + ini_read_string("Version", "Number", release_version));
if(release_mode){
	if(os_type != os_windows){
		instance_create_depth(0,0,0,android_fps);
	}
}

if (!instance_exists(G_KEY)) {
	instance_create_depth(0, 0, 0, G_KEY);
}

function factorial(n) {
    if (n <= 1) then return 1;
    return n * factorial(n - 1);
}
menu = true;
