/// @desc	初始化物品.
function CrItemInit() {
	temnum = 8;
	
	tem[0] = _lang_text[$ "menu_text"][$ "item"][$ "butterscotch_pie"];
	tem[1] = _lang_text[$ "menu_text"][$ "item"][$ "instant_noodles"];
	tem[2] = _lang_text[$ "menu_text"][$ "item"][$ "face_steak"];
	tem[3] = _lang_text[$ "menu_text"][$ "item"][$ "snowman_piece"];
	tem[4] = _lang_text[$ "menu_text"][$ "item"][$ "snowman_piece"];
	tem[5] = _lang_text[$ "menu_text"][$ "item"][$ "snowman_piece"];
	tem[6] = _lang_text[$ "menu_text"][$ "item"][$ "legendary_hero"];
	tem[7] = _lang_text[$ "menu_text"][$ "item"][$ "legendary_hero"];
	
    tema[0] = real( global.egg == 1 ? 3.14 : 99);
	tema[1] = 90;
	tema[2] = 60;
	tema[3] = 45;
	tema[4] = 45;
	tema[5] = 45;
	tema[6] = 40;
	tema[7] = 40;
	
	var _dot = ( _lang == "chs" ? "。" : "."), _hp = ( _lang == "chs" ? "HP。" : " HP." );
	for (var i = 0; i < temnum; i ++) {
		temt[i] = _item_add([tem[i], _dot, tema[i], _hp]);
	}
}

/// @desc	理论上用来添加物品（游戏开始前）.
/// @arg	{Array}		str		需要4D数组，分别为物品名字，标点，回复值，'HP'字符.
function _item_add(str) {
	var base; 
	base[0] = _lang_text[$ "menu_text"][$ "item"][$ "based_item0"];
	base[1] = _lang_text[$ "menu_text"][$ "item"][$ "based_item1"];
	
	return (string(string(base[0]) + string(str[0]) + string(str[1]) + string(base[1]) + string(str[2]) + string(str[3])));
}

function CrItemInitTest() {
	//
	tem[0]="Butterscotch Pie."
	tem[1]="Instant Noodles."
	tem[2]="Face Steak."
	tem[3]="Snowman Piece."
	tem[4]="Snowman Piece."
	tem[5]="Snowman Piece."
	tem[6]="Legendary Hero."
	tem[7]="Legendary Hero."
	
    tema[0]=99
	tema[1]=90
	tema[2]=60
	tema[3]=45
	tema[4]=45
	tema[5]=45
	tema[6]=40
	tema[7]=40
	
	heal[0]="* You ate the ";
	heal[1]="* Your recovered ";
	heal[2]="* ATTACT increased by ";
	att[0]="4";
	
	temt[0]=string(heal[0])+string(tem[0])+"/"+string(heal[1])+string(tema[0])+" HP.";
	temt[1]=string(heal[0])+string(tem[1])+"/"+string(heal[1])+string(tema[1])+" HP.";
	temt[2]=string(heal[0])+string(tem[2])+"/"+string(heal[1])+string(tema[2])+" HP.";
	temt[3]=string(heal[0])+string(tem[3])+"/"+string(heal[1])+string(tema[3])+" HP.";
	temt[4]=string(heal[0])+string(tem[4])+"/"+string(heal[1])+string(tema[4])+" HP.";
	temt[5]=string(heal[0])+string(tem[5])+"/"+string(heal[1])+string(tema[5])+" HP.";
	temt[6]=string(heal[0])+string(tem[6])+"/"+string(heal[2])+string(att[0])+"/"+string(heal[1])+string(tema[6])+" HP.";
	temt[6]=string(heal[0])+string(tem[6])+"/"+string(heal[2])+string(att[0])+"/"+string(heal[1])+string(tema[7])+" HP.";
	
	temnum=8



}
