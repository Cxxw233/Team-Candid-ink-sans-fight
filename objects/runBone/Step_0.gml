///@desc Rotate
angle+=rotate;
if (state == 233) {
	if (!Anim_IsExists(id))  {
		dlen[1] += angle;
		length = dlen[0] + sin(dlen[1] / dlen[2]) * dlen[3];
	}
}