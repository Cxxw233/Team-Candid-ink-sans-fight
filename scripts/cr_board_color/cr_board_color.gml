// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cr_board_color(Color=c_white,Speed){
	var(COLOR_GET_R)=color_get_red(Color)
	var(COLOR_GET_G)=color_get_green(Color)
	var(COLOR_GET_B)=color_get_blue(Color)
	if(instance_exists(obj_bk))
	{
	var(COLOR_GET_bR)=color_get_red(obj_bk.colour)
	var(COLOR_GET_bG)=color_get_green(obj_bk.colour)
	var(COLOR_GET_bB)=color_get_blue(obj_bk.colour)
	}
	var(_INSTANCE_CREATE_COLOR_CHANGE_OBJECT)=instance_create_depth(0,0,0,obj_bk_col)
	_INSTANCE_CREATE_COLOR_CHANGE_OBJECT.rgo=(COLOR_GET_R-COLOR_GET_bR)/Speed
	_INSTANCE_CREATE_COLOR_CHANGE_OBJECT.bgo=(COLOR_GET_B-COLOR_GET_bB)/Speed
	_INSTANCE_CREATE_COLOR_CHANGE_OBJECT.ggo=(COLOR_GET_G-COLOR_GET_bG)/Speed
	
	_INSTANCE_CREATE_COLOR_CHANGE_OBJECT.rto=COLOR_GET_R
	_INSTANCE_CREATE_COLOR_CHANGE_OBJECT.bto=COLOR_GET_B
	_INSTANCE_CREATE_COLOR_CHANGE_OBJECT.gto=COLOR_GET_G
	
}