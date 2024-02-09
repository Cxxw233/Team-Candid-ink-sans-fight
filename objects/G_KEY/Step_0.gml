//Anim_Step();
if (keyboard_check_pressed(vk_escape)) {
	game_end();
}
if (keyboard_check_pressed(vk_f4)) {
	if (window_get_fullscreen()) {
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
}

if(keyboard_check_pressed(vk_f2)) {
	game_restart();
}

if(os_type!=os_windows) {
	if(!release_mode){
		with(all) {
			instance_destroy();
		}
	}
}

