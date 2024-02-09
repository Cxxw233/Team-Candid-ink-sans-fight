if (xt == 0){
    if (collision_line(x1, y1, x2, y2, obj_soul, true, false) && alpha == 1){
        with(obj_soul){
			event_user(10);
		};
	};
};
if (xt == 1 && draw == 1){
    if (collision_line(x1, y1, x2, y2, obj_soul, true, false) && alpha == 1){
        with(obj_soul){
			event_user(10);
		};
	};
};
if (xt == 2){
    if place_meeting(x, y, obj_soul){
        with(obj_soul){
			event_user(10);
		};
	};
    image_angle = (direction + 90);
};