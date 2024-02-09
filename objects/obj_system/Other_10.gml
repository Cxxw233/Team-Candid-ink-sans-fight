/// @desc Error-Dog
if (release_mode) {
	if (global.phase >= release_phase) {
		var text, result;
		text[0] = "Save file corrupted! - " + release_version;
		text[1] = "存档文件损坏！ - " + release_version;
		result = (lang_load_quick() == "eng" ? text[0] : text[1]);
		window_set_caption(string(result));
		with (camera) {
			instance_destroy();
		}
		room_goto(Room_dog);
	}
	if (!check_bin_byte_complete()) {
		var text, result;
		text[0] = "Font file corrupted! - " + release_version;
		text[1] = "字体文件损坏！ - " + release_version;
		result = (lang_load_quick() == "eng" ? text[0] : text[1]);
		window_set_caption(string(result));
		with (camera) {
			instance_destroy();
		}
		room_goto(Room_dog);
	}
}