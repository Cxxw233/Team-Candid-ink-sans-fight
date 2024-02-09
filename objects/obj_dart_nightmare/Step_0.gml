image_angle+=4
if y>500 instance_destroy()

if(y>global.ih+45&&xt=0)
{
	if(irandom_range(0,2)=0&&xt=0){
		vspeed=0.
		gravity=0
		friction = -0.3
		if instance_exists(obj_soul)
		{
			image_angle = (point_direction(x, y, obj_soul.x, obj_soul.y) + 90)
			direction = point_direction(x, y, obj_soul.x, obj_soul.y)
		}
		speed = 0.3
		xt=1
	}
	xt=1
}