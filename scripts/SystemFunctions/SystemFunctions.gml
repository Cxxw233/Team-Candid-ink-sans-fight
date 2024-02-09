///TODO
function draw_line_angle(x1, y1, x2, y2, width, angle) {
    var length = point_distance(x1, y1, x2, y2);
    var center_x = (x1 + x2) / 2;
    var center_y = (y1 + y2) / 2;

	// len * dcos / dsin (rad)
    var x_offset = lengthdir_x(length / 2, angle + 90);
    var y_offset = lengthdir_y(length / 2, angle + 90);

    var x1_rotated = center_x + x_offset;
    var y1_rotated = center_y + y_offset;
    var x2_rotated = center_x - x_offset;
    var y2_rotated = center_y - y_offset;

    return draw_line_width(x1_rotated, y1_rotated, x2_rotated, y2_rotated, width);
}

function collision_line_angle(x1, y1, x2, y2, angle, obj, prec, notme) {
    var length = point_distance(x1, y1, x2, y2);
    var center_x = (x1 + x2) / 2;
    var center_y = (y1 + y2) / 2;

	// len * dcos / dsin (angle)
    var x_offset = lengthdir_x(length / 2, angle + 90);
    var y_offset = lengthdir_y(length / 2, angle + 90);

    var x1_rotated = center_x + x_offset;
    var y1_rotated = center_y + y_offset;
    var x2_rotated = center_x - x_offset;
    var y2_rotated = center_y - y_offset;

    return collision_line(x1_rotated, y1_rotated, x2_rotated, y2_rotated, obj, prec, notme);
}

function MakeButWhiteBlock(){
	///@arg x,y,depth,xscale,yscale,duration,*keep
	inst=instance_create_depth(argument[0],argument[1],argument[2],ButWhiteBlock);
	inst.xs=argument[3];
	inst.ys=argument[4];
	inst.xtt=argument[5];
	inst.xta=0;
	if(argument_count>=6){
		inst.xta=argument[6];
	}
	return inst;
	delete inst;
}
function DestroyRobot(){
	instance_destroy(robot);
	instance_destroy(robotBut);
	instance_destroy(robotBlockDie);
	instance_destroy(robotDie);
}
/// @description cr_LN_K(x,y,angle,long,time,color)
/// @param x
/// @param y
/// @param angle
/// @param long
/// @param time
/// @param color
function cr_LN_K() {
	var (L_AND_N_KNIFE)=instance_create_depth(argument[0],argument[1],0,obj_LN_K)
	L_AND_N_KNIFE.image_angle=argument[2] 
	L_AND_N_KNIFE.bt=argument[3]
	L_AND_N_KNIFE.terminal=argument[4]
	L_AND_N_KNIFE.image_blend=argument[5]
}

