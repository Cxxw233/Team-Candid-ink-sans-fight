/// @desc 用来检查文件字节是否一致.
/// @arg {String}	frame	路径
/// @arg {Real}		byte	字节
function file_bin_byte_lambda(frame, byte) {
	var file = file_bin_open(frame, 0);
	var size = file_bin_size(file); 
	file_bin_close(file);
	return (size == byte);
}