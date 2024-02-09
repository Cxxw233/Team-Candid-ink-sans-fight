if (!line) {
	if (xt == 0) {
		with(instance_create_depth(xstart + lengthdir_x(150, dir), ystart + lengthdir_y(150, dir), 0, obj_bullet_sc)) {
			direction = other.dir + 180
			image_angle = direction
			xt = 1
			alarm[0] = 1
		}
		instance_destroy()
	}
	if (xt == 1) {
		easing_execute(id, "speed", easing_class.linear, easing_class.in, 5, 20, 10)
		//sprite_index=spr_battle_sbullet
		image_alpha = 0
		image_xscale = 1.5
		image_yscale = 1.5
		instance_create_depth(enemy_sudden.x - 45, enemy_sudden.y + 5 - 69, 0, obj_fire)
	}
}