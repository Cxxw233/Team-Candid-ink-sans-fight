if (release_mode){
	if (keyboard_check_pressed(ord("V"))){
		if (global.inv==0){
			global.inv++;
		}else{
			global.inv--;
		}
	}
	if (global.inv==1){
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_font(fnt_debug);
		draw_text_colour(200,10,string_hash_to_newline(+string("No HIT")),c_yellow,c_yellow,c_blue,c_red,1);
	}
}