if(obj_bk.xt!=4){
draw_sprite_ext(spr_move_wall,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),1,1,0,c_white,1)
draw_self()
}
if(obj_bk.xt=4){
try{
	surface_set_target(surface_mask);{
//show_debug_message("sf");
		//draw_self();
		draw_sprite_ext(spr_move_wall,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),1,1,0,c_white,1)
		draw_self()
	};surface_reset_target();
}catch(_example){};
}

if(xt=1)
{
if(a<10)
{
a+=1
y-=a
}
if(a=10)
{
hspeed=4
}
}


if(xt=2)
{
if(a<10)
{
a+=1
y-=a
}
if(a=10)
{
hspeed=-4
}
}

