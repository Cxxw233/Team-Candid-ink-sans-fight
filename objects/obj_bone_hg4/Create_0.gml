//骨头移动的幅度
heig=12
//骨头的数量
num=20
//出场のcode
iy=-600
easing_execute(id,"iy",easing_class.sine,easing_class.out,iy,600,50)
for(i=0;i<num;i+=1)
{
obj[i]=instance_create_depth(x+i*11,y,-1000,obj_bone_hg3)
time[i]=irandom_range(-15,15)
}



a=0 