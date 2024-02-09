if(surface_exists(sur))  
{
shader_set(Sha_Dark);
surface_reset_target()
draw_surface(sur,0,0)
shader_reset()
}
  
