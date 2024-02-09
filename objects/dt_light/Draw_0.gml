if (xt = 1) {
	with(enemy_dt_papyrus) {
		k_image = 0;
	}
	draw_self()
	if (image_blend = c_lime) {
		if instance_exists(obj_soul) {
			image_angle = (point_direction(x, y, obj_soul.x, obj_soul.y) + 90)
		}
	}
}
if (xt = 2) {
	btimer += 1
	if (btimer < 5) {
		bt += floor(((35 * image_xscale) / 4))
	}
	if (btimer = 5)
	
		with(enemy_dt_papyrus) {
			k_image = 2;
		}
	if (btimer > terminal) {
		des = 1
		with(enemy_dt_papyrus) {
			_spr_dt_slam = spr_dt_right_arm;
		}
		switch (image_blend) {
			case purple:
				with(enemy_dt_papyrus) {
					k_image = 0
				}
				break
			case c_lime:
				with(enemy_dt_papyrus) {
					k_image = 3
				}
				break
			case c_yellow:
				with(enemy_dt_papyrus) {
					k_image = 4
				}
				break
			case c_red:
				with(enemy_dt_papyrus) {
					k_image = 5
				}
				break
			case global.blue:
				with(enemy_dt_papyrus) {
					k_image = 1
				}
				break
			case c_orange:
				with(enemy_dt_papyrus) {
					k_image = 2
				}
				break
		}
		bt *= 0.8
		fade -= 0.1
		draw_set_alpha(fade)
		if (bt <= 2)
			instance_destroy()
	}
	bbsiner += 1
	bb = ((sin((bbsiner / 1.5)) * bt) / 4)
	xx = (lengthdir_x(70, (image_angle - 90)) * (image_xscale / 2))
	yy = (lengthdir_y(70, (image_angle - 90)) * (image_xscale / 2))
	rr = 0 //(random(2) - random(2))
	rr2 = 0 //(random(2) - random(2))
	xxx = lengthdir_x(12000, (image_angle - 90))
	yyy = lengthdir_y(12000, (image_angle - 90))
	draw_set_color(image_blend)
	draw_line_width(((x - xxx) + rr), ((y - yyy) + rr2), ((x + xxx) + rr), ((y + yyy) + rr2), (bt + bb))
	nx_factor = lengthdir_x(1, image_angle)
	ny_factor = lengthdir_y(1, image_angle)
	if (col_o == 1 && fade >= 0.8) {
		for (cl = 0; cl < 4; cl += 1) {
			if collision_line(((x - xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y - yyy) - (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * bt) / 2) * (cl / 4))), obj_soul, false, true) {
				switch (image_blend) {
					case purple:
						with(obj_soul) {
							event_user(10)
						}
						break
					case c_lime:
						with(obj_soul) {
							event_user(10)
						}
						break
					case c_yellow:
						with(obj_soul) {
							event_user(10)
						}
						break
					case c_red:
						if (!global.inv) global.hp = 0;
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
				}
			}
		}
		for (cl = 0; cl < 4; cl += 1) {
			if collision_line(((x - xxx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y - yyy) + (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) + (((ny_factor * bt) / 2) * (cl / 4))), obj_soul, false, true) {
				switch (image_blend) {
					case purple:
						with(obj_soul) {
							event_user(10)
						}
						break
					case c_lime:
						with(obj_soul) {
							event_user(10)
						}
						break
					case c_yellow:
						with(obj_soul) {
							event_user(10)
						}
						break
					case c_red:
						if (!global.inv) global.hp = 0;
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
				}
			}
		}
	}
	if (col_o == 0)
		col_o = 1
	if (image_blend = c_yellow) {
		image_angle += angle
	}
	draw_set_alpha(1)
}
if (des = 0) {
	switch (image_blend) {
		case purple:
			with(enemy_dt_papyrus) {
				_spr_dt_slam = spr_dt_slam
			}
			break
		case c_lime:
			with(enemy_dt_papyrus) {
				_spr_dt_slam = spr_dt_slam_green
			}
			break
		case c_yellow:
			with(enemy_dt_papyrus) {
				_spr_dt_slam = spr_dt_slam_yellow
			}
			break
		case c_red:
			with(enemy_dt_papyrus) {
				_spr_dt_slam = spr_dt_slam_red
			}
			break
		case global.blue:
			with(enemy_dt_papyrus) {
				_spr_dt_slam = spr_dt_slam_blue
			}
			break
		case c_orange:
			with(enemy_dt_papyrus) {
				_spr_dt_slam = spr_dt_slam_orange
			}
			break
	}
}