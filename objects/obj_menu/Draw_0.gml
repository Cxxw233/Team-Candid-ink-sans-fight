draw_set_color(c_white)
draw_set_font( _lang == "chs" ? fnt_debug : fnt_menu );
if (set == 0) {
	if (!part_system_exists(part_warp_line)) {
		part_system_create(part_warp_line);
	}
} else if (set == 1) {
	if (part_system_exists(part_warp_line)) {
		part_system_destroy(part_warp_line);
	}
}
if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right)||keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_down)){
	if(!set){
		_play_sfx();
	};
};
if(keyboard_check_pressed(ord("Z"))||keyboard_check_pressed(vk_enter)){
	if(!set){
		_play_sfx(snd_AJ2);
	};
};

if(set == 0) {
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_left);
	draw_text(140, 120, global.Name);
	draw_text(320, 120, "LV 20");
	//var date_second=date_get_second(date_current_datetime());
	//show_debug_message("main pass warning here: {0}",string_replace(string_replace(date_second,2,0)," ","0"));
	//draw_text(500, 120, string(date_get_hour(date_current_datetime())) + string(":") + string(date_get_minute(date_current_datetime())) + string(":") + string(/*( date_second>=10 ? date_second : string_replace(string_replace(date_second,2,0)," ","0") )*/date_get_second(date_current_datetime())));
	var str; if (file_exists("savedata.ini")) { ini_open("savedata.ini") var load = ini_read_real("System", "phase", 1); str = ( ( load == 4 ? 3 : ( load == 5 ? 4 : load ) ) ); ini_close(); } else { str = "1"; }
	draw_text(500, 120, "Phase " + string(str));
	draw_set_font( _lang == "chs" ? fnt_debug : fnt_menu );
	draw_set_halign(fa_left)
	var value=( _lang == "chs" ),str=( value ? "终焉" : "Demise" ),val=( value ? 2 : 1 );
	draw_text_transformed(100, 160, str, val, val, 0);

	if selected3 = 0 draw_set_color(c_yellow)
	draw_set_halign(fa_left)
	var value=( _lang == "chs" ),str=( value ? "继续" : "Continue" ),val=( value ? 2 : 1 );
	draw_text_transformed(150, 210, str, val, val, 0);
	draw_set_color(c_white)
	if selected3 = 1 draw_set_color(c_yellow)
	draw_set_halign(fa_right)
	var value=( _lang == "chs" ),str=( value ? "设置" : "Settings" ),val=( value ? 2 : 1 );
	draw_text_transformed(490, 210, str, val, val, 0);

	draw_set_halign(fa_center)
	draw_set_color(c_gray)
	draw_set_font(fntCot)
	draw_text_transformed(320, 462, "UnderTale (C) Toby Fox 2015-2019"/*+string(current_year)*/,2,2,0); //+chr(10)+"UnderTale (C) Toby Fox 2015-2018"    "Ink!Sans Fight by Team Candid"

	if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left) {
		if selected3 = 0 selected3 = 1
		else selected3 = 0
		keyboard_clear(vk_left)
		keyboard_clear(vk_right)
	}
	if keyboard_check_pressed(vk_enter) {
		if selected3 = 0 {
			if (part_system_exists(part_warp_line)) {
				part_system_destroy(part_warp_line);
			}
			room_goto(Room_OV)
		}
		if selected3 = 1 {
			set = 1
			next = 1
		}
	}
} else {
	draw_set_halign(fa_center)
	var value=( _lang == "chs" ),str=( value ? "设置" : "SETTINGS" ),val=( value ? 4 : 2 );
	draw_text_transformed(320, 30, str, val, val, 0);
	//draw_sprite_ext(BG_start,0,520,360,2,2,0,c_white,1)

	if selected = 0 draw_set_color(c_yellow)
	draw_set_halign(fa_left)
	var value=( _lang == "chs" ),str=( value ? "返回" : "Back" ),val=( value ? 2 : 1 );
	draw_text_transformed(50, 90, str, val, val, 0);
	draw_set_color(c_white)
	if selected = 1 draw_set_color(c_yellow)
	var value=( _lang == "chs" ),str=( value ? "语言:简体中文" : "Language:English" ),val=( value ? 2 : 1 );
	draw_text_transformed(50, 140, str, val, val, 0);
	
	if(next = 2) {

		if(set = 1) {
			if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down) {
				_play_sfx();
				if selected = 0 {
					selected = 1
					
				} else {
					selected = 0
				}
				keyboard_clear(vk_up)
				keyboard_clear(vk_down)
			}

			if(selected = 0) {
				if(keyboard_check_pressed(vk_enter)) {
					if(audio_is_playing(snd_start)) then audio_stop_sound(snd_start);
					audio_play_sound(snd_start,0,0);
					set = 0
					selected = 0
					next = 0
					xx = 0
				}
			}



			if(selected = 1) {
				
				if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
					_play_sfx();
					if(_lang == "eng") {
						//global.lau=1
						_lang = "chs"
						//crsave("Name.ini","main","language",global.lau)
						lang_save_quick_write("zh");
						CrTextReload();
					} else {
						if(_lang == "chs") {
							//global.lau=0
							_lang = "eng"
							//crsave("Name.ini","main","language",global.lau)
							lang_save_quick_write("eng");
							CrTextReload();
						}
					}
				}

			}
		}

	}

}

