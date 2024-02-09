if((xt=1 || xt=3) && y>0)
{
instance_destroy()
}
if(xt=4)
{
instance_destroy()
}
if(xt=5)
{
instance_destroy()
}
if(xt=9)
{
repeat(12)
{
if(y>0)
{
var srt = instance_create_depth(x,20,depth,but_outer_star)
srt.xt=10
srt.direction=irandom_range(20,160)
srt.d=choose(1,2)
}
}
instance_destroy()
}
if(xt=10)
{
if(y<-600)
{
instance_destroy()
}
}
if(xt=19 || xt=114514)
{
instance_destroy()
}