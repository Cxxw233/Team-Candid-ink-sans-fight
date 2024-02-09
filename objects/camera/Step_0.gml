

if(shake_x>0){
		if(_shake_time_x>0){
			_shake_time_x-=1;
		}else{
			if(!shake_random_x){
				if(_shake_positive_x){
					_shake_pos_x=shake_x;
				}else{
					shake_x-=shake_decrease_x;
					_shake_pos_x=-shake_x;
				}
				_shake_positive_x=!_shake_positive_x;
			}else{
				_shake_pos_x=random_range(-shake_x,shake_x);
				shake_x-=shake_decrease_x;
			}
			_shake_time_x=shake_speed_x;
		}
	}else{
		shake_speed_x=0;
		shake_decrease_x=1;
		shake_random_x=false;
		_shake_time_x=0;
		_shake_pos_x=0;
		_shake_positive_x=true;
	}
	if(shake_y>0){
		if(_shake_time_y>0){
			_shake_time_y-=1;
		}else{
			if(!shake_random_y){
				if(_shake_positive_y){
					_shake_pos_y=shake_y;
				}else{
					shake_y-=shake_decrease_y;
					_shake_pos_y=-shake_y;
				}
				_shake_positive_y=!_shake_positive_y;
			}else{
				_shake_pos_y=random_range(-shake_y,shake_y);
				shake_y-=shake_decrease_y;
			}
			_shake_time_y=shake_speed_y;
		}
	}else{
		shake_speed_y=0;
		shake_decrease_y=1;
		shake_random_y=false;
		_shake_time_y=0;
		_shake_pos_y=0;
		_shake_positive_y=true;
	}


	if(!instance_exists(target)){
		camera_set_view_target(_camera,noone);
		camera_set_view_pos(_camera,x+_shake_pos_x,y+_shake_pos_y);
	}else{
		camera_set_view_target(_camera,target);
		camera_set_view_border(_camera,width/scale_x/2,height/scale_y/2);
		x=camera_get_view_x(_camera);
		y=camera_get_view_y(_camera);
	}
	camera_set_view_size(_camera,width/scale_x,height/scale_y);
	camera_set_view_angle(_camera,angle);