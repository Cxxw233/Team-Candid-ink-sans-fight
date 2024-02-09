// with this function, check the object.
function crtarget(crx, cry, crangle, crt) {
	with (instance_create_depth(crx, cry, 0, obj_bullet_sc)) {
		xt = 0;
		dir = crangle;
		t = crt;
		x = crx + lengthdir_x(400, dir);
		y = cry + lengthdir_y(400, dir);
		fx = x;
		fy = y;
		alarm[0] = t;
		return id;
	}
}

function crtarget_line(crx, cry, time, dir, crdepth = obj_bk.depth + 1) {
	with (instance_create_depth(crx, cry, crdepth, sc_bullet_line)) {
		alarm[0] = time;
		main[2] = dir
		return id;
	}
}

