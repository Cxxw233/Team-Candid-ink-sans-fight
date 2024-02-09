a++
if (mode == -1) {
	if (a == 1) {
		easing_execute(id, "image_angle", 0, 0, image_angle, +90, 30);
	}
	if (a == 31) {
		audio_play_sound(sndImpact, 0, 0);
		Camera_Shake(6, 2, 1, 1);
		gravity = 0.3;
	}
}
if (mode = 0) {
	if (xt = 0) {
		if (image_angle < 90) then {
			image_angle += a / 5;
		}
		else {
			xt = 2;
			a = 0;
		}
	};
	if (xt = 1) {
		if (image_angle > -90) then {
			image_angle -= a / 5;
		}
		else {
			xt = 2;
			a = 0;
		}
	};
	if (xt = 2) {
		if (a == 10) {
			xt = 3;
			a = 0;
		}
		if (a == 1) {
			audio_play_sound(sndImpact, 0, 0);
			Camera_Shake(6, 2, 1, 1);
		}
	};
	if (xt == 3) {
		gravity = 0.3;
	}
}