//draw_text(x, y, ds);

if (mode < 6)
    draw_self()
else if (mode == 6)
{
    effectTime++
    if (effectTime == 1)
    {
        speed = 0
        for (i = 0; i < 16; i++)
        {
            effectScale[i] = (sign(image_xscale) * 2)
            effectPosX[i] = 0
            effectPosY[i] = 0
            effectAlpha[i] = 0
            _delay0[i] = (i * 2)
            _delay1[i] = (i * 2)
            _delay2[i] = (i * 2)
            _delay3[i] = (i * 2)
            _time0[i] = 0
            _time1[i] = 0
            _time2[i] = 0
            _time3[i] = 0
            _duration0[i] = 4
            _duration1[i] = 4
            _duration2[i] = 4
            _duration3[i] = 2
            _start0[i] = effectScale[i]
            _start1[i] = effectPosX[i]
            _start2[i] = effectPosY[i]
            _start3[i] = 0
            _change0[i] = (-effectScale[i])
            _change1[i] = (-effectPosX[i])
            _change2[i] = (-effectPosY[i])
            _change3[i] = 1
        }
    }
    if (effectTime < 34)
    {
        for (i = 0; i < 16; i++)
        {
            if (_delay0[i] <= 0)
            {
                _time0[i] += 1
                if (_time0[i] < _duration0[i])
                {
                    var r = effectScale[i]
                    var t = _time0[i]
                    var b = _start0[i]
                    var c = _change0[i]
                    var d = _duration0[i]
                    t = (t / d)
                    effectScale[i] = ((((c * t) * t) * t) + b)
                }
                else
                    effectScale[i] = (_start0[i] + _change0[i])
            }
            else
                _delay0[i]--
            if (_delay1[i] <= 0)
            {
                _time1[i] += 1
                if (_time1[i] < _duration1[i])
                {
                    r = effectPosX[i]
                    t = _time1[i]
                    b = _start1[i]
                    c = _change1[i]
                    d = _duration1[i]
                    t = (t / d)
                    effectPosX[i] = ((((c * t) * t) * t) + b)
                }
                else
                    effectPosX[i] = (_start1[i] + _change1[i])
            }
            else
                _delay1[i]--
            if (_delay2[i] <= 0)
            {
                _time2[i] += 1
                if (_time2[i] < _duration2[i])
                {
                    r = effectPosY[i]
                    t = _time2[i]
                    b = _start2[i]
                    c = _change2[i]
                    d = _duration2[i]
                    t = (t / d)
                    effectPosY[i] = ((((c * t) * t) * t) + b)
                }
                else
                    effectPosY[i] = (_start2[i] + _change2[i])
            }
            else
                _delay2[i]--
            if (_delay3[i] <= 0)
            {
                _time3[i] += 1
                if (_time3[i] < _duration3[i])
                {
                    r = effectAlpha[i]
                    t = _time3[i]
                    b = _start3[i]
                    c = _change3[i]
                    d = _duration3[i]
                    effectAlpha[i] = (((t / d) * c) + b)
                }
                else
                    effectAlpha[i] = (_start3[i] + _change3[i])
            }
            else
                _delay3[i]--
            draw_sprite_ext(sprEspeStickEffect, i, x, y, image_xscale, (image_yscale + effectScale[i]), image_angle, c_white, effectAlpha[i])
        }
    }
    else
    {
        stickTime++
        if (stickTime == 1)
            image_index++
        if (stickTime == 3)
        {
            image_index = 14
            length = 7
            if instance_exists(inst_stick)
                lengthEnd = (point_distance(x, y, inst_stick.x, inst_stick.y) / (2 * abs(image_xscale)))
            stick_left = instance_create_depth(x, y, 0, battle_espe_stick)
            stick_left.mode = 8
            stick_left.image_angle = image_angle
            stick_left.rotate = 0
            stick_left.image_index = 15
            stick_left.depth = (depth + 1)
            stick_left.speed = 0
            stick_left.image_yscale = image_yscale
            stick_left.image_xscale = (image_xscale * length)
            stick_right = instance_create_depth(x, y, 0, battle_espe_stick)
            stick_right.mode = 7
            stick_right.rotate = 0
            stick_right.depth = (depth + 1)
            stick_right.image_angle = image_angle
            stick_right.image_index = 16
            stick_right.speed = 0
            stick_right.image_yscale = image_yscale
            stick_right.image_xscale = (image_xscale * length)
        }
        if (stickTime >= 3)
        {
            if (!ly)
            {
                length += ((lengthEnd - length) / 2)
                if (abs((length - lengthEnd)) < 2)
                {
                    length = lengthEnd
                    ly = 1
                }
                speed += ((speedEnd - speed) / 5)
                if (abs((speed - speedEnd)) < 1)
                    speed = speedEnd
            }
            else
            {
                pLength += 20
                speed += ((speedEnd - speed) / 5)
                if (abs((speed - speedEnd)) < 1)
                    speed = speedEnd
            }
        }
        draw_self()
    }
}
else
    draw_self()

 