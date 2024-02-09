function tred(menu_text, turn) {
	instance_create_depth(0, 0, 0, obj_bk_set0);
	CrSoulReset();
	CrSetMenuText(menu_text);
	CrSetTurn(turn);
	instance_destroy();
}

function tredp4(turn) {
	instance_create_depth(0, 0, 0, obj_bk_set0);
	CrSoulReset();
	for (var n = 0, i = 1; i < 8; ++ i) {
		n += global.dye[i];
	}
	var text = ( n > -7 ? "* But nothing happened." : "<cred><t12>* <t24>.<t4>.<t4>.<t12>/* <t12>N<t8>o<t8>w<t8>!");
	CrSetMenuText(text);

	CrSetTurn(turn);
	instance_destroy();
}