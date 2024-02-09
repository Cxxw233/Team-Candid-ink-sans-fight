/// @description Insert description here
// You can write your code in this editor
//基本设置
depth = -1000;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
image_index = 3;
image_alpha = 0;

//不要乱改乱调用这个变量
DScale = array_create(3, 2);
GoTimer = 0;
FireTurn = false;
DsTurn = true;
ImageTime = 0;

audio_stop_sound(snd_gb_charge);
audio_play_sound(snd_gb_charge, 1, 0);

//GoX = 0;
//GoY = 0;
//MoveTime = 30;
//speed
hsp = 0;
vsp = 0;

rotate = 0;
//等待开火时间
GoTime = 0;
//开火时间(建议大于10帧
Firetime = 0;

//入场距离 默认60
Entrance = 60;
//入场时间 默认40帧
EntranceTimer = 40;

Colour = 0;

temp = 0;
run = 0;

rdis = 64;
//执行入场代码
alarm[0] = 1;