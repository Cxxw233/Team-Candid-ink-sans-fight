ix=2000
for(i=0;i<20;i+=1)
{
obj[i]=instance_create_depth(x+lengthdir_x(ix,i*12),y+lengthdir_y(ix,i*12),-50,obj_bone_hg3)
}
//easing_execute(id,"ix",10,0,ix,-1950,50)
easing_execute(id,"ix",easing_class.sine,easing_class.out,ix,-1950,50)