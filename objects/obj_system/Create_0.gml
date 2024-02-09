CrItemInit();
p3_dye_set();
type_set();
if (!instance_exists(camera) && global.phase == 2) {
	instance_create_depth(0, 0, 0, camera);
}
global.cc = make_color_rgb(65, 11, 74);
CrOriginalName();
CrSetTre(1);
CrSetHp(99);
CrSetEnemyATK(16);
CrSetLv(20);
global.phase4 = 0;
global.MISS = 1;
global.color = 0;
if (os_type != os_windows) {
	if (!release_mode) {
		show_error("error.#xxxx0002", true);
	}
}
hp_X = 0;
hp_Y = 0;
time = 0;
starthp = global.hp;
global.inv = 0;
ex = 0;
points = "";
name_enemy = "* Ink!Sans";
talk = "";
cheak = "";
_text_reset = _lang_text.menu_text.reset;
_text_spare = _lang_text.menu_text.spare;
switch (global.phase) {
	case 1:
		global.turn = turn1;
		bgm = bgmink_1;
		talk = _lang_text.menu_text.stage_1;
		cheak = _lang_text.menu_text.stage_1_check;
		break;
	case 2:
		global.turn = turn13;
		bgm = bgmink_2;
		talk = _lang_text.menu_text.stage_2;
		cheak = _lang_text.menu_text.stage_2_check;
		break;
	case 3:
		global.turn = turn1;
		bgm = bgmink_3;
		talk = _lang_text.menu_text.stage_3;
		cheak = _lang_text.menu_text.stage_3_check;
		break;
}
anl = 0;
f = 0;
sea = 0;
a = 0;
i = 0;
m = 0;
alam = 0;
gg = 0;
cg = 1;
act = 0;
me = 0;
_enemy = 0;
hp_STR = "HP";
name_dye = _lang_text.menu_text.dyes_named;
cheakdye = _lang_text.menu_text.dyes_check;
instance_create_depth(38, 256, 0, talk1);
with (instance_create_depth(0, 0, -1, obj_soul)) {
	depth = -3;
}
instance_create_depth(320, 250, 0, enemy);
instance_create_depth(0, 0, 12, obj_bk);
event_user(0);
if ((global.phase != 4)) {
	audio_play_sound(bgm, 255, 1);
	audio_sound_pitch(bgm, 1);
	audio_sound_gain(bgm, 1, 0);
}
_insert = "{instant true}{color `white`}{voice -1}{scale 2}";
_dot = (_lang == "chs" ? "。" : ".");

function _draw_lang_quick(str, xx = 38 + 60, yy = 258 + 30, xx_offset = 32, yy_offset = 0, fnt_en = fnt_menu, fnt_zh = (_lang == "chs" ? fnt_debug : fnt_menu), scale_x = (_lang == "chs" ? 2 : 1), scale_y = (_lang == "chs" ? 2 : 1), _dot = (_lang == "chs" ? "" : "."), _dotd = "* ") {
	draw_set_font(fnt_en);
	draw_text_color(xx, yy, string(_dotd), c_white, c_white, c_white, c_white, 1);
	draw_set_font(fnt_zh);
	draw_text_transformed_color(xx + xx_offset, yy + yy_offset, string(str) + string(_dot), scale_x, scale_y, 0, c_white, c_white, c_white, c_white, 1);
}
easing_execute(fader, "alpha", 0, 0, 1, -1, 35);