if(next = 1) {
	easing_execute(id, "xx", 0, 0, 0, 400, 30)
	next = 3
}
if(next = 3) {
	easing_execute(id, "next", 0, 0, next, -1, 28)
}
if(next = 1 || next > 2) {
	draw_set_alpha(1)
	draw_set_color(c_black)
	draw_rectangle(320 + xx, 0, 640, 480, 0)
	draw_rectangle(0, 0, 320 - xx, 480, 0)
}
if (set == 1) {
	if (!instance_exists(httpTo)) {
		with(instance_create_depth(120,220,0,httpTo)) { 
			sprite_index=bilibili158158;
			image_blend=c_aqua;
			http="http://space.bilibili.com/1650221524";
		}
		with(instance_create_depth(340,225,0,httpTo)) {
			sprite_index=gamejolt;
			image_blend=c_white;
			http="http://gamejolt.com/games/tcisf/763755";
		}	
	}
} else if (instance_exists(httpTo)) {
	instance_destroy(httpTo);	
}


/*surface_set_target(background_surface);
draw_clear(c_black);
surface_reset_target();

surface_set_target(surface);

surface_reset_target();

gpu_set_blendmode_ext(bm_add, bm_zero);

gpu_set_blendmode(bm_normal);*/


/*draw_clear(c_white); // Replace white with the color of your gradient or solid background

surface_set_target(background_surface);
draw_clear(c_black); // Replace black with the color of your choice
surface_reset_target();

gpu_set_blendmode_ext(bm_one, bm_one);

draw_rectangle(x, y, 1, 1, false);
var lightWidth = 0.01;
var lightIntensity = 2.0;
var lightPos = [0.5, 0.5];

surface_set_target(background_surface);
draw_surface(background_surface, 0, 0);
gpu_set_blendmode(bm_add);
draw_set_colour(c_white);
draw_set_alpha(1);

var st = [0, 0];
var toLight = [0, 0];
var light = 0;
var shadow = 0;

for (var _x = 0; _x < room_width; _x++) {
	for (var _y = 0; _y < room_height; _y++) {
	    st[0] = _x / room_width;
	    st[1] = _y / room_height;

	    toLight[0] = lightPos[0] - st[0];
	    toLight[1] = lightPos[1] - st[1];
	    light = dot_method([0, 1], toLight);
	    light = max(light, 0);
	    light = power(light, lightIntensity);

	    shadow = smoothstep_method(lightPos[0] - lightWidth, lightPos[0], st[0]);
	    shadow *= smoothstep_method(lightPos[1] - lightWidth, lightPos[1], st[1]);
	    shadow *= smoothstep_method(1, lightPos[0] + lightWidth, st[0]);
	    shadow *= smoothstep_method(1, lightPos[1] + lightWidth, st[1]);

	    draw_rectangle(x, y, 1, 1, false);
	    draw_set_alpha(light * shadow);
	}
}

draw_set_alpha(1);
gpu_set_blendmode(bm_normal);
surface_reset_target();
draw_set_alpha(light * shadow);

draw_surface(background_surface, 0, 0);

gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_alpha);*/
