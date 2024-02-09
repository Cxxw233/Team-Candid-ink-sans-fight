_execute_bk = function(var_name, range, duration) {
	var _var = variable_global_get(var_name);
	if (_var > range) {
		easing_execute(global, string(var_name), 0, 0, _var, -(real(_var - range)), duration);
	} else if (_var < range) {
		easing_execute(global, string(var_name), 0, 0, _var, +abs(real(_var - range)), duration);
	}
}

duration = 13;

event_user(0);