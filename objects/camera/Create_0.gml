function CameraReset(){
	///@desc Reset
	x=0;
	y=0;
	width=640;
	height=480;
	scale_x=1;
	scale_y=1;
	angle=0;
	target=noone;

	shake_x=0;
	shake_y=0;
	shake_speed_x=0;
	shake_speed_y=0;
	shake_random_x=false;
	shake_random_y=false;
	shake_decrease_x=-1;
	shake_decrease_y=-1;
	_shake_pos_x=0;
	_shake_pos_y=0;
	_shake_time_x=0;
	_shake_time_y=0;
	_shake_positive_x=true;
	_shake_positive_y=true;
};
CameraReset();
event_user(0);
_camera=camera_create_view(x,y,width/scale_x,height/scale_y,angle,target,xspd,yspd,width/scale_x/2,height/scale_y/2);

