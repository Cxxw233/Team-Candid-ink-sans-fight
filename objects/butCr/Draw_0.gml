//var _cr=GLang ? "English":"Chinese";
window_set_caption("Credits - "+string(current_hour)+":"+string(current_minute)+"."+string(current_second)+" - "+string(window_get_width())+"*"+string(window_get_height())+" - "+string(display_get_frequency())+"hz - "+string(CrGetVersion()));
draw_set_alpha(1);
draw_set_font(font_console);
#region TurnPage
if(keyboard_check_pressed(vk_right)){
	if(page!=isEndPage){
		page++;
	}
}
if(keyboard_check_pressed(vk_left)){
	if(page!=isStartPage){
		page--;
	}
}
#endregion;
//draw_text(320,320,string(mouse_x)+"\n"+string(mouse_y));
if(page==1){
	//event_perform(ev_async_web,0);
	if(GLang==Lang.Zh){
		a=instance_create_depth(100,200,0,httpTo);
		a.sprite_index=bilibili158158;
		a.image_blend=c_aqua;
		a.http="http://space.bilibili.com/1650221524";
		a=instance_create_depth(320,205,0,httpTo);
		a.sprite_index=gamejolt;
		a.image_blend=c_white;
		a.http="http://gamejolt.com/games/tcisf/763755";
	};else{
		a=instance_create_depth(100,260,0,httpTo);
		a.sprite_index=bilibili158158;
		a.image_blend=c_aqua;
		a.http="http://space.bilibili.com/1650221524";
		a=instance_create_depth(320,265,0,httpTo);
		a.sprite_index=gamejolt;
		a.image_blend=c_white;
		a.http="http://gamejolt.com/games/tcisf/763755";
	};
	//a.sprite_index=spr_act;
	/*var a=instance_create_depth(320,320,0,httpTo);
	a.http="https://gamejolt.com/games/tcisf/763755";
	a.sprite_index=noone;*/
}
if(page!=1&&instance_exists(httpTo)){
	instance_destroy(httpTo);
}
#region DrawPage
switch(GLang){
	case Lang.Zh:
		//scribble_font_scale("font_console",1);
		//scribble_font_scale("fntDTM",1);
		draw_set_halign(fa_middle);
		draw_set_color(c_white);
		draw_set_font(fntDTM);// 没有使用 UNDERTALE Engine by TML 制作。
		draw_text_scribble(320,400,"[fa_middle][scale,2][c_gray][font_console]当前第【[fntDTM]"+string(page+1)+"[font_console]】页");
		draw_set_halign(fa_left);
		switch(page){
			case 0 :
				//draw_text_ext_transformed(20,20,"Thanks for playing.\nUNDERTALE by TobyFox.\nMade by TeamCandid.\nTeam:Hxcglu PTFK Cxx.\nThe Phase 1 music by Kyakii.\nThe Phase 2 music by DYS.\nThe credits music by OMORI.\nComing soon...\n\nThis is "+string(CrGetVersion())+" ver.\n",9,-1,scale_x,scale_y,0);
				//draw_text_ext_transformed(20,20,"感谢你的游玩\nUNDERTALE由TobyFox制作\n由TeamCandid负责制作",sew,line,scale_x,scale_y,0);
				draw_text_scribble(20,20,"[c_yellow][scale,2][font_console]感谢你的游玩。\n[fntDTM]UNDERTALE[font_console]由[fntDTM]TobyFox[font_console]制作。\n此同人游戏由[fntDTM]TeamCandid[font_console]负责制作。\n团队内由[fntDTM]HXCGLU,PTFK,Cxx[font_console]共同制作。\n特别感谢冷风半月的支持！\n一阶段音乐由[fntDTM]Kyakii[font_console]制作。\n二阶段音乐由[fntDTM]DYS[font_console]制作。\n\n此页面音乐来自[fntDTM]OMORI[font_console]。");
		break;
			case 1:
				//draw_text_scribble(20,20,"[c_yellow][scale,2][fntDTM]InkSans[font_console]贴图来自[fntDTM]System[font_console]。\n英文本地化由[fntDTM]SheepYhang,TeamCandid[font_console]。\n少量贴图来自[fntDTM]lali[font_console]。\n\n关于我们：");
				draw_text_scribble(20,20,"[c_yellow][scale,2][fntDTM]InkSans[font_console]贴图来自[fntDTM]System[font_console]。\n特别鸣谢：[fntDTM]SheepYhang,lali,Honyaradoh[font_console]。\n\n关于我们：");
				//draw_text_scribble(20,20,"[c_yellow][scale,2][font_console]游戏语言由系统语言决定。\n特别鸣谢：[fntDTM]SheepYhang,lali,Honyaradoh[font_console]。\n\n关于我们：");
		break;
			case 2:
				//draw_text_ext_transformed(20,20,"",9,-1,scale_x,scale_y,0);
				//scribble_font_scale("font_console",2);
				//scribble_font_scale("fntDTM",2);
				draw_text_scribble(20,20,"[c_yellow][scale,2][font_console]\n少量贴图来自[fntDTM]lali[font_console]。");
		break;
		};
	break;
	default:
			draw_set_halign(fa_middle);
			draw_set_color(c_white);
			draw_text_scribble(320,400,"[fa_middle][scale,2][c_gray][fntDTM]Current page "+string(page+1));
			draw_set_halign(fa_left);
			switch(page){
				case 0 :
					//draw_text_ext_transformed(20,20,"Thanks for playing.\nUNDERTALE by TobyFox.\nMade by TeamCandid.\nTeam:Hxcglu PTFK Cxx.\nThe Phase 1 music by Kyakii.\nThe Phase 2 music by DYS.\nThe credits music by OMORI.\nComing soon...\n\nThis is "+string(CrGetVersion())+" ver.\n",9,-1,scale_x,scale_y,0);
					//draw_text_ext_transformed(20,20,"感谢你的游玩\nUNDERTALE由TobyFox制作\n由TeamCandid负责制作",sew,line,scale_x,scale_y,0);
					//draw_text_scribble(20,20,"[font_console]感谢你的游玩。\n[fntDTM]UNDERTALE[font_console]由[fntDTM]TobyFox[font_console]制作。\n此同人游戏由[fntDTM]TeamCandid[font_console]负责制作。\n团队内由[fntDTM]HXCGLU,PTFK,Cxx[font_console]共同制作。\n一阶段音乐由[fntDTM]Kyakii[font_console]制作。\n二阶段音乐由[fntDTM]DYS[font_console]制作。");
					draw_text_scribble(20,20,"[fntDTM][c_yellow][scale,2]Thank you for playing.\nUNDERTALE by TobyFox.\nProduced by TeamCandid.\nSpecial thanks lfby for their support!\nPhase 1 music by Kyakii.\nPhase 2 music by DYS.\n\nThe credit music from OMORI.");
			break;
				case 1:
					//draw_text_ext_transformed(20,20,string(CrGetVersion())+" Updata:\nSmaller collision.\nFixed many bugs.\nPlayer name is YOU undertale name.\nElse you name is CHARA.\n\nYou can press `V` to inf hp.",9,-1,scale_x,scale_y,0);
					draw_text_scribble(20,20,"[fntDTM][c_yellow][scale,2]Game language is determined\nby the system language.\nSpecial thanks:\nSheepYhang,lali,Honyaradoh.\n\nAbout us:");
			break;
				case 2:
					draw_text_ext_transformed(20,20,"Other / Miscellaneous\nSome sprites by lali.",9,-1,scale_x,scale_y,0);
			break;
		};
	break;
}

