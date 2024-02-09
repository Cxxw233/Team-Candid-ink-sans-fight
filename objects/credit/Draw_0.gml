if (mouse_wheel_up()) || (keyboard_check(vk_up)) {
	with (camera) {
		repeat(100)	{
			y -= 0.2;
		}
	}
}

if (mouse_wheel_down()) || (keyboard_check(vk_down)) {
	with (camera) {
		repeat(100)	{
			y += 0.2;
		}
	}
}

draw_set_font(fntDTM); draw_set_alpha(1); draw_set_color(c_white);
draw_text(0, 2000, "saannnnsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
draw_sprite_ext(spr_bad_tom, 0, 320, 2200, 1, 1, -90, c_white, 1);
draw_text(0, -2000, "saannnnsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
draw_sprite_ext(spr_bad_tom, 0, 320, -2200, 1, 1, 90, c_white, 1);
var text = ( lang_load_quick() == "eng" ? "Please use the mouse wheel or press the arrow keys." : "请用鼠标滚轮或方向键。" );
draw_set_font(fnt_debug); draw_text(0, 0, string(text));
