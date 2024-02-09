repeat(9)
{
with(instance_create_depth(x,y,depth,obj_bone))
{
var angle=random(360)
direction=angle
image_angle=angle
speed=6
}
}
instance_destroy()