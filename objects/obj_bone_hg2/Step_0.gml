for(i=0;i<20;i+=1)
{
if instance_exists(obj[i])
{
obj[i].x=x+lengthdir_x(ix,image_angle+i*18)
obj[i].y=y+lengthdir_y(ix,image_angle+i*18)
obj[i].image_angle=point_direction(obj[i].x,obj[i].y,x,y)
}
}
image_angle+=5


/*
3D Code
for(i=0;i<20;i+=1)
{
obj[i].x=x+lengthdir_x(ix,image_angle+i*18)
obj[i].y=y+lengthdir_y(ix,image_angle+i*13)
obj[i].image_angle=point_direction(obj[i].x,obj[i].y,x,y)
}
image_angle+=5

