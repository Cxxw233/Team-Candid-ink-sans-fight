image_speed=0

time=0
for(i=0;i<12;i+=1){
	JIQIREN[i]=instance_create_depth(x+lengthdir_x(64,i*30),y+lengthdir_y(64,i*30),0,robotBut)
}

stop = true;