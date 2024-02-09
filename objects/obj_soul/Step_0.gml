/// @description Move
//show_debug_message(image_angle);
#region SoulMove
if (global.tre == 0) {
	#region Red
	if (xt = 0) {
		if (run = 1) {
			if (place_free(x + 5, y)) {
				if (keyboard_check(vk_right)) {
					if (!keyboard_check(vk_shift)) {
						x += 5
					} else {
						x += 2
					}
				}
			}

			if (place_free(x - 5, y)) {
				if (keyboard_check(vk_left)) {
					if (!keyboard_check(vk_shift)) {
						x -= 5
					} else {
						x -= 2
					}
				}
			}

			if (place_free(x, y - 5)) {
				if (keyboard_check(vk_up)) {
					if (!keyboard_check(vk_shift)) {
						y -= 5
					} else {
						y -= 2
					}
				}
			}

			if (place_free(x, y + 5)) {
				if (keyboard_check(vk_down)) {
					if (!keyboard_check(vk_shift)) {
						y += 5
					} else {
						y += 2
					}
				}
			}
		}
	}#endregion

	#region Epic
	if (xt = 1234) {
		if (place_free(x + 5, y)) {
			if (keyboard_check(vk_right)) {
				if (!keyboard_check(vk_shift)) {
					x += 5
				} else {
					x += 2
				}
			}
		}
		if (place_free(x - 5, y)) {
			if (keyboard_check(vk_left)) {
				if (!keyboard_check(vk_shift)) {
					x -= 5
				} else {
					x -= 2
				}
			}
		}
	}#endregion

	#region BlueLegacy
	if (xt = 1126) {
		switch (angle) {
			case "down":
				{
					if (vspeed > 11) {
						vspeed = 0
					}
					hspeed = 0
					gravity_direction = -90
					image_angle = 0
					if (gmu = 0 && b = 0) {
						b = 1
						gravity = 0.4
					} else {
						gravity = 0
					}
					if (keyboard_check(vk_up)) {
						if (jump = 0) {
							gmu = 1
							jump = 2
							gravity = 0.4
							vspeed = -8
						}
					}
					if (keyboard_check_released(vk_up) && a = 0) {
						a = 1
					}
					if (a = 1) {
						if (vspeed < 0) {
							vspeed += 1
						}
					}
					if (y >= global.ih - 8 || place_meeting(x, y + 9, battle_move_wall_old)) {
						jump = 0
						a = 0
						gmu = 0
					}
					if (place_meeting(x, y + 1, battle_move_wall_old)) {
						if (vspeed > 0) {
							gmu = 1
							gravity = 0
							vspeed = 0
						}
						move_outside_solid(90, -1)
					} else {
						gravity = 0.4
					}
					if (place_free(x + 5, y)) {
						if (keyboard_check(vk_right)) {
							if (!keyboard_check(vk_shift)) {
								x += 5
							} else {
								x += 2
							}
						}
					}
					if (place_free(x - 5, y)) {
						if (keyboard_check(vk_left)) {
							if (!keyboard_check(vk_shift)) {
								x -= 5
							} else {
								x -= 2
							}
						}
					}
				}
				break

			case "up":
				{
					if (vspeed < -11) {
						vspeed = 0
					}
					hspeed = 0
					gravity_direction = 90
					image_angle = -180
					if (gmu = 0 && b = 0) {
						b = 1
						gravity = 0.4
					} else {
						gravity = 0
					}
					if (keyboard_check(vk_down)) {
						if (jump = 0) {
							gmu = 1
							jump = 2
							gravity = 0.4
							vspeed = 8
						}
					}
					if (keyboard_check_released(vk_down) && a = 0) {
						a = 1
					}
					if (a = 1) {
						if (vspeed > 0) {
							vspeed -= 1
						}
					}
					if (y <= global.iy + 8 || place_meeting(x, y - 9, battle_move_wall_old)) {
						jump = 0
						a = 0
						gmu = 0
					}
					if (place_meeting(x, y - 1, battle_move_wall_old)) {
						if (vspeed < 0) {
							a = 0
							gmu = 1
							gravity = 0
							vspeed = 0
						}
						move_outside_solid(-90, -1)
					} else {
						gravity = 0.4
					}
					if (keyboard_check(vk_left)) {
						if (!keyboard_check(vk_shift)) {
							x -= 5
						} else {
							x -= 2
						}
					}
					if (keyboard_check(vk_right)) {
						if (!keyboard_check(vk_shift)) {
							x += 5
						} else {
							x += 2
						}
					}
				}
				break

			case "right":
				{
					if (hspeed > 9) {
						hspeed = 0
					}
					vspeed = 0
					gravity_direction = 0
					image_angle = 90
					if (gmu = 0 && b = 0) {
						b = 1
						gravity = 0.4
					} else {
						gravity = 0
					}
					if (keyboard_check(vk_left)) {
						if (jump = 0) {
							gmu = 1
							jump = 2
							gravity = 0.4
							hspeed = -8
						}
					}
					if (keyboard_check_released(vk_left) && a = 0) {
						a = 1
					}
					if (a = 1) {
						if (hspeed < 0) {
							hspeed += 1
						}
					}
					if (x >= global.iw - 8 || place_meeting(x + 9, y, battle_move_wall_old)) {
						jump = 0
						a = 0
						gmu = 0
					}
					if (place_meeting(x + 1, y, battle_move_wall_old)) {
						if (hspeed > 0) {
							gmu = 1
							gravity = 0
							hspeed = 0
						}
						move_outside_solid(0, -1)
					} else {
						gravity = 0.4
					}
					if (keyboard_check(vk_down)) {
						if (!keyboard_check(vk_shift)) {
							y += 5
						} else {
							y += 2
						}
					}
					if (keyboard_check(vk_up)) {
						if (!keyboard_check(vk_shift)) {
							y -= 5
						} else {
							y -= 2
						}
					}

				}
				break

			case "left":
				{
					if (hspeed < -9.5) {
						hspeed = 0
					}
					vspeed = 0
					gravity_direction = -180
					image_angle = -90
					if (gmu = 0 && b = 0) {
						b = 1
						gravity = 0.4
					} else {
						gravity = 0
					}
					if (keyboard_check(vk_right)) {
						if (jump = 0) {
							gmu = 1
							jump = 2
							gravity = 0.4
							hspeed = 8
						}
					}
					if (keyboard_check_released(vk_right) && a = 0) {
						a = 1
					}
					if (a = 1) {
						if (hspeed > 0) {
							hspeed -= 1
						}
					}
					if (x <= global.ix + 8 || place_meeting(x - 9, y, battle_move_wall_old)) {
						jump = 0
						a = 0
						gmu = 0
					}
					if (place_meeting(x - 1, y, battle_move_wall_old)) {
						if (hspeed < 0) {
							gmu = 1
							gravity = 0
							hspeed = 0
						}
						move_outside_solid(0, 1)
					} else {
						gravity = 0.4
					}
					if (keyboard_check(vk_down)) {
						if (!keyboard_check(vk_shift)) {
							y += 5
						} else {
							y += 2
						}
					}
					if (keyboard_check(vk_up)) {
						if (!keyboard_check(vk_shift)) {
							y -= 5
						} else {
							y -= 2
						}
					}

				}
				break


		}
	}#endregion;

	#region Blue
	if (xt = 1) {
		if (y >= global.ih - 9) //down
		{
			if (angle = "down") {
				jump = 1
				vspeed = 0
			}
		}
		if (x >= global.iw - 9) //right
		{
			if (angle == "right") {
				hspeed = 0
				jump = 1
			}
		}
		if (y <= global.iy + 9) //up
		{
			if (angle == "up") {
				vspeed = 0
				jump = 1
			}
		}
		if (x <= global.ix + 9) //left
		{
			if (angle = "left") {
				hspeed = 0
				jump = 1
			}
		}

		if (run = 1) {
			if (angle == "down") {
				if (keyboard_check(vk_left)) {
					if (!keyboard_check(vk_shift)) {
						x -= 5
					} else {
						x -= 2
					}
				}
				if (keyboard_check(vk_right)) {
					if (!keyboard_check(vk_shift)) {
						x += 5
					} else {
						x += 2
					}
				}
				if keyboard_check(vk_up) {
					if (jump == 1 && vspeed == 0) {
						jump = 2
						vspeed = -7
					}
				}
			}
			if (angle == "right") {
				if (keyboard_check(vk_up)) {
					if (!keyboard_check(vk_shift)) {
						y -= 5
					} else {
						y -= 2
					}
				}
				if (keyboard_check(vk_down)) {
					if (!keyboard_check(vk_shift)) {
						y += 5
					} else {
						y += 2
					}
				}
				if keyboard_check(vk_left) {
					if (jump == 1 && hspeed == 0) {
						jump = 2
						hspeed = -7
					}
				}
			}
			if (angle == "up") {
				if (keyboard_check(vk_left)) {
					if (!keyboard_check(vk_shift)) {
						x -= 5
					} else {
						x -= 2
					}
				}
				if (keyboard_check(vk_right)) {
					if (!keyboard_check(vk_shift)) {
						x += 5
					} else {
						x += 2
					}
				}
				if keyboard_check(vk_down) {
					if (jump == 1 && vspeed == 0) {
						jump = 2
						vspeed = 7
					}
				}
			}
			if (angle == "left") {
				if (keyboard_check(vk_up)) {
					if (!keyboard_check(vk_shift)) {
						y -= 5
					} else {
						y -= 2
					}
				}
				if (keyboard_check(vk_down)) {
					if (!keyboard_check(vk_shift)) {
						y += 5
					} else {
						y += 2
					}
				}
				if keyboard_check(vk_right) {
					if (jump == 1 && hspeed == 0) {
						jump = 2
						hspeed = 7
					}
				}
			}
		}

		if (jump == 2 && angle == "down") {
			image_angle = 0
			if (jump == 1) {
				if (keyboard_check_direct(vk_up) == 0 && vspeed <= -1)
					vspeed = -1
			}
			if (jump == 2) {
				if (keyboard_check(vk_up) == 0 && vspeed <= -1)
					vspeed = -1
			}
			if (vspeed > 0.5 && vspeed < 8)
				vspeed += 0.6
			if (vspeed > -1 && vspeed <= 0.5)
				vspeed += 0.2
			if (vspeed > -4 && vspeed <= -1)
				vspeed += 0.5
			if (vspeed <= -4)
				vspeed += 0.2
		}
		if (jump == 2 && angle == "right") {
			image_angle = 90
			if (jump == 1) {
				if (keyboard_check_direct(vk_left) == 0 && hspeed <= -1)
					hspeed = -1
			}
			if (jump == 2) {
				if (keyboard_check(vk_left) == 0 && hspeed <= -1)
					hspeed = -1
			}
			if (hspeed > 0.5 && hspeed < 8)
				hspeed += 0.6
			if (hspeed > -1 && hspeed <= 0.5)
				hspeed += 0.2
			if (hspeed > -4 && hspeed <= -1)
				hspeed += 0.5
			if (hspeed <= -4)
				hspeed += 0.2
		}
		if (jump == 2 && angle == "up") {
			image_angle = 180
			if (jump == 1) {
				if (keyboard_check_direct(vk_down) == 0 && vspeed >= 1)
					vspeed = 1
			}
			if (jump == 2) {
				if (keyboard_check(vk_down) == 0 && vspeed >= 1)
					vspeed = 1
			}
			if (vspeed < -0.5 && vspeed > -8)
				vspeed -= 0.6
			if (vspeed < 1 && vspeed >= -0.5)
				vspeed -= 0.2
			if (vspeed < 4 && vspeed >= 1)
				vspeed -= 0.5
			if (vspeed >= 4)
				vspeed -= 0.2
		}
		if (jump == 2 && angle == "left") {
			image_angle = -90
			if (jump == 1) {
				if (keyboard_check_direct(vk_right) == 0 && hspeed >= 1)
					hspeed = 1
			}
			if (jump == 2) {
				if (keyboard_check(vk_right) == 0 && hspeed >= 1)
					hspeed = 1
			}
			if (hspeed < -0.5 && hspeed > -8)
				hspeed -= 0.6
			if (hspeed < 1 && hspeed >= -0.5)
				hspeed -= 0.2
			if (hspeed < 4 && hspeed >= 1)
				hspeed -= 0.5
			if (hspeed >= 4)
				hspeed -= 0.2
		}

	}#endregion;

	#region Green
	if (xt = 2) {
		if (!instance_exists(obj_soul_green)) {
			instance_create_depth(x, y, 0, obj_soul_green)
		}
	}#endregion;

	#region Yellow
	if (xt = 3) {

		if (place_free(x + 5, y)) {
			if (keyboard_check(vk_right)) {
				if (!keyboard_check(vk_shift)) {
					x += 5
				} else {
					x += 2
				}
			}
		}

		if (place_free(x - 5, y)) {
			if (keyboard_check(vk_left)) {
				if (!keyboard_check(vk_shift)) {
					x -= 5
				} else {
					x -= 2
				}
			}
		}

		if (place_free(x, y - 5)) {
			if (keyboard_check(vk_up)) {
				if (!keyboard_check(vk_shift)) {
					y -= 5
				} else {
					y -= 2
				}
			}
		}

		if (place_free(x, y + 5)) {
			if (keyboard_check(vk_down)) {
				if (!keyboard_check(vk_shift)) {
					y += 5
				} else {
					y += 2
				}
			}
		}
		if (keyboard_check_pressed(vk_enter)) {
			if (abs(image_angle) == 180)
				instance_create_depth(x, y - 5, depth, obj_soul_bullet)
		}
	}#endregion;

	#region YellowMtt
	if (xt = 3333) {
		image_angle = point_direction(x, y, mouse_x, mouse_y) + 90
		if (place_free(x + 5, y)) {
			if (keyboard_check(vk_right)) {
				if (!keyboard_check(vk_shift)) {
					x += 5
				} else {
					x += 2
				}
			}
		}

		if (place_free(x - 5, y)) {
			if (keyboard_check(vk_left)) {
				if (!keyboard_check(vk_shift)) {
					x -= 5
				} else {
					x -= 2
				}
			}
		}

		if (place_free(x, y - 5)) {
			if (keyboard_check(vk_up)) {
				if (!keyboard_check(vk_shift)) {
					y -= 5
				} else {
					y -= 2
				}
			}
		}

		if (place_free(x, y + 5)) {
			if (keyboard_check(vk_down)) {
				if (!keyboard_check(vk_shift)) {
					y += 5
				} else {
					y += 2
				}
			}
		}
		if (keyboard_check_pressed(vk_enter)) {
			mk = instance_create_depth(x, y, depth, obj_soul_bullet)
			mk.image_angle = image_angle - 180
			mk.direction = image_angle - 90
		}
	}#endregion;

	#region PurpleLegacy
	if (xt = 4) {
		image_angle = floor((-vspeed) * 3)
		if (y >= global.ih - 9) //down
		{
			jump = 1
			vspeed = 0
		}
		if (keyboard_check(vk_left)) {
			if (!keyboard_check(vk_shift)) {
				x -= 5
			} else {
				x -= 2
			}
		}
		if (keyboard_check(vk_right)) {
			if (!keyboard_check(vk_shift)) {
				x += 5
			} else {
				x += 2
			}
		}
		if keyboard_check(vk_up) {
			if (jump == 1 && vspeed == 0) {
				jump = 2
				vspeed = -7
			}
		}
		if (jump == 2) {
			if (jump == 1) {
				if (keyboard_check_direct(vk_up) == 0 && vspeed <= -1)
					vspeed = -1
			}
			if (jump == 2) {
				if (keyboard_check(vk_up) == 0 && vspeed <= -1)
					vspeed = -1
			}
			if (vspeed > 0.5 && vspeed < 8)
				vspeed += 0.6
			if (vspeed > -1 && vspeed <= 0.5)
				vspeed += 0.2
			if (vspeed > -4 && vspeed <= -1)
				vspeed += 0.5
			if (vspeed <= -4)
				vspeed += 0.2
		}

	}#endregion;

	#region Purple
	if (xt = 4666) {
		if (keyboard_check(vk_right)) {
			if (!keyboard_check(vk_shift)) {
				x += 5
			} else {
				x += 2
			}
		}

		if (keyboard_check(vk_left)) {
			if (!keyboard_check(vk_shift)) {
				x -= 5
			} else {
				x -= 2
			}
		}



		gravity = 0.4
		image_angle = -(vspeed * 3)
		if (keyboard_check(vk_up)) {
			if (jump = 1) {
				jump = 0
				gravity = 0.4
				vspeed = -7
			}
		}

		if (keyboard_check_released(vk_up)) {
			if (vspeed < 0) {
				vspeed = 0
			}
		}
		if (!instance_exists(obj_fresh_bk)) {
			if (!place_free(x, y + 5) || y >= global.ih - 8) {
				if (jump = 1) {
					vspeed = 0
					gravity = 0
				}
				jump = 1
			}
		} else {
			if (!place_free(x, y + 5)) {
				if (jump = 1) {
					vspeed = 0
					gravity = 0
				}
				jump = 1
			}
		}
	}#endregion;

	#region Pink
	if (xt = 5) {
		if (place_free(x + 5, y)) {
			if (keyboard_check(vk_right)) {
				if (!keyboard_check(vk_shift)) {
					x += 5
				} else {
					x += 2
				}
			}
		}

		if (place_free(x - 5, y)) {
			if (keyboard_check(vk_left)) {
				if (!keyboard_check(vk_shift)) {
					x -= 5
				} else {
					x -= 2
				}
			}
		}
		if (keyboard_check_pressed(vk_up) && yb == 0)
			yb = -1
		if (keyboard_check_pressed(vk_down) && yb == 0)
			yb = 1
		mty1 = ((((250 - (index * 1)) * 3) + 390) / 4)
		mty2 = (((250 - (index * 1)) + 390) / 2)
		mty3 = (((250 - (index * 1)) + 1170) / 4)
		if (yb == 1 && mp >= 3) {
			mp = 3
			yb = 0
		} else if (yb == -1 && mp <= 1) {
			mp = 1
			yb = 0
		} else {
			mp += (sign(yb) * 0.2)
			if (mp > 3)
				mp = 3
			else if (mp < 1)
				mp = 1
		}
		if ((mp == 1 || mp == 2 || mp == 3))
			yb = 0
		y = (mty1 + (((mty3 - mty1) / 2) * (mp - 1)))
	}#endregion

	#region Ho
	if (xt = 6) {
		sprite_index = spr_soul_buff
		if (buff = 0)
			image_index = 0
		if (buff = 1)
			image_index = 1
		if (buff = 2)
			image_index = 2
		if (buff = 0) {
			if (place_free(x + 5, y)) {
				if (keyboard_check(vk_right)) {
					if (!keyboard_check(vk_shift)) {
						x += 5
					} else {
						x += 2
					}
				}
			}

			if (place_free(x - 5, y)) {
				if (keyboard_check(vk_left)) {
					if (!keyboard_check(vk_shift)) {
						x -= 5
					} else {
						x -= 2
					}
				}
			}

			if (place_free(x, y - 5)) {
				if (keyboard_check(vk_up)) {
					if (!keyboard_check(vk_shift)) {
						y -= 5
					} else {
						y -= 2
					}
				}
			}

			if (place_free(x, y + 5)) {
				if (keyboard_check(vk_down)) {
					if (!keyboard_check(vk_shift)) {
						y += 5
					} else {
						y += 2
					}
				}
			}
		}
		if (buff = 1) {
			part_particles_create(global.se, x + irandom_range(-5, 5), y + irandom_range(-5, 5), global.se_type_ice, choose(1, 2))
			if (place_free(x + 5, y)) {
				if (keyboard_check(vk_right)) {
					if (!keyboard_check(vk_shift)) {
						x += 2
					} else {
						x += 2
					}
				}
			}

			if (place_free(x - 5, y)) {
				if (keyboard_check(vk_left)) {
					if (!keyboard_check(vk_shift)) {
						x -= 2
					} else {
						x -= 2
					}
				}
			}

			if (place_free(x, y - 5)) {
				if (keyboard_check(vk_up)) {
					if (!keyboard_check(vk_shift)) {
						y -= 2
					} else {
						y -= 2
					}
				}
			}

			if (place_free(x, y + 5)) {
				if (keyboard_check(vk_down)) {
					if (!keyboard_check(vk_shift)) {
						y += 2
					} else {
						y += 2
					}
				}
			}
		}
		if (buff = 2) {
			if (buffer = 0) {
				if (place_free(x + 5, y)) {
					if (keyboard_check(vk_right)) {
						if (!keyboard_check(vk_shift)) {
							x += 8
						} else {
							x += 2
						}
					}
				}

				if (place_free(x - 5, y)) {
					if (keyboard_check(vk_left)) {
						if (!keyboard_check(vk_shift)) {
							x -= 8
						} else {
							x -= 2
						}
					}
				}

				if (place_free(x, y - 5)) {
					if (keyboard_check(vk_up)) {
						if (!keyboard_check(vk_shift)) {
							y -= 8
						} else {
							y -= 2
						}
					}
				}

				if (place_free(x, y + 5)) {
					if (keyboard_check(vk_down)) {
						if (!keyboard_check(vk_shift)) {
							y += 8
						} else {
							y += 2
						}
					}
				}
			}
			if (buffer = 1) {
				switch (angle) {
					#region BlueDown
					case "down":
						{
							if (vspeed > 11) {
								vspeed = 0
							}
							hspeed = 0
							gravity_direction = -90
							image_angle = 0
							if (gmu = 0 && b = 0) {
								b = 1
								if (slam == 0) {
									gravity = 0.4;
								} else {
									gravity = downspd;
								}
							} else {
								gravity = 0
							}
							if (keyboard_check(vk_up)) {
								if (jump = 0) {
									gmu = 1
									jump = 1
									if (slam == 0) {
										gravity = 0.4
									} else {
										gravity = downspd;
									}
									vspeed = -8
								}
							}
							if (keyboard_check_released(vk_up) && a = 0) {
								a = 1
							}
							if (a = 1) {
								if (vspeed < 0) {
									vspeed += 1
								}
							}
							if (y >= global.ih - 8 || place_meeting(x, y + 9, battle_move_wall_old)) {
								jump = 0
								a = 0
								gmu = 0
							}
							if (place_meeting(x, y + 1, battle_move_wall_old)) {
								if (vspeed > 0) {
									gmu = 1
									gravity = 0
									vspeed = 0
								}
								move_outside_solid(90, -1)
							} else {
								if (slam == 0) {
									gravity = 0.4
								} else {
									gravity = downspd;
								}
							}
							if (keyboard_check(vk_right)) {
								if (!keyboard_check(vk_shift)) {
									x += 8
								} else {
									x += 2
								}
							}
							if (keyboard_check(vk_left)) {
								if (!keyboard_check(vk_shift)) {
									x -= 8
								} else {
									x -= 2
								}
							}
						}
						break
                        #endregion

						#region BlueUp
					case "up":
						{
							if (vspeed < -11) {
								vspeed = 0
							}
							hspeed = 0
							gravity_direction = 90
							image_angle = -180
							if (gmu = 0 && b = 0) {
								b = 1
								if (slam == 0) {
									gravity = 0.4
								} else {
									gravity = downspd;
								}
							} else {
								gravity = 0
							}
							if (keyboard_check(vk_down)) {
								if (jump = 0) {
									gmu = 1
									jump = 1
									if (slam == 0) {
										gravity = 0.4
									} else {
										gravity = downspd;
									}
									vspeed = 8
								}
							}
							if (keyboard_check_released(vk_down) && a = 0) {
								a = 1
							}
							if (a = 1) {
								if (vspeed > 0) {
									vspeed -= 1
								}
							}
							if (y <= global.iy + 8 || place_meeting(x, y - 9, battle_move_wall_old)) {
								jump = 0
								a = 0
								gmu = 0
							}
							if (place_meeting(x, y - 1, battle_move_wall_old)) {
								if (vspeed < 0) {
									a = 0
									gmu = 1
									if (slam == 0) {
										gravity = 0.4
									} else {
										gravity = downspd;
									}
									vspeed = 0
								}
								move_outside_solid(-90, -1)
							} else {
								if (slam == 0) {
									gravity = 0.4
								} else {
									gravity = downspd;
								}
							}
							if (keyboard_check(vk_left)) {
								if (!keyboard_check(vk_shift)) {
									x -= 5
								} else {
									x -= 2
								}
							}
							if (keyboard_check(vk_right)) {
								if (!keyboard_check(vk_shift)) {
									x += 5
								} else {
									x += 2
								}
							}
						}
						break
                        #endregion

						#region BlueRight
					case "right":
						{
							if (hspeed > 9) {
								hspeed = 0
							}
							vspeed = 0
							gravity_direction = 0
							image_angle = 90
							if (gmu = 0 && b = 0) {
								b = 1
								if (slam == 0) {
									gravity = 0.4
								} else {
									gravity = downspd;
								}
							} else {
								gravity = 0
							}
							if (keyboard_check(vk_left)) {
								if (jump = 0) {
									gmu = 1
									jump = 1
									if (slam == 0) {
										gravity = 0.4
									} else {
										gravity = downspd;
									}
									hspeed = -8
								}
							}
							if (keyboard_check_released(vk_left) && a = 0) {
								a = 1
							}
							if (a = 1) {
								if (hspeed < 0) {
									hspeed += 1
								}
							}
							if (x >= global.iw - 8 || place_meeting(x + 9, y, battle_move_wall_old)) {
								jump = 0
								a = 0
								gmu = 0
							}
							if (place_meeting(x + 1, y, battle_move_wall_old)) {
								if (hspeed > 0) {
									gmu = 1
									gravity = 0
									hspeed = 0
								}
								move_outside_solid(0, -1)
							} else {
								if (slam == 0) {
									gravity = 0.4
								} else {
									gravity = downspd;
								}
							}
							if (keyboard_check(vk_down)) {
								if (!keyboard_check(vk_shift)) {
									y += 5
								} else {
									y += 2
								}
							}
							if (keyboard_check(vk_up)) {
								if (!keyboard_check(vk_shift)) {
									y -= 5
								} else {
									y -= 2
								}
							}

						}
						break
                        #endregion

						#region BlueLeft
					case "left":
						{
							if (hspeed < -9.5) {
								hspeed = 0
							}
							vspeed = 0
							gravity_direction = -180
							image_angle = -90
							if (gmu = 0 && b = 0) {
								b = 1
								if (slam == 0) {
									gravity = 0.4
								} else {
									gravity = downspd;
								}
							} else {
								gravity = 0
							}
							if (keyboard_check(vk_right)) {
								if (jump = 0) {
									gmu = 1
									jump = 1
									if (slam == 0) {
										gravity = 0.4
									} else {
										gravity = downspd;
									}
									hspeed = 8
								}
							}
							if (keyboard_check_released(vk_right) && a = 0) {
								a = 1
							}
							if (a = 1) {
								if (hspeed > 0) {
									hspeed -= 1
								}
							}
							if (x <= global.ix + 8 || place_meeting(x - 9, y, battle_move_wall_old)) {
								jump = 0
								a = 0
								gmu = 0
							}
							if (place_meeting(x - 1, y, battle_move_wall_old)) {
								if (hspeed < 0) {
									gmu = 1
									gravity = 0
									hspeed = 0
								}
								move_outside_solid(0, 1)
							} else {
								if (slam == 0) {
									gravity = 0.4
								} else {
									gravity = downspd;
								}
							}
							if (keyboard_check(vk_down)) {
								if (!keyboard_check(vk_shift)) {
									y += 5
								} else {
									y += 2
								}
							}
							if (keyboard_check(vk_up)) {
								if (!keyboard_check(vk_shift)) {
									y -= 5
								} else {
									y -= 2
								}
							}

						}#endregion;
						break;


				}
			}
		}
	}#endregion;

	#region Espe
	if (xt = 7) {
		if (place_free(x + 5, y)) {
			if (keyboard_check(vk_right)) {
				if (!keyboard_check(vk_shift)) {
					x += 5
				} else {
					x += 2
				}
			}
		}

		if (place_free(x - 5, y)) {
			if (keyboard_check(vk_left)) {
				if (!keyboard_check(vk_shift)) {
					x -= 5
				} else {
					x -= 2
				}
			}
		}

		if (place_free(x, y - 5)) {
			if (keyboard_check(vk_up)) {
				if (!keyboard_check(vk_shift)) {
					y -= 5
				} else {
					y -= 2
				}
			}
		}

		if (place_free(x, y + 5)) {
			if (keyboard_check(vk_down)) {
				if (!keyboard_check(vk_shift)) {
					y += 5
				} else {
					y += 2
				}
			}
		}
	}#endregion;

	#region Snow
	if (xt = 9) {
		switch (angle) {
			case "down":
				{
					if (vspeed > 11) {
						vspeed = 0
					}
					hspeed = 0
					gravity_direction = -90
					image_angle = 0
					if (gmu = 0 && b = 0) {
						b = 1
						gravity = 0.4
					} else {
						gravity = 0
					}
					if (keyboard_check(vk_up)) {
						if (jump = 0) {
							gmu = 1
							jump = 2
							gravity = 0.4
							vspeed = -8
						}
					}
					if (!(place_meeting(x, y, battle_move_block_ice))) {
						if (keyboard_check_released(vk_up) && a = 0) {
							a = 1
						}
					}
					if (a = 1) {
						if (vspeed < 0) {
							vspeed += 1
						}
					}
					if (y >= global.ih - 8 || place_meeting(x, y + 9, battle_move_wall_ice)) {
						jump = 0
						a = 0
						gmu = 0
					}
					if (place_meeting(x, y + 1, battle_move_wall_ice)) {
						if (vspeed > 0) {
							gmu = 1
							gravity = 0
							vspeed = 0
						}
						move_outside_solid(90, -1)
					} else {
						gravity = 0.4
					}
					if (!(place_meeting(x, y, battle_move_block_ice))) {
						if (place_free(x + 5, y)) {
							if (keyboard_check(vk_right)) {
								x += 3.11
							}
						}
						if (place_free(x - 5, y)) {
							if (keyboard_check(vk_left)) {
								x -= 3.11
							}
						}
					}
				}
				break
		}
	}#endregion;

	#region Alphys
	if (xt = 996) {
		direction = 270
		if (turnYex.tl2 <= 0)
			speed = 4.4
		else
			speed = 0
		if (turnYex.tl2 <= 0) {
			if (place_free(x + 5, y)) {
				if (keyboard_check(vk_right)) {
					if (!keyboard_check(vk_shift)) {
						x += 5
					} else {
						x += 2
					}
				}
			}

			if (place_free(x - 5, y)) {
				if (keyboard_check(vk_left)) {
					if (!keyboard_check(vk_shift)) {
						x -= 5
					} else {
						x -= 2
					}
				}
			}

			if (place_free(x, y - 5)) {
				if (keyboard_check(vk_up)) {
					if (!keyboard_check(vk_shift)) {
						y -= 5
					} else {
						y -= 2
					}
				}
			}

			if (place_free(x, y + 5)) {
				if (keyboard_check(vk_down)) {
					if (!keyboard_check(vk_shift)) {
						y += 5
					} else {
						y += 2
					}
				}
			}
		} else
		if (turnYex.tl2 > 0) {
			if keyboard_check_pressed(vk_up)
			y -= 4
			if keyboard_check_released(vk_up)
			y += 4
			if keyboard_check_pressed(vk_down)
			y += 4
			if keyboard_check_released(vk_down)
			y -= 4
			if keyboard_check_pressed(vk_left)
			x -= 4
			if keyboard_check_released(vk_left)
			x += 4
			if keyboard_check_pressed(vk_right)
			x += 4
			if keyboard_check_released(vk_right)
			x -= 4
		};
	}#endregion

	#region Orange || Purple
	if (xt = 11 || xt = 12) {
		a++
		if (xt = 11) {
			if ((a % 3) == 0) {
				but = instance_create_depth(x, y, 0, obj_effect)
				but.sprite_index = sprite_index
				but.image_speed = 0
				but.depth = depth + 1
				but.image_index = image_index
			};
		};
		if keyboard_check(vk_left) {
			xj = -3
			yj = 0
		}
		if keyboard_check(vk_right) {
			xj = 3
			yj = 0
		}
		if keyboard_check(vk_up) {
			yj = -3
			xj = 0
		}
		if keyboard_check(vk_down) {
			yj = 3
			xj = 0
		}
		if (place_free(x + 5, y)) {
			x += xj
		}

		if (place_free(x - 5, y)) {
			x += xj
		}

		if (place_free(x, y - 5)) {
			y += yj
		}

		if (place_free(x, y + 5)) {
			y += yj
		}
	};#endregion

	#region Aqua
	if (xt = 13) {
		if (run = 1) {
			if (place_free(x - 5, y)) {
				if (keyboard_check(vk_right)) {
					if (!keyboard_check(vk_shift)) {
						x -= 5
					} else {
						x -= 2
					}
				}
			}

			if (place_free(x + 5, y)) {
				if (keyboard_check(vk_left)) {
					if (!keyboard_check(vk_shift)) {
						x += 5
					} else {
						x += 2
					}
				}
			}

			if (place_free(x, y + 5)) {
				if (keyboard_check(vk_up)) {
					if (!keyboard_check(vk_shift)) {
						y += 5
					} else {
						y += 2
					}
				}
			}

			if (place_free(x, y - 5)) {
				if (keyboard_check(vk_down)) {
					if (!keyboard_check(vk_shift)) {
						y -= 5
					} else {
						y -= 2
					}
				}
			}
		}
	}#endregion

	#region 3 D
	if (xt = 14) {
		sprite_index = spr_soul_purple;
		if (st && keyboard_check(vk_left) && cx > -42)
			cx = max((cx - 5), -42)
		if (st && keyboard_check(vk_right) && cx < 42)
			cx = min((cx + 5), 42)
		if (st && keyboard_check(vk_up) && cy > -42)
			cy = max((cy - 5), -42)
		if (st && keyboard_check(vk_down) && cy < 42)
			cy = min((cy + 5), 42)
		if (st && keyboard_check(vk_return) && cz > -42)
			cz = max((cz - 5), -42)
		if (st && keyboard_check(vk_shift) && cz < 42)
			cz = min((cz + 5), 42)
		x = ((320 + (cx * 0.8)) + (cz * 0.8))
		y = (((300 + cy) + (cx / 2)) - (cz / 2))
	}#endregion
};
#region Hurt
/*if (global.kr=0)
{*/
if (hpj > 0) {
	hpj -= 1
	if (hpj mod 4 = 0) {
		if (image_blend = c_gray) {
			image_blend = c_white
		} else {
			if (image_blend = c_white) {
				image_blend = c_gray
			}
		}
	}
}
if (hpj = 0) {
	image_blend = c_white
}
if (global.hp <= 0) {
	if (instance_exists(camera)) then {
		camera.scale_x = 1;
		camera.scale_y = 1;
		camera.x = 0;
		camera.y = 0;
	};
	gravity = 0
	vspeed = 0
	global.hp = 0
	if (!instance_exists(obj_die)) {
		var (die) = instance_create_depth(x, __view_get(e__vw.yview, 0) + y, -114514, obj_die)
		die.xt = 0 //xt
		image_index = 0;
		sprite_index = spr_soul;
	}
	xt = 114514;
} else {
	if (xt != 6 && xt != 14 && xt != 996 && xt != 1126 && xt != 114514 && xt != 1234 && xt != 3333)
		image_index = xt
	if (xt = 996)
		image_index = 0;
	if (xt = 1126)
		image_index = 1;
	if (xt = 1234)
		image_index = 1;
	if (xt = 3333)
		image_index = 3;
	if (xt = 114514)
		image_index = 0;
}#endregion
#endregion;

#region None
/*}
else
{
global.hp=obj_system.kr
if (obj_system.nowkr<=0)
{
global.hp=0
obj_system.nowkr=0
if (!instance_exists(obj_die))
{
instance_create(x,y,obj_die)
}
}
else
{
image_index=xt
}
}/**/
///sprite
//image_index=xt
#endregion;

time ++ ;