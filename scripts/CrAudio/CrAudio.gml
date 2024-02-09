function CrAudio(){
	#macro audio_bgm_path_base string(working_directory)+"datafiles/bgm/"
	
	globalvar snd_over; snd_over=audio_create_stream(audio_bgm_path_base+"snd_over.ogg");
	if (!variable_global_exists("phase")) {
		return false;	
	}
	ini_open("savedata.ini");
	var p = ini_read_real("System", "phase", 1);
	ini_close();
	
	switch(p){
		case 1 :
			globalvar bgmink_1;//,bgmink_1old;
			bgmink_1=audio_create_stream(audio_bgm_path_base+"bgmink_1.ogg");
			//bgmink_1old=audio_create_stream(audio_bgm_path_base+"bgmink_1old.ogg");
	break;
		case 2 :
			globalvar bgmink_2;
			bgmink_2=audio_create_stream(audio_bgm_path_base+"bgmink_2.ogg");
	break;
		case 3 :
		case 4 :
			globalvar bgmink_3,bgmink_4;
			bgmink_3=audio_create_stream(audio_bgm_path_base+"bgmink_3.ogg");
			bgmink_4=audio_create_stream(audio_bgm_path_base+"bgmink_4.ogg");
	break;
		case 5 :
			globalvar bgmink_5;
			bgmink_5=audio_create_stream(audio_bgm_path_base+"bgmink_5.ogg");
	break;
		default :
			show_error("error.#xxxx0001", true);
	break;
	};
	
	show_debug_message("Script: CrAudio execute.");
};

function CrUnaudio(){
	if(variable_global_exists("snd_over") && !is_undefined(snd_over)){
		if(audio_exists(snd_over)){
			audio_destroy_stream(snd_over);
		}
		delete snd_over;
	}
	switch(global.phase){
		case 1 : 
		{
			if(variable_global_exists("bgmink_1") && !is_undefined(bgmink_1)){
				if(audio_exists(bgmink_1)){
					audio_destroy_stream(bgmink_1);
				}
			}
		}
		delete bgmink_1;
	break;
		case 2 :
		{	
			if(variable_global_exists("bgmink_2") && !is_undefined(bgmink_2)){
				if(audio_exists(bgmink_2)){
					audio_destroy_stream(bgmink_2);
				}
				delete bgmink_2;
			}
		}
	break;
		case 3 :
		case 4 :
		{
			if(variable_global_exists("bgmink_3") && !is_undefined(bgmink_3)){
				if(audio_exists(bgmink_3)){
					audio_destroy_stream(bgmink_3);
				}
			}
			if(variable_global_exists("bgmink_4") && !is_undefined(bgmink_4)){
				if(audio_exists(bgmink_4)){
					audio_destroy_stream(bgmink_4);
				}
			}
			delete bgmink_3;
			delete bgmink_4;
		}
	break;
		case 5 :
		{
			if(variable_global_exists("bgmink_5") && !is_undefined(bgmink_5)){
				if(audio_exists(bgmink_5)){
					audio_destroy_stream(bgmink_5);
				}
			}
			delete bgmink_5;
		}
	break;
	}
	show_debug_message("Script: CrUnaudio execute.");
};