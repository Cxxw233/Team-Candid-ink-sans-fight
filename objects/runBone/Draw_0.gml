///@desc Draw & Collision
switch (color) {
	case bones.white:
		blend = c_white;
		break;
	case bones.blue:
		blend = global.blue;
		break;
	case bones.orange:
		blend = c_orange;
		break;
	default:
		blend = blend;
		break;
};
if (obj_bk.xt == 4) {
	if (!instance_exists(turn15)) {
		surface_set_target(surface_mask); {
			draw_sprite_ext(boneBody, 0, x, y, length / 2, 1, angle, blend, 1);
			draw_sprite_ext(boneEnd, 0, x - lengthdir_x(length / 2, angle), y + lengthdir_x(length / 2, angle - 90), 1, 1, angle + 180, blend, 1);
			draw_sprite_ext(boneEnd, 1, x + lengthdir_x(length / 2, angle), y - lengthdir_x(length / 2, angle - 90), 1, 1, angle + 180, blend, 1);
		};
		surface_reset_target();
	}; else {
		surface_set_target(surface_mask); {
			draw_sprite_ext(spr_bone_bodyNothing, 0, x, y, length / 2, 1, angle, blend, 1);
			draw_sprite_ext(spr_bone_bodyNothing, 0, x - lengthdir_x(length / 2, angle), y + lengthdir_x(length / 2, angle - 90), 1, 1, angle + 180, blend, 1);
			draw_sprite_ext(spr_bone_bodyNothing, 1, x + lengthdir_x(length / 2, angle), y - lengthdir_x(length / 2, angle - 90), 1, 1, angle + 180, blend, 1);
		};
		surface_reset_target();
	};
}; else {
	if (!instance_exists(turn15)) {
		draw_sprite_ext(boneBody, 0, x, y, length / 2, 1, angle, blend, alpha);
		draw_sprite_ext(boneEnd, 0, x - lengthdir_x(length / 2, angle), y + lengthdir_x(length / 2, angle - 90), 1, 1, angle + 180, blend, alpha);
		draw_sprite_ext(boneEnd, 1, x + lengthdir_x(length / 2, angle), y - lengthdir_x(length / 2, angle - 90), 1, 1, angle + 180, blend, alpha);
	}; else {
		draw_sprite_ext(spr_bone_bodyNothing, 0, x, y, length / 2, 1, angle, blend, alpha);
		draw_sprite_ext(spr_bone_headNothing, 0, x - lengthdir_x(length / 2, angle), y + lengthdir_x(length / 2, angle - 90), 1, 1, angle + 180, blend, alpha);
		draw_sprite_ext(spr_bone_headNothing, 1, x + lengthdir_x(length / 2, angle), y - lengthdir_x(length / 2, angle - 90), 1, 1, angle + 180, blend, alpha);
	};
};
if (alpha > 0.6) {
	if (collision_line(x + lengthdir_x(2, angle + 90) + lengthdir_x(length / 2, angle), y + lengthdir_y(2, angle + 90) + lengthdir_y(length / 2, angle), x + lengthdir_x(2, angle + 90) - lengthdir_x(length / 2, angle), y + lengthdir_y(2, angle + 90) - lengthdir_y(length / 2, angle), obj_soul, 0, 0) || collision_line(x - lengthdir_x(1, angle + 90) + lengthdir_x(length / 2, angle), y - lengthdir_y(1, angle + 90) + lengthdir_y(length / 2, angle), x - lengthdir_x(1, angle + 90) - lengthdir_x(length / 2, angle), y - lengthdir_y(1, angle + 90) - lengthdir_y(length / 2, angle), obj_soul, 0, 0)) {
		switch (color) {
			case bones.white:
				CrHurtNormal();
				break;
			case bones.blue:
				CrHurtBlue();
				break;
			case bones.orange:
				CrHurtOrange();
				break;
			default:
				CrHurtNormal();
				break;
		};
	};

	if (collision_line(x + lengthdir_x(2, angle + 90) + lengthdir_x(length / 2, angle), y + lengthdir_y(2, angle + 90) + lengthdir_y(length / 2, angle), x + lengthdir_x(2, angle + 90) - lengthdir_x(length / 2, angle), y + lengthdir_y(2, angle + 90) - lengthdir_y(length / 2, angle), obj_soul_C, 0, 0) || collision_line(x - lengthdir_x(1, angle + 90) + lengthdir_x(length / 2, angle), y - lengthdir_y(1, angle + 90) + lengthdir_y(length / 2, angle), x - lengthdir_x(1, angle + 90) - lengthdir_x(length / 2, angle), y - lengthdir_y(1, angle + 90) - lengthdir_y(length / 2, angle), obj_soul_C, 0, 0)) {
		switch (color) {
			case bones.white:
				CrHurtNormal();
				break;
			case bones.blue:
				CrHurtBlue();
				break;
			case bones.orange:
				CrHurtOrange();
				break;
			default:
				CrHurtNormal();
				break;
		};
	};

	if (collision_line(x + lengthdir_x(2, angle + 90) + lengthdir_x(length / 2, angle), y + lengthdir_y(2, angle + 90) + lengthdir_y(length / 2, angle), x + lengthdir_x(2, angle + 90) - lengthdir_x(length / 2, angle), y + lengthdir_y(2, angle + 90) - lengthdir_y(length / 2, angle), obj_soul_espe, 0, 0) || collision_line(x - lengthdir_x(1, angle + 90) + lengthdir_x(length / 2, angle), y - lengthdir_y(1, angle + 90) + lengthdir_y(length / 2, angle), x - lengthdir_x(1, angle + 90) - lengthdir_x(length / 2, angle), y - lengthdir_y(1, angle + 90) - lengthdir_y(length / 2, angle), obj_soul_espe, 0, 0)) {
		switch (color) {
			case bones.white:
				CrHurtNormal();
				break;
			case bones.blue:
				CrHurtBlue();
				break;
			case bones.orange:
				CrHurtOrange();
				break;
			default:
				CrHurtNormal();
				break;
		};
	};
}