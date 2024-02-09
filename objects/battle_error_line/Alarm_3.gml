if (xt == 0)
    instance_destroy()
if (xt == 1){
    easing_execute(id, "alpha", 2, 1, 1, -1, 10)
    alarm[4] = 10
};
if (xt == 2){
    easing_execute(id, "image_alpha", 2, 1, 1, -1, 10)
    alarm[4] = 10
};

 