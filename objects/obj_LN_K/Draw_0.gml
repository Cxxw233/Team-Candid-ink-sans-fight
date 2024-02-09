if(xt=1)
{
draw_self()
}
if(xt=2)
{
btimer += 1
    if (btimer < 5)
    {
        bt += floor(((35 * image_xscale) / 4))
    }
    if (btimer > (5 + terminal))
    {
        bt *= 0.8
        fade -= 0.1
        draw_set_alpha(fade)
        if (bt <= 2)
            instance_destroy()
    }
    bbsiner += 1
    bb = ((sin((bbsiner / 1.5)) * bt) / 4)
    xx = (lengthdir_x(70, (image_angle - 90)) * (image_xscale / 2))
    yy = (lengthdir_y(70, (image_angle - 90)) * (image_xscale / 2))
    rr = 0//(random(2) - random(2))
    rr2 = 0//(random(2) - random(2))
    xxx = lengthdir_x(12000, (image_angle - 90))
    yyy = lengthdir_y(12000, (image_angle - 90))
    draw_set_color(image_blend)
    draw_line_width(((x - xxx) + rr), ((y - yyy) + rr2), ((x + xxx) + rr), ((y + yyy) + rr2), (bt + bb))
    nx_factor = lengthdir_x(1, image_angle)
    ny_factor = lengthdir_y(1, image_angle)
    if (col_o == 1 && fade >= 0.8)
    {
        for (cl = 0; cl < 4; cl += 1)
        {
                if collision_line(((x - xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y - yyy) - (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * bt) / 2) * (cl / 4))), obj_soul, false, true)
                {
                switch(image_blend)
                {
                case c_white: with(obj_soul){event_user(10)}break
                case c_aqua: with(obj_soul){event_user(11)}break
                case c_orange: with(obj_soul){event_user(12)}break
				case c_red: with(obj_soul){event_user(10)}break
                }
                }
        }
        for (cl = 0; cl < 4; cl += 1)
        {
            if collision_line(((x - xxx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y - yyy) + (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) + (((ny_factor * bt) / 2) * (cl / 4))), obj_soul, false, true)
                {
                switch(image_blend)
                {
                case c_white: with(obj_soul){event_user(10)}break
                case c_aqua: with(obj_soul){event_user(11)}break
                case c_orange: with(obj_soul){event_user(12)}break
				case c_red: with(obj_soul){event_user(10)}break
                }
                }
        }
    }
    if (col_o == 0)
        col_o = 1
    draw_set_alpha(1)
}

