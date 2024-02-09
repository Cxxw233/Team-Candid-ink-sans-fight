function CrFont(){
	#macro lang_font_path_base			string(working_directory)+"datafiles/font/"
	#macro lang_font_path_chs			lang_font_path_base+"chs.ttf"
	#macro lang_font_path_mnc			lang_font_path_base+"mnc.ttf"
	#macro lang_font_path_dtm_mono		lang_font_path_base+"dtm_mono.ttf"
	#macro lang_font_path_comicsans		lang_font_path_base+"comicsans.ttf"
	#macro lang_font_path_sanschs		lang_font_path_base+"sanschs.ttf"

	globalvar fnt_debug, fnt_hp, fnt_menu, fnt_sans_say, fntDTM, font_console;
	font_add_enable_aa(false);
	fnt_debug = font_add(lang_font_path_chs, 10, 1, 0, 32, 128);
	fnt_hp = font_add(lang_font_path_mnc, 18, 1, 0, 32, 128);
	fnt_menu = font_add(lang_font_path_dtm_mono, 20, 1, 0, 32, 128);
	fnt_sans_say[0] = font_add(lang_font_path_comicsans, 12, 1, 0, 32, 128);
	fnt_sans_say[1] = font_add(lang_font_path_sanschs, 12, 1, 0, 32, 128);
	fntDTM = font_add(lang_font_path_dtm_mono, 10, 1, 0, 32, 128);
	font_console = fnt_debug;
	
	show_debug_message("Script: CrFont execute.");
}

function CrUnfont(){
	if(fnt_debug && font_exists(fnt_debug)) then font_delete(fnt_debug);
	if(fnt_hp && font_exists(fnt_hp)) then font_delete(fnt_hp);
	if(fnt_menu && font_exists(fnt_menu)) then font_delete(fnt_menu);
	if (is_array(fnt_sans_say)) then if(fnt_sans_say[0] && font_exists(fnt_sans_say[0])) then font_delete(fnt_sans_say[0]);
	if (is_array(fnt_sans_say)) then if(fnt_sans_say[1] && font_exists(fnt_sans_say[1])) then font_delete(fnt_sans_say[1]);
	if(fntDTM && font_exists(fntDTM)) then font_delete(fntDTM);
	if(font_console && font_exists(font_console)) then font_delete(font_console);
	
	delete fnt_debug;
	delete font_console;
	delete fnt_hp;
	delete fnt_menu;
	delete fnt_sans_say;
	delete fntDTM;
	
	show_debug_message("Script: CrUnfont execute.");
};

function check_bin_byte_proj() {
	var a1 = file_bin_open(lang_font_path_base+"chs.ttf", 0);
	show_debug_message("chs="+string(file_bin_size(a1))); file_bin_close(a1);
	var a1 = file_bin_open(lang_font_path_base+"mnc.ttf", 0);
	show_debug_message("mnc="+string(file_bin_size(a1))); file_bin_close(a1);
	var a1 = file_bin_open(lang_font_path_base+"dtm_mono.ttf", 0);
	show_debug_message("dtm_mono="+string(file_bin_size(a1))); file_bin_close(a1);
	var a1 = file_bin_open(lang_font_path_base+"comicsans.ttf", 0);
	show_debug_message("comicsans="+string(file_bin_size(a1))); file_bin_close(a1);
	var a1 = file_bin_open(lang_font_path_base+"sanschs.ttf", 0);
	show_debug_message("sanschs="+string(file_bin_size(a1))); file_bin_close(a1);
}

function check_bin_byte_complete() {
	var file_chs = file_exists(lang_font_path_chs);
	var file_mnc = file_exists(lang_font_path_mnc);
	var file_dtm = file_exists(lang_font_path_dtm_mono);
	var file_comic = file_exists(lang_font_path_comicsans);
	var file_sans = file_exists(lang_font_path_sanschs);
	if (file_chs && file_mnc && file_dtm && file_comic && file_sans) {
		var chs = file_bin_byte_lambda(lang_font_path_chs, file_byte_chs);
		var mnc = file_bin_byte_lambda(lang_font_path_mnc, file_byte_mnc);
		var dtm = file_bin_byte_lambda(lang_font_path_dtm_mono, file_byte_dtm_mono);
		var comic = file_bin_byte_lambda(lang_font_path_comicsans, file_byte_comicsans);
		var sanschs = file_bin_byte_lambda(lang_font_path_sanschs, file_byte_sanschs);
		return ( chs && mnc && dtm && comic && sanschs ? true : false );
	} else {
		return false;	
	}
}
