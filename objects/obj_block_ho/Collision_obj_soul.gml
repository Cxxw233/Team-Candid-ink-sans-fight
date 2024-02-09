if(a>20)
{
if(xt=0||xt=2)
{
switch obj_soul.buff
{
	case 0:
	obj_soul.buff = 1
    break
    case 2:
    obj_soul.buff = 0
    break
    case 1:
    obj_soul.buff = 0
    with (obj_soul)
    event_user(10)
    break
    }
	if(xtt=1)
	{
	mk1=instance_create_depth(choose(-20,660),y+irandom_range(-10,10),0,obj_block_ho)
	mk1.xt=xt	
	mk1.yscale=60+irandom_range(-5,5)
	}
	if(xtt=2)
	{
	mk=instance_create_depth(320,320,depth,obj_block_ho)
	mk.xt=xt+2
	}
    instance_destroy()
}
if(xt=1||xt=3)
{
switch obj_soul.buff
{
	case 0:
	obj_soul.buff = 2
    break
    case 1:
    obj_soul.buff = 0
    break
    case 2:
    obj_soul.buff = 0
    with (obj_soul)
    event_user(10)
    break
    }
	if(xtt=1)
	{
	mk1=instance_create_depth(choose(-20,660),y+irandom_range(-10,10),0,obj_block_ho)
	mk1.xt=xt	
	mk1.yscale=60+irandom_range(-5,5)
	}
	if(xtt=2)
	{
	mk=instance_create_depth(320,320,depth,obj_block_ho)
	mk.xt=xt+2
	}
    instance_destroy()
}
}