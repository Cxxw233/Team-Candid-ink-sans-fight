if (!surface_exists(surface_mask)) {
	surface_mask = (surface_create(room_width, room_height));
}
if (!surface_exists(outside_mask)) {
	outside_mask = (surface_create(room_width, room_height));
}
surface_set_target(surface_mask);
draw_clear_alpha(0, 0);
surface_reset_target();
