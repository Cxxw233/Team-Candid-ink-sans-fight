function SwScreen(){
	window_set_fullscreen(false);
	speed=15;
	if (x>=(display_get_width()-640)){
		direction=random_range(-91,-269);
	}
	if (x<=0){
		direction=random_range(-89,89);
	}
	if (y>=(display_get_height()-480)){
		direction=random_range(1,179);
	}
	if (y<=0){
		direction=random_range(-179,-1);
	}
	window_set_position(x,y);
}

switch(global.buffer){
	case "screen":
		SwScreen();
break;
	case "viewS":
	if(instance_exists(camera)) then {
		with(camera){
			x=random_range(-320,-480);y=random_range(-320,-480);
			speed=random_range(20,50);
			scale_x=0.4;scale_y=0.4;
			if (x>=(width-640)) then direction=random_range(-91,-269);
			if (x<=0) then direction=random_range(-89,89);
			if (y>=(height-480)) then direction=random_range(1,179);
			if (y<=0) then direction=random_range(-179,-1);
		};
	};
break;
};