a+=0.5
xx=0 + sin(a / 4) * 5
xx1=0 + sin(a / 4) * 5
yy= 0 + sin(a / 2) * 6
yy1=0 + sin(a / 2) * 6
draw_sprite_ext(spr_dt_body, 0, x + 4 + sin(a / 4) * 6, y - 32 + sin(a / 2) * 4, 1, 1, 0, c_white, alpha)
draw_sprite_ext(spr_dt_head, touxt, x + 1 + sin(a / 4) * 6, y - 32 + sin(a / 2) * 4 - 48 + sin(a / 2) * 2, 1, 1, 0 + tan(a / 0.001) * 0, c_white, alpha)
draw_sprite_ext(spr_dt_left_arm, 0, x + 4 + sin(a / 4) * 6 - 42, y - 58 + sin(a / 2) * 4, 1, 1, 0 + sin(a / 2) * 3, c_white, alpha)
draw_sprite_ext(spr_dt_right_arm, 0, x + 44 + sin(a / 4) * 6, y - 58 + sin(a / 2) * 4, 1, 1, 1 + sin(a / 2) * 0.06, c_white, alpha)
draw_sprite_pos(spr_dt_left_leg, 0, x+xx-(sprite_get_xoffset(spr_dt_left_leg)*2),y+yy-(sprite_get_yoffset(spr_dt_left_leg)*2),x+xx+(sprite_get_width(spr_dt_left_leg)*2-sprite_get_xoffset(spr_dt_left_leg)*2),y+yy-(sprite_get_yoffset(spr_dt_left_leg)*2),x+(sprite_get_width(spr_dt_left_leg)*2-sprite_get_xoffset(spr_dt_left_leg)*2),y+(sprite_get_yoffset(spr_dt_left_leg)*2-sprite_get_yoffset(spr_dt_left_leg)*2),x-sprite_get_xoffset(spr_dt_left_leg)*2,y+(sprite_get_yoffset(spr_dt_left_leg)*2-sprite_get_yoffset(spr_dt_left_leg)*2),alpha)
draw_sprite_pos(spr_dt_right_leg, 0, x+xx1-(sprite_get_xoffset(spr_dt_right_leg)),y+yy1-(sprite_get_yoffset(spr_dt_right_leg)),x+xx1+(sprite_get_width(spr_dt_right_leg)-sprite_get_xoffset(spr_dt_right_leg)),y+yy1-(sprite_get_yoffset(spr_dt_right_leg)),x+(sprite_get_width(spr_dt_right_leg)-sprite_get_xoffset(spr_dt_right_leg)),y+(sprite_get_yoffset(spr_dt_right_leg)-sprite_get_yoffset(spr_dt_right_leg)),x-sprite_get_xoffset(spr_dt_right_leg),y+(sprite_get_yoffset(spr_dt_right_leg)-sprite_get_yoffset(spr_dt_right_leg)),alpha)
if (ys = 0) then y = global.iy - 6;

gt++;
if (gt mod 10 = 0) {
	gx += 1
}
if (gt mod 30 = 0) {
	xxx = random_range(65, -65)
	yyy = random_range(40, 130)
	xxx1 = random_range(65, -65)
	yyy1 = random_range(40, 130)
}
draw_sprite_ext(spr_sanss_glitch, gx, x + xxx, y - yyy, 2, 2, 0, make_color_rgb(0, 255, 0), alpha)
draw_sprite_ext(spr_sanss_glitch, gx - 4, x + xxx1, y - yyy1, 2, 2, 0, make_color_rgb(128, 0, 192), alpha)