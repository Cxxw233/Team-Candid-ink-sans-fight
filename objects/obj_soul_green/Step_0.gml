if (image_index > 0)
    image_index--
if keyboard_check_pressed(vk_right)
{
    anto = 270
    annow = image_angle
    psk = 1
}
if keyboard_check_pressed(vk_left)
{
    anto = 90
    annow = image_angle
    psk = 1
}
if keyboard_check_pressed(vk_down)
{
    anto = 180
    annow = image_angle
    psk = 1
}
if keyboard_check_pressed(vk_up)
{
    anto = 0
    annow = image_angle
    psk = 1
}
if (psk == 1)
{
    if (anto == (annow + 180) || anto == (annow - 180))
    {
        anj = 30
        cs = 3
        psk = 0
    }
    if (anto == (annow - 90) || anto == (annow + 270))
    {
        anj = -30
        cs = 3
        psk = 0
    }
    if (anto == (annow + 90) || anto == (annow - 270))
    {
        anj = 30
        cs = 3
        psk = 0
    }
}
if (cs > 0)
{
    cs--
    image_angle += anj
}
if (cs == 0)
    image_angle = anto
if (!instance_exists(obj_soul))
{
instance_destroy()
}
else{
x=obj_soul.x
y=obj_soul.y
}
