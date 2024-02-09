if(xt=0)
{
	a++
	if (a=1)
	{
	mk1=instance_create_depth(x,y,0,objEspeBk)
	mk1.xt=1
    easing_execute(mk1, "x", 0, 12, 320, -100, 60)
	mk2=instance_create_depth(x,y,0,objEspeBk)
	mk2.xt=2
	easing_execute(mk2, "x", 0, 12, 320, 100, 60)
	if instance_exists(obj_soul)
    {
        mk=instance_create_depth(obj_soul.x, obj_soul.y, 0, obj_soul_espe)
        obj_soul_espe.moveable = 0
		obj_soul.moveable = 0
		obj_soul.xt=7
		easing_execute(obj_soul, "x", 0, 12, obj_soul.x, 100, 60)
		easing_execute(obj_soul_espe, "x", 0, 12, obj_soul.x, -100, 60)
    }
	instance_destroy()
	}
}