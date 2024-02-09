//if(global.phase==4){
//audio_stop_sound(bgmink_1);
//}
if (global.phase == 5) {
	draw_set_font(fnt_menu);
	draw_set_halign(fa_left);
	draw_text_colour_outline(20, 20, "DevVersion", c_orange, c_blue, 1, c_orange, c_blue, 0.5, 3, 10, 1, 1, 0);
}
/*if (!instance_exists(turn12) && global.phase = 1) {
	if (keyboard_check_pressed(vk_tab)) {
		if audio_is_playing(bgmink_1) {
			audio_stop_all()
			audio_play_sound(bgmink_1old, 100, true)
		}
		else if audio_is_playing(bgmink_1old) {
			audio_stop_all()
			audio_play_sound(bgmink_1, 100, true)
		}
	}
};*/
//if(os_type=os_windows)
//{

//var (FNT_GET) = (_lang == "zh" ? fnt_debug : fnt_menu)
time += 1
if (time = 30) {
	time = 0
}
if (global.phase = 4) {
	if (global.dye[7] = -1) {
		shader_set(Sha_Dark)
	}
}
draw_sprite_ext(spr_fight, f, 32, 432, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_act, a, 185, 432, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_item, i, 345, 432, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_mercy, m, 500, 432, 1, 1, 0, c_white, 1)
if (global.phase = 4) {
	if (global.dye[7] = -1&&(!instance_exists(obj_surface_dark))) {
		shader_reset()
	}
}
if (global.tre = 1) && !instance_exists(obj_die) {
	if (sea = 0) {
		if (keyboard_check_pressed(vk_enter)) {
			if (anl != 2) {
				sea = 1
				with(talk1) {
					instance_destroy()
				}
			} else {
				if (temnum > 0) {
					sea = 1
					with(talk1) {
						instance_destroy()
					}
				}
			}
			audio_play_sound(snd_AJ2, 0, 0)

		}
		if (keyboard_check_pressed(vk_right)) {
			anl += 1
			audio_play_sound(snd_AJ, 0, 0)
		}
		if (keyboard_check_pressed(vk_left)) {
			anl -= 1
			audio_play_sound(snd_AJ, 0, 0)
		}
	}
	if (sea = 1) {
		if (alam < 2) {
			alam += 1
		}
		if (!instance_exists(obj_fight)) {
			if (keyboard_check_pressed(vk_shift) && anl != 1 && anl != 2) {
				_enemy = 0
				sea = 0
				alam = 0
				me = 0
				instance_create_depth(38, 256, 0, talk1)
				audio_play_sound(snd_AJ2, 0, 0)
			}
		}
		switch (anl) {
			case 0:
				if (global.tre = 1) && !instance_exists(obj_fight) {
					draw_set_font(fnt_menu)
					draw_set_halign(fa_left)
					draw_set_valign(fa_center)
					if (global.phase = 1 || global.phase = 2 || global.phase = 3 || global.phase = 5 || global.phase4 = 1)
						draw_text_colour(38 + 61, 258 + 30, string_hash_to_newline(string(name_enemy)), c_white, c_white, c_white, c_white, 1)
					if (global.phase = 4 && global.phase4 = 0) {
						draw_text_colour(38 + 61, 258 + 30, string_hash_to_newline(string(name_enemy)), c_white, c_white, c_white, c_white, 1)
						//draw_text_colour(38 + 61, 288 + 30, string_hash_to_newline(string(name_dye)), c_white, c_white, c_white, c_white, 1)
						_draw_lang_quick(string_hash_to_newline(string(name_dye)), 38 + 61, 288 + 30);
					}
				}
				if (!instance_exists(obj_fight) && (global.phase = 1 || global.phase = 2 || global.phase = 3 || global.phase = 5 || global.phase4 = 1)) {
					obj_soul.x = 38 + 35
					obj_soul.y = 258 + 28
				}
				if (global.phase = 4 && global.phase4 = 0) {
					if (keyboard_check_pressed(vk_up) && _enemy = 1) {
						audio_play_sound(snd_AJ2, 0, 0)
						_enemy -= 1
					}
					if (keyboard_check_pressed(vk_down) && _enemy = 0) {
						audio_play_sound(snd_AJ, 0, 0)
						_enemy += 1
					}
				}
				if (!instance_exists(obj_fight) && global.phase = 4 && _enemy = 0 && global.phase4 = 0) {
					global.color = 0
					obj_soul.x = 38 + 35
					obj_soul.y = 258 + 28
				}
				if (!instance_exists(obj_fight) && global.phase = 4 && _enemy = 1 && global.phase4 = 0) {
					global.color = 1
					obj_soul.x = 38 + 35
					obj_soul.y = 288 + 28
				}
				if (keyboard_check_pressed(vk_enter) && !instance_exists(obj_fight) && alam > 1) {
					audio_play_sound(snd_AJ2, 0, 0)
					instance_create_depth(320, 320, -1, obj_fight) obj_soul.x = -114514 obj_soul.y = -114514
				}
				break
			case 1:
				if (!instance_exists(talk1)) {
					obj_soul.x = 38 + 35
					obj_soul.y = 258 + 28
					cg += 1
					if (gg = 0) {
						draw_set_font(fnt_menu)
						draw_set_halign(fa_left)
						draw_set_valign(fa_center)
						if (global.phase = 1 || global.phase = 2 || global.phase = 3 || global.phase = 5 || global.phase4 = 1)
							draw_text_colour(38 + 61, 258 + 30, string_hash_to_newline(string(name_enemy)), c_white, c_white, c_white, c_white, 1)
						if (global.phase = 4 && global.phase4 = 0) {
							draw_text_colour(38 + 61, 258 + 30, string_hash_to_newline(string(name_enemy)), c_white, c_white, c_white, c_white, 1)
							//draw_text_colour(38 + 61, 288 + 30, string_hash_to_newline(string(name_dye)), c_white, c_white, c_white, c_white, 1)
							_draw_lang_quick(string_hash_to_newline(string(name_dye)), 38 + 61, 288 + 30);
						}
						if (global.phase = 4 && global.phase4 = 0) {
							if (keyboard_check_pressed(vk_up) && _enemy = 1) {
								audio_play_sound(snd_AJ2, 0, 0)
								_enemy -= 1
							}
							if (keyboard_check_pressed(vk_down) && _enemy = 0) {
								audio_play_sound(snd_AJ, 0, 0)
								_enemy += 1
							}
						}
						if (!instance_exists(obj_fight) && global.phase = 4 && _enemy = 0 && global.phase4 = 0) {
							obj_soul.x = 38 + 35
							obj_soul.y = 258 + 28
						}
						if (!instance_exists(obj_fight) && global.phase = 4 && _enemy = 1 && global.phase4 = 0) {
							obj_soul.x = 38 + 35
							obj_soul.y = 288 + 28
						}
					}
					if (gg = 1) {
						obj_soul.x = 38 + 35
						obj_soul.y = 258 + 28
						draw_set_font(fnt_menu)
						draw_set_halign(fa_left)
						draw_set_valign(fa_center)
						_draw_lang_quick(string_hash_to_newline(string(_lang_text.menu_text.check)), 38 + 61, 258 + 30);//_draw_lang_quick(string_hash_to_newline(string(_lang_text.menu_text.check)), 38 + 61, 258 + 30,,,,,,,,"");
						//draw_text_colour(38 + 61, 258 + 30, string_hash_to_newline(string("* Check")), c_white, c_white, c_white, c_white, 1)
					}
					if (gg = 0) {}
					if (cg > 2) {
						if (keyboard_check_pressed(vk_enter) && gg = 0 && cg > 1) {
							audio_play_sound(snd_AJ2, 0, 0)
							cg = 0
							gg = 1
						}
						if (keyboard_check_pressed(vk_shift) && gg = 0 && cg > 1) {
							audio_play_sound(snd_AJ2, 0, 0)
							instance_create_depth(38, 256, 0, talk1)
							cg = 0
							gg = 0
							sea = 0
							alam = 0
						}
					}
					if (keyboard_check_pressed(vk_enter) && gg = 1 && cg > 1) {
						if (!instance_exists(talk1)) {
							audio_play_sound(snd_AJ2, 0, 0)
							var (TKK) = instance_create_depth(38, 256, 0, talk1)
							if (_enemy = 0) {
								TKK.talk = cheak
							}
							if (_enemy = 1) {
								TKK.talk = cheakdye
							}
							TKK.gmm = 1
							obj_soul.x = -114514
							obj_soul.y = -114514
							gg = 0
						}
					}

					if (keyboard_check_pressed(vk_shift) && gg = 1 && cg > 1) {
						audio_play_sound(snd_AJ2, 0, 0)
						cg = 0
						gg = 0
					}
				}


				break

			case 2:
				if (!instance_exists(talk1)) {
					if (alam > 1) {
						if (keyboard_check_pressed(vk_up)) {
							act -= 1
							audio_play_sound(snd_AJ, 0, 0)
						}
						if (keyboard_check_pressed(vk_down)) {
							act += 1
							audio_play_sound(snd_AJ, 0, 0)
						}
					}
					if (act < 0) {
						act = temnum - 1
					}
					if (act > temnum - 1) {
						act = 0
					}
					obj_soul.x = 32 + 35
					obj_soul.y = 258 + 61
					draw_set_font(fnt_menu)
					draw_set_halign(fa_left)
					draw_set_valign(fa_center)
					if (act > 0) {
						draw_set_font(fnt_menu)
						draw_set_halign(fa_left)
						draw_set_valign(fa_center)
						//draw_text_color(38 + 60, 258 + 30, "* ");
						_draw_lang_quick(string(tem[act - 1]));
						//draw_text_colour(38 + 60, 258 + 30, string("* ") + string(tem[act - 1]), c_white, c_white, c_white, c_white, 1)
					}
					draw_set_font(fnt_menu)
					draw_set_halign(fa_left)
					draw_set_valign(fa_center)
					_draw_lang_quick(string(tem[act]), 38 + 60, 258 + 60);
					//draw_text_colour(38 + 60, 258 + 60, string("* ") + string(tem[act]), c_white, c_white, c_white, c_white, 1)
					draw_set_font(fnt_menu)
					draw_set_halign(fa_left)
					draw_set_valign(fa_center)
					if (act < temnum - 1) {
						draw_set_font(fnt_menu)
						draw_set_halign(fa_left)
						draw_set_valign(fa_center)
						_draw_lang_quick(string(tem[act + 1]), 38 + 60, 258 + 90);
						//draw_text_colour(38 + 60, 258 + 90, string("* ") + string(tem[act + 1]), c_white, c_white, c_white, c_white, 1)
					}
					if (alam > 1 && keyboard_check_pressed(vk_enter)) {
						audio_play_sound(snd_AJ2, 0, 0)
						/*if (global.kr=0)
						{/**/
						global.hp += tema[act]
						if (global.hp > 99) {
							audio_play_sound(snd_heal_max, 0, 0)
							global.hp = 99
							var (TKK) = instance_create_depth(38, 256, 0, talk1)
							TKK.talk = string(_lang_text.menu_text.item.based_item0) + string(tem[act]) + string(_dot) + string(_lang_text.menu_text.item.based_item3) //temt[act]
							TKK.gmm = 1
							obj_soul.x = -114514
							obj_soul.y = -114514
						} else {
							audio_play_sound(snd_heal, 0, 0)
							var (TKK) = instance_create_depth(38, 256, 0, talk1)
							TKK.talk = temt[act];
							TKK.gmm = 1
							obj_soul.x = -114514
							obj_soul.y = -114514
						}
						for (i = act; i < temnum; i += 1) {
							if (i < temnum - 1) {
								tem[i] = tem[i + 1]
								temt[i] = temt[i + 1]
								tema[i] = tema[i + 1]
							}
						}
						temnum -= 1
					}
				}

				if (keyboard_check_pressed(vk_shift) && !instance_exists(talk1)) {
					sea = 0
					alam = 0
					act = 0
					points = ""
					instance_create_depth(38, 256, 0, talk1)
				}
				if (alam = 1) {
					for (i = 0; i < temnum; i += 1) {
						points += "."
					}
				}
				if (!instance_exists(talk1)) {
					var proc = 0;
					var NUMBER = temnum;
					var CURRENT = act;
					var arrow_yofs = round((min(((time % 30) / 30), 0.5) * 6))
					repeat(NUMBER) {
						draw_sprite(spr_battle_menu_item_scrollbar_dot, proc == CURRENT, global.iw - 16, global.iy + ((global.ih - global.iy) / 2) - 10 * (NUMBER / 2) + 10 * proc + 6);
						proc += 1;
					}

					if (NUMBER > 3) {
						if (act != 0) {
							draw_sprite(spr_battle_menu_item_scrollbar_arrow, 0, global.iw - 16, global.iy + ((global.ih - global.iy) / 2) - 10 * (NUMBER / 2) - 10 + 6 - arrow_yofs);
						}
						if (act != temnum - 1) {
							draw_sprite_ext(spr_battle_menu_item_scrollbar_arrow, 1, global.iw - 16, global.iy + ((global.ih - global.iy) / 2) - 10 * (NUMBER / 2) + 10 * NUMBER + 6 + arrow_yofs, 1, 1, 0, c_white, 1);
						}
					}


				}

				break

			case 3:
				if (me = 0) {
					obj_soul.x = 32 + 35
					obj_soul.y = 258 + 28
				}
				if (me = 1) {
					obj_soul.x = 32 + 35
					obj_soul.y = 258 + 61
				}
				if (global.tre = 1) {
					if (keyboard_check_pressed(vk_down)) {
						me += 1
						audio_play_sound(snd_AJ, 0, 0)
					}
					if (keyboard_check_pressed(vk_up)) {
						me -= 1
						audio_play_sound(snd_AJ, 0, 0)
					}
					if (me < 0) {
						me = 1
					}
					if (me > 1) {
						me = 0
					}
					draw_set_alpha(1)
					draw_set_font(fnt_menu)
					draw_set_halign(fa_left)
					draw_set_valign(fa_center)
					_draw_lang_quick(string_hash_to_newline(string(_text_spare)), 32 + 61, 258 + 30);
					_draw_lang_quick(string_hash_to_newline(string(_text_reset)), 32 + 61, 258 + 60);
					/*if(!instance_exists(text_typer)){	
						with(instance_create_depth(32 + 61, 258 + 15, 0, text_typer)){
							draw_set_halign(fa_left)
							draw_set_valign(fa_center)
							lang_class = "tre1.bt3";
							text = string(other._insert) + string_hash_to_newline(string(other._text_spare)) + "&" + string_hash_to_newline(string(other._text_reset));
						}
					}*/
					//draw_text_colour(32 + 61, 258 + 30, string_hash_to_newline(string(_text_spare)), c_white, c_white, c_white, c_white, 1)
					//draw_text_colour(32 + 61, 258 + 60, string_hash_to_newline(string(_text_reset)), c_white, c_white, c_white, c_white, 1)
				}
				if (keyboard_check_pressed(vk_enter) && alam > 1 && me = 0) {
					audio_play_sound(snd_AJ2, 0, 0)
					global.tre = 0
					obj_soul.x = 320
					obj_soul.y = 320
					with(enemy) {
						event_user(15)
					}
				}
				if (keyboard_check_pressed(vk_enter) && alam > 1 && me = 1) {
					audio_play_sound(snd_AJ2, 0, 0)
					if (global.phase = 5) {
						shader_reset()
						surface_reset_target()
						
					}
					/*if(file_exists("temp"))
					{
					file_delete("temp")
					}*/
					if (file_exists("savedata.ini")) {
						file_delete("savedata.ini")
					}
					if (file_exists("dye.ini")) {
						file_delete("dye.ini")
					}
					if (file_exists("dye")) {
						file_delete("dye")
					}

					game_restart();
				}
				break
				/*{
				}/**/
		}
	}
	if (sea = 0) {
		if (anl > 3) {
			anl = 0
		}
		if (anl < 0) {
			anl = 3
		}
		switch anl {
			case 0: f = 1 i = 0 a = 0 m = 0 obj_soul.x = 48 obj_soul.y = 454
			break
			case 1: f = 0 i = 0 a = 1 m = 0 obj_soul.x = 202 obj_soul.y = 454
			break
			case 2: f = 0 i = 1 a = 0 m = 0 obj_soul.x = 362 obj_soul.y = 454
			break
			case 3: f = 0 i = 0 a = 0 m = 1 obj_soul.x = 516 obj_soul.y = 454
			break
		}
	} else {
		f = 0
		a = 0
		i = 0
		m = 0
	}
}
draw_set_font(fnt_menu)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_hp)
draw_text_colour(448 - 418 + hp_X, 384 + 16 + hp_Y, string_hash_to_newline(string(CrGetName()) + string("    LV ") + string(CrGetLv())), c_white, c_white, c_white, c_white, 1)
//draw_text_colour(448-320+hp_X,384+16+hp_Y,string_hash_to_newline(string("LV ")+string(CrGetLv())),c_white,c_white,c_white,c_white,1)
draw_text_sprite(228 + hp_X, 410 + hp_Y, hp_STR)
/*if (global.kr=0)
{/**/
draw_text_colour(388 + hp_X + ex, 384 + 16 + hp_Y, string_hash_to_newline(string(global.hp) + string(" / ") + string(starthp)), c_white, c_white, c_white, c_white, 1)
//draw_text_colour(448+32,384+16,string_hash_to_newline(string("/")),c_white,c_white,c_white,c_white,1)
//draw_text_colour(448+50,384+16,string_hash_to_newline(string(99)),c_white,c_white,c_white,c_white,1)
/*}
else
{
if (nowkr>kr)
{
draw_text_colour(448,384+16,string_hash_to_newline(string(nowkr)),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),1)
draw_text_colour(448+32,384+16,string_hash_to_newline(string("/")),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),1)
draw_text_colour(448+50,384+16,string_hash_to_newline(string(99)),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),make_colour_rgb(255,0,255),1)
}
else
{
draw_text_colour(448,384+16,string_hash_to_newline(string(nowkr)),c_white,c_white,c_white,c_white,1)
draw_text_colour(448+32,384+16,string_hash_to_newline(string("/")),c_white,c_white,c_white,c_white,1)
draw_text_colour(448+50,384+16,string_hash_to_newline(string(99)),c_white,c_white,c_white,c_white,1)
}
}/**/
/*if (global.kr=0)
{/**/
draw_set_alpha(1)
draw_set_color(c_red)
if (global.dye[6] != -1) {
	draw_set_color(c_red)
} else {
	if (global.phase = 4) {
		draw_set_color(c_gray)
	} else {
		draw_set_color(c_red)
	}
}
draw_rectangle(270 + hp_X, 400 + hp_Y, 270 + floor(starthp * 1.1) + hp_X, 400 + 20 + hp_Y, 0)
if (global.dye[8] != -1) {
	draw_set_color(c_yellow)
} else {
	if (global.phase = 4) {
		draw_set_color(c_ltgray)
	} else {
		draw_set_color(c_yellow)
	}
}
draw_rectangle(270 + hp_X, 400 + hp_Y, 270 + floor(global.hp * 1.1) + hp_X, 400 + 20 + hp_Y, 0)

//draw_sprite_pos(hp_pilex,0,270,400,270+floor(global.hp),400,270+floor(global.hp),400+20,270,400+20,1)//(global.hp/1.6),10,0,c_yellow,1)
/*}
else
{
kralam+=1
draw_set_color(c_red)
draw_rectangle(270,400,270+floor(starthp),400+20,0)
draw_set_color(make_colour_rgb(255,0,255))
draw_rectangle(270,400,270+floor(nowkr),400+20,0)
if (kr>0)
{
draw_set_color(c_yellow)
draw_rectangle(270,400,270+floor(kr),400+20,0)
}
if (nowkr>kr && (kralam mod krp) =0)
{
nowkr-=1
}
}/**/
//}/**/