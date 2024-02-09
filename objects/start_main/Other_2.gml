event_user(0);

CrInit();
Anim_Init();

if(is_string(lang_load_quick())){
	if(lang_load_quick()!="undefined"){
		if(audio_is_playing(snd_start)) then audio_stop_sound(snd_start);
		audio_play_sound(snd_start,0,0);
		room_goto(Room_begin);
	}
}
(instance_create_depth(180,100,0,text_typer)).text="{color `white`}{scale 2}{instant true}{voice -1}    选择你的语言。&Choose your language.";
