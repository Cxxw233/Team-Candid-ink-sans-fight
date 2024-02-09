/// @arg x,y,depth,long,angle,color,hspeed*,vspeed*
function crbonepap() {
	c=instance_create_depth(argument[0],argument[1],argument[2],obj_bone_pap)
	c.image_xscale=argument[3]
	c.image_angle=argument[4]
	c.image_blend=argument[5]
	if (argument_count>=7)
	{
	c.hspeed=argument[6]
	}
	if (argument_count>=8)
	{
	c.vspeed=argument[7]
	}
	
	return c;


}
