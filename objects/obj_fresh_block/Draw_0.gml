if st
{
    a++
    if (a<20)
    {
		//if(obj_soul.y=y-8)
		//obj_soul.y+=(dcos((a * 18)) - 1) * 10
        draw_sprite_ext(spr_fresh_block, 1, x, (y + ((dcos((a * 18)) - 1) * 80)), 1, 1, 0, c_white, (1 - ((a > 10 * (a - 10)) / 10)))
        draw_sprite_ext(spr_fresh_block, 0, x, (y + ((dcos((a * 18)) - 1) * 10)), 1, 1, 0, c_white, 1)
    }
    if (a>=20)
        draw_sprite_ext(spr_fresh_block, 0, x, y, 1, 1, 0, c_white, 1)
    if (a == 30) {
		with(turn14) {
			xt ++;
			a = 0;
		}
	    instance_destroy();
	}
}    