if(xt=0)
{
if (y < 340)
    instance_destroy()
}
if(xt=1)
{
image_alpha-=0.1
if image_alpha<=0 then instance_destroy()
}