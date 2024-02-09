text="";

event_user(3);

if (variable_instance_exists(id, "_list_inst")) {
	if (ds_exists(_list_inst, ds_type_list)) {
		ds_list_destroy(_list_inst);
	}
}
if (variable_instance_exists(id, "_list_cmd")) {
	if (ds_exists(_list_cmd, ds_type_list)) {
		ds_list_destroy(_list_cmd);
	}
}
if (variable_instance_exists(id, "_map_macro")) {
	if (ds_exists(_map_macro, ds_type_map)) {
		ds_map_destroy(_map_macro);
	}
}
