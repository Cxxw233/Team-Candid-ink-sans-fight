if(instance_exists(obj_soul))
{
if(obj_soul.y<275)
{
scgb(320,-100,100,obj_soul.y,2,2,0,90,1,-130,10,1,c_white,spr_fresh_gb)
scgb(320,-100,540,obj_soul.y,2,2,0,-90,1,-130,10,1,c_white,spr_fresh_gb)
}

with(obj_soul)
{
move_outside_solid(point_direction(x,y,obj_fresh_bk.x,obj_fresh_bk.y),-3)
}
}
image_angle+=add

