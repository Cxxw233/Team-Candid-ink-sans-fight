time = 0;
xt = 0;
CrTalk(
_lang_text[$ "enemy_text"][$ "scientist"][$ "talk_1"],
_lang_text[$ "enemy_text"][$ "scientist"][$ "talk_2"],
_lang_text[$ "enemy_text"][$ "scientist"][$ "talk_3"],
_lang_text[$ "enemy_text"][$ "scientist"][$ "talk_4"]);
CrBoardBk(60, 60, 60, 70, 15);

enemy.keepY = false;

bone = [];

/*Part_T = part_type_create();
part_type_size(Part_T, 3, 3, 0, 0);
part_type_shape(Part_T, pt_shape_pixel);
part_type_life(Part_T, 120, 120);
part_type_color1(Part_T, c_gray);
part_type_alpha2(Part_T, 1, 0);
part_type_speed(Part_T, 6, 12, -1, 2);
part_type_direction(Part_T, 0, 360, 0, 3);
Part = part_system_create();
part_system_depth(Part, -100);*/
