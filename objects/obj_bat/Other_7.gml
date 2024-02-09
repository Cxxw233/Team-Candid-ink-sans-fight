image_speed=0
image_index=6
if (global.MISS=0)
{
with(enemy)
{
alarm[0]=1
}
instance_destroy()
}
/*if (global.MISS=1)
{
instance_create(320,global.iy-195,obj_miss)
}*/
if(global.color=1&&instance_exists(obj_fight_fied))
{
	if(global.dye[obj_fight_fied.nb]<0){
	(instance_create_depth(x,y,0,obj_numbting)).sprite_index=spr_MISSp3}
	if(global.dye[obj_fight_fied.nb]>=0){
	(instance_create_depth(x,y,0,obj_numbting)).sprite_index=spr_numbting}
}

