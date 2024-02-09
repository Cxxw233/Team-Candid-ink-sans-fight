if ((global.phase > 5) || (!is_real(global.phase)) || global.phase <= 0){
	ini_open("savedata.ini");
	ini_write_real("System", "phase", 1);
	global.phase = 1;
	ini_close();
	game_restart();
}
