image_index=3
if(instance_exists(obj_soul) )
{
if (st=0 &&  obj_soul.y>y+8 && obj_soul.vspeed<0)
{
st = 1
obj_soul.vspeed=0
}
}



