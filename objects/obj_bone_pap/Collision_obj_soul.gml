var val = ( CrGetHpMax() == 20 ? 15 : 10);

if (image_blend = c_white) || (image_blend = global.cc) {
	with(obj_soul) {
		event_user(val);
	}
}
else {
	if (image_blend = c_aqua) {
		if (keyboard_check(vk_left)) {
			with(obj_soul) {
				event_user(val);
			}
		} else {
			if (keyboard_check(vk_down)) {
				with(obj_soul) {
					event_user(val);
				}
			} else {
				if (keyboard_check(vk_right)) {
					with(obj_soul) {
						event_user(val);
					}
				} else {
					if (keyboard_check(vk_up)) {
						with(obj_soul) {
							event_user(val);
						}
					}
				}
			}
		}
		if (image_blend = global.blue) {
			if (keyboard_check(vk_left)) {
				with(obj_soul) {
					event_user(val);
				}
			} else {
				if (keyboard_check(vk_down)) {
					with(obj_soul) {
						event_user(val);
					}
				} else {
					if (keyboard_check(vk_right)) {
						with(obj_soul) {
							event_user(val);
						}
					} else {
						if (keyboard_check(vk_up)) {
							with(obj_soul) {
								event_user(val);
							}
						}
					}
				}
			}
		}
		if (image_blend = c_orange) {
			if (keyboard_check(vk_right)) {
				var (ri) = 1
			} else {
				var (ri) = 0
			}
			if (keyboard_check(vk_left)) {
				var (le) = 1
			} else {
				var (le) = 0
			}
			if (keyboard_check(vk_up)) {
				var (up) = 1
			} else {
				var (up) = 0
			}
			if (keyboard_check(vk_down)) {
				var (dow) = 1
			} else {
				var (dow) = 0
			}
			if (ri = 0 && up = 0 && dow = 0 && le = 0) {
				with(obj_soul) {
					event_user(val);
				}
			}

		}
	}
}