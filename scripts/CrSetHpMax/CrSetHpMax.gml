/// @desc	置HP最大值
/// @arg	{Real}		val
function CrSetHpMax(val) {
	obj_system.starthp = real(val);
	return;
}