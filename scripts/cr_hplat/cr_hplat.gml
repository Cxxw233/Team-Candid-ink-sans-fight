///@arg x,y,depth,speed,len,flo*
function cr_hplat(){
var (bone_hplat) = instance_create_depth(argument[0], argument[1], argument[2],battle_move_wall)
bone_hplat.hspeed = argument[3]
bone_hplat.len = argument[4]
if(argument_count>=6)
{
bone_hplat.flo = argument[5]
}
}