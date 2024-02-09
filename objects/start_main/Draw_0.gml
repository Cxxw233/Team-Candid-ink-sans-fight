if (menu) {
	c = ( ( keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right) ) ? ( c ? 0 : 1 ) : c );

	draw_set_alpha(1)
	draw_set_colour(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_debug)
	/*draw_text_transformed(180, 180, "选择你的语言。", 2, 2, 0);
	draw_set_font(fntDTM)
	draw_text_transformed(180, 180, "Choose your language.", 2, 2, 0);*/
	//draw_text_transformed(320, 100, "选择你的语言 " + chr(10) + "Choose your language", 2, 2, 0);
	if(c == 0) {
		draw_set_colour(c_yellow)
	} else {
		draw_set_colour(c_white)
	}
	draw_set_font(fnt_menu);draw_text_transformed(220, 240, "English", 1, 1, 0)
	//draw_sprite_ext(spr_lau_flags, 0, 220, 300, 1/4, 1/4, 0, c_white, 1)
	if(c == 1) {
		draw_set_colour(c_yellow)
	} else {
		draw_set_colour(c_white)
	}
	draw_set_font(fnt_debug);draw_text_transformed(420, 240, "简体中文", 2, 2, 0)

	//draw_sprite_ext(spr_lau_flags, 1, 425/*offset: ~5*/, 300, 1/4, 1/4, 0, c_white, 1)
	//Settings
	if(c == 0) {
		if(keyboard_check_pressed(vk_enter)) {
			//global.lau=0
			//crsave("Data.ini","main","language","0")
			_lang = "eng";
			lang_save_quick_write("eng");
			CrTextReload();
			audio_play_sound(snd_AJ2,0,0);
			room_goto(Room_begin);
		}
	}

	if(c == 1) {
		if(keyboard_check_pressed(vk_enter)) {
			//global.lau=1
			//crsave("Data.ini","main","language","1")
			_lang = "chs";
			lang_save_quick_write("zh");
			CrTextReload();
			audio_play_sound(snd_AJ2,0,0);
			room_goto(Room_begin)
		}
	}


	if( keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right) ){
		audio_stop_sound(snd_AJ);audio_play_sound(snd_AJ,0,0);
	};
}