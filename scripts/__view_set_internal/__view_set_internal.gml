function __view_set_internal(argument0, argument1, argument2) {
	var __prop = argument0;
	var __index = argument1;
	var __val = argument2;

	switch(__prop)
	{
	case e__vw.xview: var __cam = view_get_camera(__index); camera_set_view_pos(__cam, __val, camera_get_view_y(__cam)); break;
	case e__vw.yview: var __cam = view_get_camera(__index); camera_set_view_pos(__cam, camera_get_view_x(__cam), __val); break;
	case e__vw.wview: var __cam = view_get_camera(__index); camera_set_view_size(__cam, __val, camera_get_view_height(__cam)); break;
	case e__vw.hview: var __cam = view_get_camera(__index); camera_set_view_size(__cam, camera_get_view_width(__cam), __val); break;
	case e__vw.angle: var __cam = view_get_camera(__index); camera_set_view_angle(__cam, __val); break;
	case e__vw.hborder: var __cam = view_get_camera(__index); camera_set_view_border(__cam, __val, camera_get_view_border_y(__cam)); break;
	case e__vw.vborder: var __cam = view_get_camera(__index); camera_set_view_border(__cam, camera_get_view_border_x(__cam), __val); break;
	case e__vw.hsspeed: var __cam = view_get_camera(__index); camera_set_view_speed(__cam, __val, camera_get_view_speed_y(__cam)); break;
	case e__vw.vsspeed: var __cam = view_get_camera(__index); camera_set_view_speed(__cam, camera_get_view_speed_x(__cam), __val); break;
	case e__vw.object: var __cam = view_get_camera(__index); camera_set_view_target(__cam, __val); break;
	case e__vw.viisible: __res = view_set_visible(__index, __val); break;
	case e__vw.xport: __res = view_set_xport(__index, __val); break;
	case e__vw.yport: __res = view_set_yport(__index, __val); break;
	case e__vw.wport: __res = view_set_wport(__index, __val); break;
	case e__vw.hport: __res = view_set_hport(__index, __val); break;
	case e__vw.camera: __res = view_set_camera(__index, __val); break;
	case e__vw.surfaceid: __res = view_set_surface_id(__index, __val); break;
	default: break;
	};

	return 0;


}
