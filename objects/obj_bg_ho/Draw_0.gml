a += 0.02
b = ((sin(a) + 1) / 2)
try{
	surface_set_target(outside_mask);{
draw_sprite_ext(spr_bg,0,0,0,1,-b,0,color,alpha)
draw_sprite_ext(spr_bg,0,0,480,1,b,0,color,alpha)
	};surface_reset_target();
}catch(_example){};