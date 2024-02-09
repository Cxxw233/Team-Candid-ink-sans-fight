draw_set_alpha(1);
var col = (out ? c_aqua : battle_color.sudden)
draw_set_color(col);
if (!main[1]) {
	draw_line_angle(x, -300, x, 800, main[0], main[2]);
} else {
	if (!out) {
		for (var i = -1; i < 2; i ++) {
			if (collision_line_angle(x + i, -300, x + i, 800, main[2], obj_soul, true, false)) {
				CrHurt();
			}
		}
	}
}
