///@arg 创建x,创建y,到达X,到达Y,Xsacle,Yscale,创angle,到ANGLE,发射倒计时,Depth,存在时间,大小,颜色,图片*
function scgb() {
	c=instance_create_depth(argument[0],argument[1],argument[9],obj_gb)
	c.idealx=argument[2]
	c.idealy=argument[3]
	c.image_xscale=argument[4]
	c.image_yscale=argument[5]
	c.image_angle=argument[6]
	c.idealrot=argument[7]
	c.pause=argument[8]
	c.terminal=argument[10]
	c.bt=argument[11]
	c.image_blend=argument[12]
	if (argument_count>=14)
	c.sprite_index=argument[13]
	return c;



}
