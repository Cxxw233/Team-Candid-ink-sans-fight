if!(surface_exists(surface)){
	surface = surface_create(640,480)
}

surface_set_target(surface);
draw_surface(application_surface,0,0);
surface_reset_target();

draw_set_color(c_black);
draw_rectangle(0,0,640,480,0);
draw_set_color(c_white);

gpu_set_blendmode(bm_add)
draw_surface_ext(surface, 0, 0, 1, 1, 0, color, alpha)
draw_surface_ext(surface, 0, 0, 1, 1, 0, color, alpha)
draw_surface_ext(surface, 0, 0, 1, 1, 0, color, alpha)
gpu_set_blendmode(bm_normal)

c++
if(color=c_blue)
{
instance_create_depth(0,0,0,obj_bg_ho_snow)
}
if(color=c_red)
{
if(frac(c/4)=0)
{
instance_create_depth(random(640),600,0,obj_bg_ho_fire)
}
}