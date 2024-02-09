a++
if (a == 1)
    xt = 1
if (xt == 1)
{
    //x += (_x - x) * 0.1 //(目标 - 目前) * 速度
	//y += (_y - y) * 0.1
	//image_angle += (_angle - image_angle) * 0.1
	if(a=5){
	easing_execute(id,"x",easing_class.sine,easing_class.in,x,+((_x-x)),10)
	easing_execute(id,"y",easing_class.sine,easing_class.in,y,+((_y-y)),10)
	easing_execute(id,"image_angle",easing_class.sine,easing_class.in,image_angle,+((_angle-image_angle)),10)
	}
	if(a=80){
	x=_x;y=_y;image_angle=_angle;
	}
}
if (x =_x && y =_y && image_angle =_angle && xt == 1)
    xt = 2;
if (xt == 2)
{
    c=instance_create_depth(x,y-50,depth+1,obj_gb_sixx)
	c.image_angle=image_angle
    image_index = 1
    xt = 3
	instance_create_depth(0,0,0,obj_shake);
}
if (xt == 3)
{
    tl1++
    if (tl1 == 10)
    {
        image_index = 2
        tl1 = 0
        xt = 4
    }
}
if (xt == 4)
{
    tl1++
    if (tl1 == 10)
    {
        image_index = 3
        tl1 = 0
        xt = 5
    }
}
if (xt == 5)
{
    tl1++
		x += (_xstart - x) * 0.1
        y += (_ystart - y) * 0.1
		image_angle += (_anglestart - image_angle) * 0.1
    if (tl1 >= 10 && x =_xstart && y =_ystart && image_angle =_anglestart)
        instance_destroy()
}

 
