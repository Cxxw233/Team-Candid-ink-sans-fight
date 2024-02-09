// draw:
if (open == 1 && opend == 0) {
    var eff = instance_create_depth(0, 0, obj_bk.depth + 5, empty);
    eff.sprite_index = spr_pixel;
    eff.image_xscale = 640;
    eff.image_yscale = 480;
    eff.image_blend = make_color_rgb(0, 0, 255);
    eff.image_alpha = 1;
    // easing_execute(eff, "image_alpha", easing_class.linear, easing_class.in, 0, +1, 2);
    destroy = false;
    opend = 1;
}

if (open == 0 && opend == 1) {
    instance_destroy(empty);
}

// draw_text(20, 20, string(ds_list_size(list)));

if (!surface_exists(sf)) {
    sf = surface_create(room_width, room_height);
	
}

try {
    if (surface_exists(sf)) {
		surface_set_target(sf);{
		draw_clear_alpha(0, 0);
		draw_sprite_ext(spr_pixel, 0, 0, 0, room_width, room_height, 0, c_black, 1);
        switch (xtt) {
            case 0:
                draw_surface_ext(application_surface, xx, yy, xscale, yscale, angle, c_white, alpha);
                break;
            case 1:
                draw_surface_ext(application_surface, xx1, yyy - 240, xscale, yscale, angle, c_white, alpha);
                draw_surface_ext(application_surface, xx2, yyy + 240, xscale, yscale, angle, c_white, alpha);
                break;
            case 2:
                draw_surface_ext(application_surface, -320, yy1, xscale, yscale, angle, c_white, alpha);
                draw_surface_ext(application_surface, 320, yy2, xscale, yscale, angle, c_white, alpha);
                break;
            case 3:
                draw_surface_ext(application_surface, -320, -240, xscale, yscale, angle, c_white, alpha);
                draw_surface_ext(application_surface, -320, 240, xscale, yscale, angle, c_white, alpha);
                draw_surface_ext(application_surface, 320, 240, xscale, yscale, angle, c_white, alpha);
                draw_surface_ext(application_surface, 320, -240, xscale, yscale, angle, c_white, alpha);
                break;
            case 4:
                draw_surface_ext(application_surface, (320 + lengthdir_x(400, (point_direction(320, 240, 0, 0) + angle))), (240 + lengthdir_y(400, (point_direction(320, 240, 0, 0) + angle))), 1, 1, angle, c_white, 1);
                break;
        };
		}surface_reset_target();
		draw_surface(sf, 0, 0);
		
    }
    if (angled) {
        angle += 4;
    }

} catch (_r) {
    show_debug_message("Error: " + " at line " );
}

