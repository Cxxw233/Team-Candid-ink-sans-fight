function __view_get(argument0, argument1) {
	var __prop = argument0;
	var __index = argument1;

	var __res = -1;

	switch(__prop)
	{
	case e__vw.xview: var __cam = view_get_camera(__index); __res = camera_get_view_x(__cam); break;
	case e__vw.yview: var __cam = view_get_camera(__index); __res = camera_get_view_y(__cam); break;
	case e__vw.wview: var __cam = view_get_camera(__index); __res = camera_get_view_width(__cam); break;
	case e__vw.hview: var __cam = view_get_camera(__index); __res = camera_get_view_height(__cam); break;
	case e__vw.angle: var __cam = view_get_camera(__index); __res = camera_get_view_angle(__cam); break;
	case e__vw.hborder: var __cam = view_get_camera(__index); __res = camera_get_view_border_x(__cam); break;
	case e__vw.vborder: var __cam = view_get_camera(__index); __res = camera_get_view_border_y(__cam); break;
	case e__vw.hsspeed: var __cam = view_get_camera(__index); __res = camera_get_view_speed_x(__cam); break;
	case e__vw.vsspeed: var __cam = view_get_camera(__index); __res = camera_get_view_speed_y(__cam); break;
	case e__vw.object: var __cam = view_get_camera(__index); __res = camera_get_view_target(__cam); break;
	case e__vw.viisible: __res = view_get_visible(__index); break;
	case e__vw.xport: __res = view_get_xport(__index); break;
	case e__vw.yport: __res = view_get_yport(__index); break;
	case e__vw.wport: __res = view_get_wport(__index); break;
	case e__vw.hport: __res = view_get_hport(__index); break;
	case e__vw.camera: __res = view_get_camera(__index); break;
	case e__vw.surfaceid: __res = view_get_surface_id(__index); break;
	default: break;
	};

	return __res;


}
