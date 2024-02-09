if(os_type == os_android){
	draw_set_alpha(0.5);
	draw_set_color(c_white);
	draw_roundrect(440+40,400+20+10,520+40,430+20+10,0);
	draw_roundrect(520+40,400+20+10,600+40,430+20+10,0);
	draw_roundrect(360+40,440+10+10,440+40,470+10+10,0);
	draw_sprite_ext(sprKey, 0, 140, 360, 2, 2, 0, c_white, 1)
}
