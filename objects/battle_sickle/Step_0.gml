if (xt==0&&image_alpha != 1){
    image_alpha += 0.05
};
if (x<320&&image_alpha > 0.6){
    if (image_angle != -270)
        image_angle+=((-270 - image_angle)/6);
    if (image_angle < -100 && xt==0){
        mk=instance_create_depth(x,y,0,battle_sickle_1)
        mk.image_index = image_index
        mk.image_xscale = (image_xscale * -1)
        mk.image_yscale = (image_xscale * -1)
        mk.speed = (image_xscale * 6)
        xt=1;
    };
};
if (x>320&&image_alpha > 0.6){
    if (image_angle != 270)
        image_angle+=((270 - image_angle)/6);
    if (image_angle > 100 && xt==0){
        mk=instance_create_depth(x,y,0,battle_sickle_1)
        mk.image_index = image_index
        mk.image_xscale = (image_xscale * -1)
        mk.image_yscale = (image_xscale * -1)
        mk.speed = (image_xscale * 6)
        xt=1;
    };
};
if (xt==1){
    image_alpha -= 0.05
    if (image_alpha < 0)
        instance_destroy()
};
