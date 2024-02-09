image_angle += rotate
if (mode == 0)
{
    if (time < time_decrease)
    {
        time++
        speed += (speed_decrease / time_decrease)
        rotate += ((-rotate_start) / time_decrease)
    }
    else
    {
        mode = 3
        time = 0
    }
}
if (mode == 3)
{
        time++
        if (time == 10)
        {
            direction = point_direction(x, y, soul.x, soul.y)
            rotate = ((-grot) / 2)
            speed = -12
        }
        if (time > 10 && (!destroy))
        {
            if (rotate < abs(grot))
                rotate += ((grot - rotate) / 20)
            if (speed < 18)
                speed += ((18 - speed) / 20)
        }
        but = instance_create_depth(x, y, 0, obj_effect)
        but.image_index = image_index
        but.sprite_index = spr_sans_circle_b
        but.image_xscale = 1
        but.image_yscale = 1
        but.mode = 4
        but.image_angle = image_angle
        but.depth = (depth + 1)
}
if (x > 900 || x < -300 || y > 800 || y < -300)
    instance_destroy()
if (mode <= 3)
{
    dl += speed
    if (dl >= desLength && desLength != -1)
    {
        desLength = -1
        easing_execute(id, "rotate", 0, 12, rotate, (-rotate), 40)
        easing_execute(id, "speed", 0, 12, speed, (-speed), 40)
        alarm[0] = 40
    }
}

 