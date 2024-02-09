//show_debug_message("IMSB:{0} / {1}",x,y);
if(mode==0){
	if (xt = 1) {
	    speed += 0.3
	    image_angle = direction
	    if (y > global.iy - 5) {
	        repeat(4) {
	            with(instance_create_depth(x, y, -9, but_fire)) {
	                des = 1
	                image_xscale = 0.5
	                image_yscale = 0.5
	                speed = 9
	                xt = 2
	                direction = random_range(-135, -45)
	            }
	        }
	        instance_destroy()
	    }
	}
	if (xt = 2) {
	    speed += 0.3
	    image_angle = direction
	}
};
image_angle+=rot;
if(mode==1){
	time++;
	if(time==1){
		for(var i=-10;i<2000;i+=30){
			with(instance_create_depth(i,-50,depth,but_fire)){
				mode=-1;
				rot=5;
				image_xscale=0.6;image_yscale=0.6;
				vspeed=4;
				hspeed=-4;
			};
		};
	};
};
if(mode==2){
	time++;
	if(time==1){
		for(var i=-2000;i>10;i+=30){
			with(instance_create_depth(i,-50,depth,but_fire)){
				mode=-1;
				rot=5;
				image_xscale=0.6;image_yscale=0.6;
				vspeed=4;
				hspeed=4;
			};
		};
	};
};
if(y>1000){
	//instance_destroy();
};
if(des==-20){
	time++;
	if(time==300){
		instance_destroy();
	};
};