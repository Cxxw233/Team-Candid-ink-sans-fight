///@desc 入场
if (time == 1) {
	easing_execute(id, "ypos1", easing_class.sine, easing_class.in, 0, +480, 25);
	easing_execute(id, "_ypos1", easing_class.sine, easing_class.in, 480, -480, 25);
}
if (time == 35) {
	easing_execute(id, "xpos1", easing_class.sine, easing_class.out, xpos1, -320, 25);
	easing_execute(id, "_xpos1", easing_class.sine, easing_class.out, _xpos1, +320, 25);
}
if (time == 660) {
	easing_execute(id, "xpos1", easing_class.sine, easing_class.out, xpos1, +320, 25);
	easing_execute(id, "_xpos1", easing_class.sine, easing_class.out, _xpos1, -320, 25);	
	easing_execute(id, "ypos", easing_class.sine, easing_class.out, ypos, +480, 25, 25);
	easing_execute(id, "_ypos", easing_class.sine, easing_class.out, _ypos, -480, 25, 25);
}
if (time > 1 && show) {
	var col = battle_color.epic;
	draw_rectangle_color(xpos, ypos, xpos1, ypos1, col, col, col, col, false);
	draw_rectangle_color(_xpos, _ypos, _xpos1, _ypos1, col, col, col, col, false);
}