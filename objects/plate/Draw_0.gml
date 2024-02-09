
var _temp_local_var_2, _temp_local_var_3;
image_xscale = (width / 2)+4
image_angle = angle
sprite_index = (sticky ? spr_battle_platform_green : spr_battle_platform_purple)
if (! bounce_x)
    x = (x + move_x)
else
{
    _temp_local_var_2 = (abs(move_x) * 10)
    _temp_local_var_3 = _temp_local_var_2
    if (_temp_local_var_2 <= 0)
    {
    }
    else
    {
        while (true)
        {
            if (! place_meeting((x + (sign(move_x) * 0.1)), y, battle_move_wall))
            {
                x = (x + (sign(move_x) * 0.1))
                _temp_local_var_3 = (_temp_local_var_3 - 1)
                if _temp_local_var_3
                    continue
            }
            else
            {
                move_x = (- move_x)
                break
            }
            break
        }
    }
}
y = (y + move_y)

draw_sprite_ext(sprite_index, 1, x, y, (width / 2), 1, angle, 0xFFFFFF, 1)
draw_sprite_ext(sprite_index, 0, (x - lengthdir_x((width / 2), angle)), (y - lengthdir_y((width / 2), angle)), 0.5, 1, angle, 0xFFFFFF, 1)
draw_sprite_ext(sprite_index, 0, (x + lengthdir_x((width / 2), angle)), (y + lengthdir_y((width / 2), angle)), 0.5, 1, angle, 0xFFFFFF, 1)
