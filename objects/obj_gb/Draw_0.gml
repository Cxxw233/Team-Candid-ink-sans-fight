if (sprite_index == spr_pap_gb) {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
};
if (sprite_index == spr_copy_gb) {
	image_blend = make_color_rgb(182,186,185);
};
if (con == 1 && skip == false) {
	x += floor(((idealx - x) / 3))
	y += floor(((idealy - y) / 3))
	if (x < idealx)
		x += 1
	if (y < idealy)
		y += 1
	if (x > idealx)
		x -= 1
	if (y > idealy)
		y -= 1
	if (abs((x - idealx)) < 3)
		x = idealx
	if (abs((y - idealy)) < 3)
		y = idealy
	if (abs((x - idealx)) < 0.1 && abs((y - idealy)) < 0.1) {
		con = 2
		alarm[4] = 2
	}
}
if (con == 1 && skip == true) {
	x += floor(((idealx - x) / 3))
	y += floor(((idealy - y) / 3))
	if (x < idealx)
		x += 1
	if (y < idealy)
		y += 1
	if (x > idealx)
		x -= 1
	if (y > idealy)
		y -= 1
	if (abs((x - idealx)) < 3)
		x = idealx
	if (abs((y - idealy)) < 3)
		y = idealy
	image_angle += floor(((idealrot - image_angle) / 3))
	if (image_angle < idealrot)
		image_angle += 1
	if (image_angle > idealrot)
		image_angle -= 1
	if (abs((image_angle - idealrot)) < 3)
		image_angle = idealrot
	if (abs((x - idealx)) < 0.1 && abs((y - idealy)) < 0.1 && abs((idealrot - image_angle)) < 0.01) {
		con = 4
		alarm[4] = pause
	}
}
if (con == 3) {
	image_angle += floor(((idealrot - image_angle) / 3))
	if (image_angle < idealrot)
		image_angle += 1
	if (image_angle > idealrot)
		image_angle -= 1
	if (abs((image_angle - idealrot)) < 3)
		image_angle = idealrot
	if (abs((idealrot - image_angle)) < 0.01) {
		con = 4
		alarm[4] = pause
	}
}
if (con == 5) {
	con = 6
	alarm[4] = 4
}
if (con == 6)
	image_index += 1
