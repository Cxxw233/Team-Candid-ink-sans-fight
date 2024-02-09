with (obj_star_dream)
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