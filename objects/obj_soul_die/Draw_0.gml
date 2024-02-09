switch (xt)
{
case 0 : image_blend=c_red;break
case 1 : image_blend=c_blue;break
case 2 : image_blend=c_green;break
case 3 : image_blend=c_yellow;break
case 4 : image_blend=make_color_rgb(128,0,255);break
case 5 : image_blend=make_color_rgb(255,0,255);break
case 6 : image_blend=make_color_rgb(0,255,199);break
case 7 : image_blend=make_color_rgb(255,0,114);break
}

draw_self()