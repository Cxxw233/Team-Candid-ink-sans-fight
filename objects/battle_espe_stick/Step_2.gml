if (time >= 3 || mode == 6)
{
    var PL = 0
    if instance_exists(stick_left)
    {
        stick_left.image_angle = image_angle
        stick_left.x = x
        stick_left.y = y
        if (mode == 6)
        {
            if pdir
                PL = pLength
            else if (pdir == 0)
                PL = 0
            stick_left.image_xscale = ((length * image_xscale) + (PL * image_xscale))
        }
    }
    if instance_exists(stick_right)
    {
        stick_right.image_angle = image_angle
        stick_right.x = x
        stick_right.y = y
        if (mode == 6)
        {
            if (pdir == 0)
                PL = pLength
            else if pdir
                PL = 0
            stick_right.image_xscale = ((length * image_xscale) + (PL * image_xscale))
        }
    }
}

 