function rtbyptx(argument0, argument1, argument2) {
	//rtbyptx(dx,dy,angle)
	return 
	  lengthdir_x(
	    point_distance(0,0,argument0,argument1),
	    point_direction(0,0,argument0,argument1)
	  )
	  +
	  lengthdir_x(
	    point_distance(argument0,argument1,0,0),
	    point_direction(argument0,argument1,0,0)+argument2
	  )



}
