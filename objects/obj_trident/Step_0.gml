a++
if(a>time1&&a<time3)
{
	y+=(global.iy-10-y)*time2/10
	//(目标 - 目前) * 速度
	//easing_execute(id,"y",easing_class.sine,easing_class.in,global.ih+20,-(global.ih-global.iy)-10,time2)
}
if(a>time3)
{
	y+=(global.ih+10-y)*time4/10
	//easing_execute(id,"y",easing_class.sine,easing_class.in,global.iy-10,(global.ih-global.iy)+10,time4)
}