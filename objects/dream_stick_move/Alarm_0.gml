if (shot) {
	with (instance_create_depth(x + random_range(-20, 20), y, depth, obj_star_dream)) {
		sb = true;
		gravity = 0;
		vspeed = 0;
		hspeed = 0;
		direction = point_direction(x, y, obj_soul.x, obj_soul.y);
		speed = 5;
	}
	alarm[0] = 15;
}