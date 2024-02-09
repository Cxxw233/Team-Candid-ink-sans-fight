draw_self()
if (image_index >= 12)
{
    if Eludeable
    {
        sinTime++
        blend = (127.5 + ((sin((sinTime * flashSpeed)) * 255) / 2))
    }
    draw_sprite_ext(sprEspeRee, 0, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(blend, blend, blend), image_alpha)
    draw_sprite_ext(sprEspeRee, 1, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(blend2, blend2, blend2), image_alpha)
}
