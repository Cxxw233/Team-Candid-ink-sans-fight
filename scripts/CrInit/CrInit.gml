function CrInit() {
	
	// 重要release管理 - public.
	#macro release_mode			true		//	发布release - public版本时，务必将此常量改为true. 其目的是为了限制玩家权限.
	#macro release_phase		5			//	作为release_mode的附属常量，当玩家游玩阶段大于等于此常量时，会弹出坏档狗.
	#macro release_version		"1.4.0"		//	用来指示release - public的版本号.
	// 重要完整性检验，其字节大小为常量.
	#macro file_byte_chs		18214356
	#macro file_byte_mnc		10720
	#macro file_byte_dtm_mono	24412
	#macro file_byte_comicsans	14128
	#macro file_byte_sanschs	3564264
	
	#region GlobalVar
		global.Name="Chara";
		global.hp=20;
		global.tre=1;
		global.ATK=0;
		global.LV=0;
		//global.ver="";
		global.ix=38;
		global.iw=602;
		global.ih=385;
		global.iy=256;
		global.egg = irandom(200);
		globalvar _lang,_lang_text;
		globalvar NewSpriteEnabled;
	enum ink_face { // temp.
		scientist = 15,	
		fresh = 16,
		nothing = 17,
		espe = 18,
		sudden = 38,
		reaper = 19,
		epic = 20,
		trust = 21,
		nm_dream = 36,
		fatal = 24
	}
	enum ui_board {
		ix = 38,
		iw = 602,
		ih = 385,
		iy = 256
	}
	enum battle_color {
		trust = #CD03FF,
		epic = #8000FF,
		sudden = #B93B3C,
	}
	if(!script_exists(asset_get_index("BKInit"))){
		function BKInit(){
			global.down=global.ih-320;
			global.up=320-global.iy;
			global.left=320-global.ix;
			global.right=global.iw-320;
		};
	};
	
	BKInit();
	CrText();
	CrFont();
	CrAudio();
		
	#endregion;
	#region Enum
		
		enum dir_val {
			right = 0,
			up = 90,
			left = 180,
			down = 270
		}
		
		enum depthBattle{
			Normal=0,
			High=-1,
			Low=1,
			Fader=-999,
			LowBk=13
		};
		enum ink_ss{
			sup,
			sdown,
			sleft,
			sright
		}
		enum Lang{
			Zh,
			En
		};
		enum bones{
			white,
			orange,
			blue,
			vertical=90
		};
		enum wall{
			tip=2
		}
	#endregion;
	#region BK_Macro
		#macro BKIW global.iw;
		#macro BKIX global.ix;
		#macro BKIY global.iy;
		#macro BKIH global.ih;
		#macro TRUE true;
		#macro FALSE false;
	#endregion;
	
	//NewSpriteEnabled=TRUE;
	
	show_debug_message("Script: CrInit execute.");
	return true;
}
	
function CrUninit(){
	if(variable_global_exists("Name")) then delete global.Name;
	if(variable_global_exists("hp")) then delete global.hp;
	if(variable_global_exists("tre")) then delete global.tre;
	if(variable_global_exists("ATK")) then delete global.ATK;
	if(variable_global_exists("LV")) then delete global.LV
	//if(variable_global_exists("ver")) then delete global.ver;
	if(variable_global_exists("ix")) then delete global.ix;
	if(variable_global_exists("iy")) then delete global.iy;
	if(variable_global_exists("iw")) then delete global.iw;
	if(variable_global_exists("ih")) then delete global.ih;
	if(variable_global_exists("down")) then delete global.down;
	if(variable_global_exists("left")) then delete global.left;
	if(variable_global_exists("right")) then delete global.right;
	if(variable_global_exists("up")) then delete global.up;
	
	CrUnfont();
	CrUntext();
	CrUnaudio();
	
	show_debug_message("Script: CrUninit execute.");
};
