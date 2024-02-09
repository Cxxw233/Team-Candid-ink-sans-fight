if (xt == 0){
    draw_set_color(c_red)
    draw_set_alpha(alpha)
    draw_line(x1, y1, x2, y2)
    draw_set_alpha(1)
    draw_set_color(c_white)
};
if (xt == 1){
    if (draw == 0){
        draw_set_color(c_red)
        draw_set_alpha(0.6)
        draw_line(x1, y1, x2, y2)
        draw_set_alpha(1)
        draw_set_color(c_white)
    };
    if (draw == 1){
        draw_set_color(c_red)
        draw_set_alpha(alpha)
        draw_line(x1, y1, x2, y2)
        draw_set_alpha(1)
        draw_set_color(c_white)
    };
};
if (xt == 2){
    sprite_index = spr_error_line
    image_yscale = 10
    draw_self()
};

 