#endregion;

draw_set_font(fntCot);
draw_set_color(c_yellow);
draw_set_halign(fa_right);
draw_text_ext_transformed(room_width-20,20,"FPS:"+string(fps),9,-1,3,3,0);//+"\nDISPLAY:"+string(display_get_frequency())
draw_set_halign(fa_middle);
//draw_set_color(c_gray);
//draw_text_ext_transformed(320,380,"[page "+string(page+1)+"]"+"\n[press f2 to restart game]\n[press direction-key to turn page|size]",9,-1,2,2,0);

//draw_set_halign(fa_left);
//draw_set_color(c_yellow);


xt++;
if(xt%10==0){
	var xx=random(640),yy=random(480),size=random(10);
	effect_create_below(ef_snow,xx,yy,size,c_aqua);
	effect_create_below(ef_rain,xx,yy,size,c_aqua);
}
if(keyboard_check_pressed(vk_down)){
	if(window_get_width()==640&&window_get_height()==480) then window_set_size(640+160,480+120);
	if(window_get_width()==640+160&&window_get_height()==480+120) then window_set_size(640+320,480+240);
	if(window_get_width()==640+320&&window_get_height()==480+240) then window_set_size(640+320+160,480+240+120);
	if(window_get_width()==640+320+160&&window_get_height()==480+240+120) then window_set_size(640*2,480*2);
	if(window_get_width()==640*2&&window_get_height()==480*2) then window_set_size(640,480);
}
if(keyboard_check_pressed(vk_up)){
	if(window_get_width()==640&&window_get_height()==480) then window_set_size(640*2,480*2);
	if(window_get_width()==640+160&&window_get_height()==480+120) then window_set_size(640,480);
	if(window_get_width()==640+320&&window_get_height()==480+240) then window_set_size(640+160,480+120);
	if(window_get_width()==640+320+160&&window_get_height()==480+240+120) then window_set_size(640+320,480+240);
	if(window_get_width()==640*2&&window_get_height()==480*2) then window_set_size(640+320+160,480+240+120);
}
