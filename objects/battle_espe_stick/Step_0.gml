image_angle += goRot;

if (mode <= 3)
    image_angle += rotate
if (mode == 0)
{
    if (image_index != 2)
    {
        but = instance_create_depth(x, y, 0, obj_effect)
        but.sprite_index = sprite_index
        but.image_index = image_index
        but.image_xscale = image_xscale
        but.image_yscale = image_yscale
        but.mode = 4
        but.image_angle = image_angle
        but.depth = (depth + 2)
    }
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
    effectTime++
    if (speed > 4.5 && (effectTime % 1) == 0 && (!destroy))
    {
        but = instance_create_depth(x, y, 0, battle_espe_stick)
        but.sprite_index = sprite_index
        but.image_index = 8
        but.image_xscale = 1.5
        but.image_yscale = 1.5
        but.mode = 4
        but.image_angle = (direction + 135)
        but.depth = (depth + 2)
        but = instance_create_depth(x, y, 0, battle_espe_stick)
        but.sprite_index = sprite_index
        but.image_index = 11
        but.image_xscale = 1.5
        but.image_yscale = 1.5
        but.mode = 5
        but.image_angle = (direction + 135)
        but.depth = (depth + 2)
    }
    if (image_index != 2)
        image_index += 0.5
    else
    {
        time++
        if (time == 3)
        {
            stick_left = instance_create_depth(x, y, 0, battle_espe_stick)
            stick_left.mode = 1
            stick_left.image_angle = image_angle
            stick_left.rotate = 0
            stick_left.image_index = 4
            stick_left.depth = (depth - 1)
            stick_left.speed = 0
            stick_right = instance_create_depth(x, y, 0, battle_espe_stick)
            stick_right.mode = 2
            stick_right.rotate = 0
            stick_right.depth = (depth - 1)
            stick_right.image_angle = image_angle
            stick_right.image_index = 3
            stick_right.speed = 0
        }
        if (time == 5)
        {
            stick_left.image_index = 6
            stick_right.image_index = 5
        }
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
        if (time >= 3)
        {
            if instance_exists(stick_left)
            {
                stick_left.image_angle = image_angle
                stick_left.x = x
                stick_left.y = y
            }
            if instance_exists(stick_right)
            {
                stick_right.image_angle = image_angle
                stick_right.x = x
                stick_right.y = y
            }
        }
    }
    if (image_index != 2 && (!destroy))
    {
        but = instance_create_depth(x, y, 0, obj_effect)
        but.image_index = image_index
        but.sprite_index = sprite_index
        but.image_xscale = 2
        but.image_yscale = 2
        but.mode = 4
        but.image_angle = image_angle
        but.depth = (depth + 1)
    }
    else if (!destroy)
    {
        but = instance_create_depth(x, y, 0, obj_effect)
        but.sprite_index = sprite_index
        but.image_index = 7
        but.image_xscale = 2
        but.image_yscale = 2
        but.mode = 4
        but.image_angle = image_angle
        but.depth = (depth + 1)
    }
}
if (x > 900 || x < -300 || y > 800 || y < -300)
    instance_destroy()
if (mode == 4 || mode == 5)
{
    speed = 0
    effectTime++
    if (effectTime == 6)
        image_index++
    if (effectTime == 11)
        image_index++
    if (effectTime == 17)
        instance_destroy()
}
if (mode == 6 && (speed != 0 || moveEffectable))
{
    but = instance_create_depth(x, y, 0, obj_effect)
    but.image_index = 17
    but.sprite_index = sprite_index
    but.image_xscale = image_xscale
    but.image_yscale = image_yscale
    but.mode = 4
    but.image_angle = image_angle
    but.depth = (depth + 1)
}
if (mode <= 3)
{
    dl += speed
    if (dl >= desLength && desLength != -1)
    {
        if (!ds) {
			desLength = -1;
		}
        easing_execute(id, "rotate", 0, 12, rotate, (-rotate), 40)
        easing_execute(id, "speed", 0, 12, speed, (-speed), 40)
        alarm[0] = 40
    }
}

 