///@arg 创建x,创建y,到达X,到达Y,Xsacle,Yscale,创angle,到ANGLE,Depth,颜色
function scgb_six() {
	c=instance_create_depth(argument[0],argument[1],argument[8],obj_gb_six)
	c._xstart=argument[0]
	c._ystart=argument[1]
	c._x=argument[2]
	c._y=argument[3]
	c.image_xscale=argument[4]
	c.image_yscale=argument[5]
	c._anglestart=argument[6]
	c.image_angle=argument[6]
	c._angle=argument[7]
	c.image_blend=argument[9]




}
