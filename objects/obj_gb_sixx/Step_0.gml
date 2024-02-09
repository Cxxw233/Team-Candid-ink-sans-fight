if (xt == 2)
{
    xt = 3
}
if (xt == 3)
{
    tl1++
    if (tl1 == 10)
    {
        obj_gb_sixx.image_index = 2
        tl1 = 0
        xt = 4
    }
}
if (xt == 4)
{
    tl1++
    if (tl1 == 10)
    {
        obj_gb_sixx.image_index = 3
        tl1 = 0
        xt = 5
    }
}
if (xt == 5)
{
    tl1++
    if (tl1 == 10)
        instance_destroy()
}