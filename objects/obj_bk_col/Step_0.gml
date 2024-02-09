COLOR_GET_bR+=rgo
COLOR_GET_bG+=ggo
COLOR_GET_bB+=bgo


if (abs(rto-COLOR_GET_bR)<1 && abs(gto-COLOR_GET_bG)<1  && abs(bto-COLOR_GET_bB)<1)
{
if(instance_exists(obj_bk))
{
obj_bk.colour=make_color_rgb(rto,gto,bto)
}
instance_destroy()
}

if(instance_exists(obj_bk))
{
obj_bk.colour=make_color_rgb(COLOR_GET_bR,COLOR_GET_bG,COLOR_GET_bB)
}