draw_self()
draw_sprite_ext(spr_angel_plan,1,x,y,image_xscale,image_yscale,rot,c_white,1)

rot+=13

image_xscale+=0.05
image_yscale-=0.02
if(x>320){image_angle-=0.5}else{image_angle+=0.5}
vspeed-=0.4