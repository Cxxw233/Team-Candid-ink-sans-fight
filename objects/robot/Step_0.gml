time+=3
vspeed=4
for(i=0;i<12;i+=1)
{
if(instance_exists(JIQIREN[i]))
{
JIQIREN[i].x=x+lengthdir_x(64,i*30+time)
JIQIREN[i].y=y+lengthdir_y(64,i*30+time)
}
}
if (stop) {
	if(y>400){
		vspeed=0;
	}
}
