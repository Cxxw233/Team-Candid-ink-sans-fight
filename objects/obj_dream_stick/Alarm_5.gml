if(instance_exists(mkstar))
{
	num = instance_number(mkstar)
    star = instance_find(mkstar, random_range(0, num))
    with (star)
    {
        if (rot == 0)
        {
            if (x > 320)
                easing_execute(id, "hspeed", 0, 0, 0, -5, 10)
            if (x < 320)
                easing_execute(id, "hspeed", 0, 0, 0, 5, 10)
            rot = 1
        }
    }
    alarm[5] = 4
}