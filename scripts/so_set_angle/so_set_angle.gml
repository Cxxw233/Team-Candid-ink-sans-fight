///@arg "up"or"down"or"left"or"right"
function so_set_angle() {
	if(obj_soul.xt=1)
	{
	with(obj_soul)
	{
	gravity=0
	hspeed=0
	vspeed=0
	jump=2
	gmu=0
	b=0
	a=0
	}
	obj_soul.angle=argument[0]
	}



}
