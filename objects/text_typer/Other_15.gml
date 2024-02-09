///@desc Group & Macro
ds_map_add(_map_macro,"true",true);
ds_map_add(_map_macro,"false",false);

//ds_map_add(_map_macro,"DIR.UP",DIR.UP);
//ds_map_add(_map_macro,"DIR.DOWN",DIR.DOWN);
//ds_map_add(_map_macro,"DIR.LEFT",DIR.LEFT);
//ds_map_add(_map_macro,"DIR.RIGHT",DIR.RIGHT);

/*ds_map_add(_map_macro,"FONT.DIALOG",0);
ds_map_add(_map_macro,"FONT.MENU",1);
ds_map_add(_map_macro,"FONT.BATTLE",2);

ds_map_add(_map_macro,"VOICE.NULL",-1);
ds_map_add(_map_macro,"VOICE.DEFAULT",0);
ds_map_add(_map_macro,"VOICE.TYPER",1);*/

if((!variable_global_exists("fntDTM"))||(!variable_global_exists("fnt_debug"))) then CrFont();

_group_font[0,0]=fntDTM;//Lang_GetFont(Lang_GetString("font.dialog.0"));
_group_font_scale_x[0,0]=1;
_group_font_scale_y[0,0]=1;
_group_font_space_x[0,0]=0;
_group_font[0,1]=fnt_debug;//Lang_GetFont(Lang_GetString("font.dialog.1"));
_group_font_scale_x[0,1]=1;
_group_font_scale_y[0,1]=1;
_group_font_space_x[0,1]=1;
_group_font_space_y[0]=0;

_group_font[1,0]=fntDTM;//Lang_GetFont(Lang_GetString("font.dialog.0"));
_group_font_scale_x[1,0]=1;
_group_font_scale_y[1,0]=1;
_group_font_space_x[1,0]=0;
_group_font[1,1]=fntDTM;//Lang_GetFont(Lang_GetString("font.dialog.1"));
_group_font_scale_x[1,1]=1;
_group_font_scale_y[1,1]=1;
_group_font_space_x[1,1]=1;
_group_font_space_y[1]=0;

_group_font[2,0]=fnt_debug;//Lang_GetFont(Lang_GetString("font.dialog.0"));
_group_font_scale_x[2,0]=1;
_group_font_scale_y[2,0]=1;
_group_font_space_x[2,0]=0;
_group_font[2,1]=fnt_debug;//Lang_GetFont(Lang_GetString("font.dialog.1"));
_group_font_scale_x[2,1]=1;
_group_font_scale_y[2,1]=1;
_group_font_space_x[2,1]=1;
_group_font_space_y[2]=0;

/*_group_font[1,0]=_DTM_Sans;//Lang_GetFont(Lang_GetString("font.menu.0"));
_group_font_scale_x[1,0]=real(Lang_GetString("font.menu.0.scale.x",1));
_group_font_scale_y[1,0]=real(Lang_GetString("font.menu.0.scale.y",1));
_group_font_space_x[1,0]=real(Lang_GetString("font.menu.0.space.x",0));
_group_font[1,1]=_DTM_Sans;//Lang_GetFont(Lang_GetString("font.menu.1"));
_group_font_scale_x[1,1]=real(Lang_GetString("font.menu.1.scale.x",1));
_group_font_scale_y[1,1]=real(Lang_GetString("font.menu.1.scale.y",1));
_group_font_space_x[1,1]=real(Lang_GetString("font.menu.1.space.x",0));
_group_font_space_y[1]=real(Lang_GetString("font.menu.space.y",0));

_group_font[2,0]=_Dotumche;//Lang_GetFont(Lang_GetString("font.battle.0"));
_group_font_scale_x[2,0]=real(Lang_GetString("font.battle.0.scale.x",1));
_group_font_scale_y[2,0]=real(Lang_GetString("font.battle.0.scale.y",1));
_group_font_space_x[2,0]=real(Lang_GetString("font.battle.0.space.x",0));
_group_font[2,1]=_Dotumche;//Lang_GetFont(Lang_GetString("font.battle.1"));
_group_font_scale_x[2,1]=real(Lang_GetString("font.battle.1.scale.x",1));
_group_font_scale_y[2,1]=real(Lang_GetString("font.battle.1.scale.y",1));
_group_font_space_x[2,1]=real(Lang_GetString("font.battle.1.space.x",0));
_group_font_space_y[2]=real(Lang_GetString("font.battle.space.y",0));
*/
_group_voice[0,0]=snd_text_1;

_group_face[0]=noone;