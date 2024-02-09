start = 0;
CrTalkStart(_lang_text[$ "enemy_text"][$ "sudden"][$ "talk_1"],
_lang_text[$ "enemy_text"][$ "sudden"][$ "talk_2"],
_lang_text[$ "enemy_text"][$ "sudden"][$ "talk_3"]);
time = 0;
cr_board_color(battle_color.sudden, 15);
CrBoardBk(64, 64, 64, 64, 15);

radius = 600;
bone = [];

spr_gb_sc = spr_gb;