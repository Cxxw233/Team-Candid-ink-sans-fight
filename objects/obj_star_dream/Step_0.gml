if (sb == 0) {
	if xt=1{
	  de=irandom(1)
	  xt=2
	}
	if de=1{
	  if fff=0{
	    time=irandom(10)
	    fff=1
	  }
	  tl1+=1
	  if tl1>time{
	    instance_destroy()
	    instance_create_depth(x,y,0,obj_dart_nightmare)
	  }
	}
	if xt=3 && de=0{
	  tl1+=1
	  if tl1=1{
	    sp=speed
	    gravity=0
	  }
	  if tl1<11{
	    speed=sp*(10-tl1)*0.1
	  }
	  if tl1=21 long=point_distance(x,y,320,298)
	  if tl1>21 && (tl1-21)*(tl1-20)/20<long && speed<5 move_towards_point(320,298,(tl1-21)*0.1)
	  if (tl1-21)*(tl1-20)/20>long speed=3
	  if (tl1-21)*(tl1-20)/20>long instance_destroy()
	}
	image_angle+=anj
} else {
	if (sb == 1) {
		if xt=1{
	  de=irandom(1)
	  xt=2
	}
	if de=1{
	  if fff=0{
	    time=irandom(10)
	    fff=1
	  }
	  tl1+=1
	  if tl1>time{
	    instance_destroy()
	    instance_create_depth(x,y,0,obj_dart_nightmare)
	  }
	}
	if xt=3 && de=0{
	  tl1+=1
	  if tl1=1{
	    sp=speed
	    gravity=0
	  }
	  if tl1<11{
	    speed=sp*(10-tl1)*0.1
	  }
	  if tl1=21 long=point_distance(x,y,320,298)
	  if tl1>21 && (tl1-21)*(tl1-20)/20<long && speed<5 move_towards_point(320,298,(tl1-21)*0.1)
	  if (tl1-21)*(tl1-20)/20>long speed=3
	  if (tl1-21)*(tl1-20)/20>long instance_destroy()
	}
	image_angle+=anj
		ntime ++;
		if (ntime mod 2 == 0) {
			with (instance_create_depth(x, y, depth, empty)) {
				destroy = true;
				image_alpha = 1;
				sprite_index = other.sprite_index;
				image_angle = other.image_angle;
				easing_execute(id, "image_alpha", 0, 0, image_alpha, - 1, 12);
			}
		}
	}
}