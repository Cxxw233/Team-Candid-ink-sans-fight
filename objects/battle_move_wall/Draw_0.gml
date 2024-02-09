draw_set_color(c_white)
draw_rectangle((x - len), y, (x + len), (y + 6), true)
if(flo=1)
{
draw_set_color(c_green)
}
else
{
draw_set_color(c_purple)
}
draw_rectangle((x - len), (y + 2), (x + len), (y - 4), true)


draw_set_color(c_white)
draw_rectangle((x - len), y, (x + len), (y + 6), true)
if(flo=1)
{
draw_set_color(c_green)
}
else
{
draw_set_color(c_purple)
}
draw_rectangle((x - len), (y + 2), (x + len), (y - 4), true)

if(instance_exists(obj_soul))
{


if collision_rectangle(((x - len) + 2), (y + 2), ((x + len) - 2), (y - 12), obj_soul, 0, 1)
{
    if (obj_soul.vspeed >= 0 && obj_soul.y <= (y - 8))
    {
        lock = 1
        obj_soul.y = (y - 10)
        obj_soul.vspeed = 0
        obj_soul.jump = 1
    }
}
else
{
    if (lock == 1 && obj_soul.jump == 1)
    {
        obj_soul.jump = 2
        obj_soul.vspeed = 0
    }
    lock = 0
}
/**/



if (lock == 1)
{

if(flo=1)
{
    obj_soul.x += hspeed
    obj_soul.y += vspeed
}

}
}

if (x < (0 - len) && hspeed < 0)
{
    instance_destroy()
}
if (x > (640 + len) && hspeed > 0)
{
instance_destroy()
}
if (y < (0 - len) && vspeed < 0)
{
    instance_destroy()
}
if (y > (480 + len) && vspeed > 0)
{
instance_destroy()
}