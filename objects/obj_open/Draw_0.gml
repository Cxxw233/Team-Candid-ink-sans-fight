tl1++
if (tl1 < 26)
    a += (26 - tl1)
if (tl1 > 25 && tl1 < 36)
    b -= 0.1
draw_sprite_ext(spr_open, -1, (320 - a), 0, b, 480, 0, blend, 1)
draw_sprite_ext(spr_open, -1, (320 + a), 0, b, 480, 0, blend, 1)
if (tl1 == 36)
    instance_destroy()