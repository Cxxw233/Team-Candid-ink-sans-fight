///@desc BattleTurn
switch (_testd){
	case 1:
		var turn=asset_get_index("turn"+CrGetTurnNum());
		instance_create_depth(0,0,0,turn);
break;
	case 5:
		instance_create_depth(0,0,0,turn99);
break;
	default:
		instance_create_depth(0, 0, 0, global.turn);
break;

};

