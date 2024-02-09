if(char>chr(128)){
	fnt=fnt_debug;
	xs=2;
	ys=2;
	offset_y = 2;
	yy=0
}
draw_set_alpha(alpha)
draw_set_font(fnt)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_colour(color)
draw_text_ext_transformed(x + xi - xsep + offset_x,
	y + yy + yi + offset_y,
	string_hash_to_newline(char),
	offset_sep, offset_w,
	xs, ys, angle
);