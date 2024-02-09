a=0
xt=0
xtt=0
image_speed=0
image_alpha=0
if(x>320)
{
speed=0//-5
hj = -0.3
}
if(x<=0)
{
speed=0//5
hj = 0.3
}
if(x>320)
easing_execute(id,"speed",easing_class.sine,easing_class.in,speed,-10,10)
if(x<=0)
easing_execute(id,"speed",easing_class.sine,easing_class.in,speed,10,10)
yscale=50
xscale=2
//--------------------------------------
c = part_emitter_create(global.se)
emit = part_emitter_create(global.se)
//cbrk=1
