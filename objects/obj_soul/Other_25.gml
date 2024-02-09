if (global.inv == 0) {
	if (!instance_exists(obj_die)) {
		if (hpj == 0) {
			audio_play_sound(snd_ss, 0, 0)
			hpj = 20;
			global.hp -= 4;
		}
	}
}