if (con == 7) {
	if (image_index == 4)
		image_index = 5
	else if (image_index == 5)
		image_index = 4
	direction = (idealrot + 90)
	if (btimer == 0) {
		audio_play_sound(snd_gb_fire, 0, 0)
		if (image_xscale >= 1.7 && image_yscale >= 1.7) {
			if (sprite_index != newSprOuterGB) then {
				instance_create_depth(0, 0, 0, obj_shake);
			}
		}
	}
	btimer += 1
	if (btimer < 5) {
		speed += 1
		// image_angle+=1
		bt += floor(((35 * image_xscale) / 4))
	} else {
		speed += 4
	}
	if (btimer > (5 + terminal)) {
		bt *= 0.8
		fade -= 0.1
		draw_set_alpha(fade)
		if (bt <= 2)
			instance_destroy()
	}
	if (x < (-sprite_width * 2)) {
		speed = 0
	}
	if (x > (room_width + sprite_width * 2)) {
		speed = 0
	}
	if (y > (room_height + sprite_height * 2)) {
		speed = 0
	}
	if (y < (-sprite_height * 2)) {
		speed = 0
	}
	bbsiner += 1
	bb = ((sin((bbsiner / 1.5)) * bt) / 4)
	if (sprite_index != spr_ink_gb) {
		if (sprite_index = spr_reaper_gb) {
			xx = (lengthdir_x(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			yy = (lengthdir_y(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			rr = 0 //(random(2) - random(2))
			rr2 = 0 //(random(2) - random(2))
			xxx = lengthdir_x(2000, (image_angle - 90))
			yyy = lengthdir_y(2000, (image_angle - 90))
			if (sprite_index != spr_fell_gb) {
				draw_set_color(image_blend)
			} else {
				draw_set_color(c_red)
			}
			draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxx) + rr), ((y + yyy) + rr2), (bt + bb))
			xxa = (lengthdir_x(50 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			yya = (lengthdir_y(50 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			xxb = (lengthdir_x(60 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			yyb = (lengthdir_y(60 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxa) + rr), ((y + yya) + rr2), ((bt / 2) + bb))
			draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxb) + rr), ((y + yyb) + rr2), ((bt / 1.25) + bb))
			xxre = (lengthdir_x(80 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			yyre = (lengthdir_y(80 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			rr = 0
			rr2 = 0
			xxxre = lengthdir_x(2000, (image_angle - 90))
			yyyre = lengthdir_y(2000, (image_angle - 90))
			draw_set_color(c_black)
			draw_line_width(((x + xxre) + rr), ((y + yyre) + rr2), ((x + xxxre) + rr), ((y + yyyre) + rr2), (bt / 1.25 + bb))
			xxare = (lengthdir_x(60 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			yyare = (lengthdir_y(60 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			xxbre = (lengthdir_x(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			yybre = (lengthdir_y(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
			draw_line_width(((x + xxre) + rr), ((y + yyre) + rr2), ((x + xxare) + rr), ((y + yyare) + rr2), ((bt / 3.25) + bb))
			draw_line_width(((x + xxre) + rr), ((y + yyre) + rr2), ((x + xxbre) + rr), ((y + yybre) + rr2), ((bt / 2) + bb))
		} else {
			if (sprite_index != spr_fresh_gb) {

				xx = (lengthdir_x(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
				yy = (lengthdir_y(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
				rr = (random(2) - random(2))
				rr2 = (random(2) - random(2))
				xxx = lengthdir_x(2000, (image_angle - 90))
				yyy = lengthdir_y(2000, (image_angle - 90))
				if (sprite_index != spr_fell_gb0) {
					draw_set_color(image_blend)
				} else {
					draw_set_color(c_red)
				}
				draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxx) + rr), ((y + yyy) + rr2), (bt + bb))
				xxa = (lengthdir_x(50 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
				yya = (lengthdir_y(50 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
				xxb = (lengthdir_x(60 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
				yyb = (lengthdir_y(60 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
				draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxa) + rr), ((y + yya) + rr2), ((bt / 2) + bb))
				draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxb) + rr), ((y + yyb) + rr2), ((bt / 1.25) + bb))
			} else {
				xx = (lengthdir_x(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
				yy = (lengthdir_y(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
				rr = 0 //(random(2) - random(2))
				rr2 = 0 //(random(2) - random(2))
				xxx = lengthdir_x(1200, (image_angle - 90))
				yyy = lengthdir_y(1200, (image_angle - 90))

				xz = lengthdir_x((bt + bb) / 2.5, (image_angle))
				yz = lengthdir_y((bt + bb) / 2.5, (image_angle))
				// chu cheng huang lv qing lan zi
				draw_set_color(c_red)
				draw_line_width(x + xz, y + yz, ((x + xxx) + rr) + xz, ((y + yyy) + rr2) + yz, (bt + bb) / 7)
				draw_set_color(c_purple)
				draw_line_width(x - xz, y - yz, ((x + xxx) + rr) - xz, ((y + yyy) + rr2) - yz, (bt + bb) / 7)

				xz = lengthdir_x((bt + bb) / 3.5, (image_angle))
				yz = lengthdir_y((bt + bb) / 3.5, (image_angle))

				draw_set_color(c_orange)
				draw_line_width(x + xz, y + yz, ((x + xxx) + rr) + xz, ((y + yyy) + rr2) + yz, (bt + bb) / 7)
				draw_set_color(c_blue)
				draw_line_width(x - xz, y - yz, ((x + xxx) + rr) - xz, ((y + yyy) + rr2) - yz, (bt + bb) / 7)

				xz = lengthdir_x((bt + bb) / 7, (image_angle))
				yz = lengthdir_y((bt + bb) / 7, (image_angle))

				draw_set_color(c_yellow)
				draw_line_width(x + xz, y + yz, ((x + xxx) + rr) + xz, ((y + yyy) + rr2) + yz, (bt + bb) / 7)
				draw_set_color(c_aqua)
				draw_line_width(x - xz, y - yz, ((x + xxx) + rr) - xz, ((y + yyy) + rr2) - yz, (bt + bb) / 7)

				draw_set_color(c_green)
				draw_line_width(x, y, ((x + xxx) + rr), ((y + yyy) + rr2), (bt + bb) / 7)

			}
		}
	} else {
		xx = (lengthdir_x(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
		yy = (lengthdir_y(70 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
		rr = (random(2) - random(2))
		rr2 = (random(2) - random(2))
		xxx = lengthdir_x(1200, (image_angle - 90))
		yyy = lengthdir_y(1200, (image_angle - 90))

		xz = lengthdir_x((bt + bb) / 4, (image_angle))
		yz = lengthdir_y((bt + bb) / 4, (image_angle))

		draw_set_color(c_yellow)
		draw_line_width(((x + xx) + rr) + xz, ((y + yy) + rr2) + yz, ((x + xxx) + rr) + xz, ((y + yyy) + rr2) + yz, (bt + bb) / 2)
		draw_set_color(c_aqua)
		draw_line_width(((x + xx) + rr) - xz, ((y + yy) + rr2) - yz, ((x + xxx) + rr) - xz, ((y + yyy) + rr2) - yz, (bt + bb) / 2)

		xxa = (lengthdir_x(50 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
		yya = (lengthdir_y(50 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
		xxb = (lengthdir_x(60 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))
		yyb = (lengthdir_y(60 * (image_yscale * 0.8 / image_xscale), (image_angle - 90)) * (image_xscale / 2))

		xz = lengthdir_x(((bt / 2) + bb) / 4, (image_angle))
		yz = lengthdir_y(((bt / 2) + bb) / 4, (image_angle))

		draw_set_color(c_yellow)
		draw_line_width(((x + xx) + rr) + xz, ((y + yy) + rr2) + yz, ((x + xxa) + rr) + xz, ((y + yya) + rr2) + yz, ((bt / 2) + bb) / 2)
		draw_set_color(c_aqua)
		draw_line_width(((x + xx) + rr) - xz, ((y + yy) + rr2) - yz, ((x + xxa) + rr) - xz, ((y + yya) + rr2) - yz, ((bt / 2) + bb) / 2)

		xz = lengthdir_x(((bt / 1.4) + bb) / 4, (image_angle))
		yz = lengthdir_y(((bt / 1.4) + bb) / 4, (image_angle))

		draw_set_color(c_yellow)
		draw_line_width(((x + xx) + rr) + xz, ((y + yy) + rr2) + yz, ((x + xxb) + rr) + xz, ((y + yyb) + rr2) + yz, ((bt / 1.4) + bb) / 2)
		draw_set_color(c_aqua)
		draw_line_width(((x + xx) + rr) - xz, ((y + yy) + rr2) - yz, ((x + xxb) + rr) - xz, ((y + yyb) + rr2) - yz, ((bt / 1.4) + bb) / 2)
	}

	nx_factor = lengthdir_x(1, image_angle)
	ny_factor = lengthdir_y(1, image_angle)
	if (col_o == 1 && fade >= 0.8) {
		for (cl = 0; cl < 4; cl += 1) {
			if collision_line(((x + xx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) - (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * bt) / 2) * (cl / 4))), obj_soul_espe, true, true) {
				switch (image_blend) {
					case c_white:
						with(obj_soul_espe) {
							event_user(10)
						}
						break
					case c_aqua:
						with(obj_soul_espe) {
							event_user(11)
						}
						break
					case global.blue:
						with(obj_soul_espe) {
							event_user(11)
						}
						break
					case c_orange:
						with(obj_soul_espe) {
							event_user(12)
						}
						break
					default :
						CrHurt();
						break;
				}
			}
		}
		for (cl = 0; cl < 4; cl += 1) {
			if collision_line(((x + xx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) + (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) + (((ny_factor * bt) / 2) * (cl / 4))), obj_soul_espe, true, true) {
				switch (image_blend) {
					case c_white:
						with(obj_soul_espe) {
							event_user(10)
						}
						break
					case c_aqua:
						with(obj_soul_espe) {
							event_user(11)
						}
						break
					case global.blue:
						with(obj_soul_espe) {
							event_user(11)
						}
						break
					case c_orange:
						with(obj_soul_espe) {
							event_user(12)
						}
						break
					default :
						CrHurt();
						break;
				}
			}
		}
		for (cl = 0; cl < 4; cl += 1) {
			if collision_line(((x + xx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) - (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * bt) / 2) * (cl / 4))), obj_soul, true, true) {
				if (sprite_index = spr_reaper_gb) {
					switch (image_blend) {
						case c_white:
							with(obj_soul) {
								event_user(13)
							}
							break
						case global.blue:
							with(obj_soul) {
								event_user(14)
							}
							break
						default :
							CrHurt();
							break;
					};
				} else {
					switch (image_blend) {
						case c_white:
							with(obj_soul) {
								event_user(10)
							}
							break
						case c_aqua:
							with(obj_soul) {
								event_user(11)
							}
							break
						case global.blue:
							with(obj_soul) {
								event_user(11)
							}
							break
						case c_orange:
							with(obj_soul) {
								event_user(12)
							}
							break
					default :
							CrHurt();
							break;
					}
				}
			}
		}
		for (cl = 0; cl < 4; cl += 1) {
			if collision_line(((x + xx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) + (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) + (((ny_factor * bt) / 2) * (cl / 4))), obj_soul, true, true) {
				if (sprite_index = spr_reaper_gb) {
					switch (image_blend) {
						case c_white:
							with(obj_soul) {
								event_user(13)
							}
							break
						case global.blue:
							with(obj_soul) {
								event_user(14)
							}
							break
					}
				} else {
					switch (image_blend) {
						case c_white:
							with(obj_soul) {
								event_user(10)
							}
							break
						case c_aqua:
							with(obj_soul) {
								event_user(11)
							}
							break
						case global.blue:
							with(obj_soul) {
								event_user(11)
							}
							break
						case c_orange:
							with(obj_soul) {
								event_user(12)
							}
							break
					default :
							CrHurt();
						break;
					}
				}
			}
		}
		for (cl = 0; cl < 4; cl += 1) {
			if collision_line(((x + xx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) - (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * bt) / 2) * (cl / 4))), obj_soul_C, true, true) {
				switch (image_blend) {
					case c_white:
						with(obj_soul_C) {
							event_user(10)
						}
						break
					case c_aqua:
						with(obj_soul_C) {
							event_user(11)
						}
						break
					case global.blue:
						with(obj_soul_C) {
							event_user(11)
						}
						break
					case c_orange:
						with(obj_soul_C) {
							event_user(12)
						}
						break
					default :
							CrHurt();
							break;
				}
			}
		}
		for (cl = 0; cl < 4; cl += 1) {
			if collision_line(((x + xx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) + (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) + (((ny_factor * bt) / 2) * (cl / 4))), obj_soul_C, true, true) {
				switch (image_blend) {
					case c_white:
						with(obj_soul_C) {
							event_user(10)
						}
						break
					case c_aqua:
						with(obj_soul_C) {
							event_user(11)
						}
						break
					case global.blue:
						with(obj_soul_C) {
							event_user(11)
						}
						break
					case c_orange:
						with(obj_soul_C) {
							event_user(12)
						}
						break
					default :
							CrHurt();
							break;
				}
			}
		}
	}
	if (col_o == 0)
		col_o = 1
	draw_set_alpha(1)
}

if (sprite_index != spr_pap_gb) {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
};

if (sprite_index == spr_cross_gb) {
	crossV += 1
	if (crossV mod 5) = 0 {
		crossN += 1
	}
	draw_sprite_ext(spr_cross_gb_eff, crossN, x, y, image_xscale, image_yscale, image_angle, image_blend, 1)
}