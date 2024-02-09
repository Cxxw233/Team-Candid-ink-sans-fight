if(xt=1)
{

a+=1
if a<11{
  image_alpha=a*0.1
}
if a>40{
  image_alpha-=0.1
  if image_alpha<0{
    instance_destroy()
  }
}
direction+=5

}