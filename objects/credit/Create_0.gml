if (!instance_exists(camera)) {
	instance_create_depth(0, 0, 0, camera);
}

insert[0] = "{scale 2}{color `text`}{voice -1}{instant true}";
insert[1] = "&          {color `yellow`}Thank you for playing!{color `white`}&&  Special thanks to all those who&  contributed to this game:&    Ptfk, an indispensable figure in& game development.&    Hxcglu, provided significant& assistance during game development.&    Kyakii, contributed music for the& first phase of the game.&    DYS, provided music for the second& phase of the game.&    Nai Lang, supplied Ink text for& game development.&    SheepYhang, provided translation& for the text.&    Bua, Bm, and others, offered crucial& testing during game development.&    SofGetMyS, provided assistance for& further development.&    Lfby, provided assistance for game& sprites.&&    And also, appreciation to those& nameless contributors and to you,& behind the screen.&&                       TeamCandid，Cxx.";
insert[2] = "&              {color `yellow`}感谢你的游玩！{color `white`}&&  感谢所有为本游戏做出贡献的人:&      Ptfk，游戏开发中不可或缺的人。&      Hxcglu，游戏开发中提供重要帮助。&      Kyakii，提供了游戏一阶段音乐。&      地狱石，提供了游戏二阶段音乐。&      奈狼，为游戏开发提供了Ink文本。&      憨憨羊の宇航鸽鸽，为文本提供了翻译。&      Bua、Bm等人，游戏开发中提供重要测试。&      SofGetMyS，为进一步开发提供帮助。&      冷风半月，为游戏贴图提供援助。&&    以及，感谢那些无名奉献的，和屏幕前的你。&&                       TeamCandid，Cxx.";
insert[3] = ( lang_load_quick() == "eng" ? string(insert[1]) : insert[2] );
log = string(insert[0]) + string(insert[3]);

with (instance_create_depth(0, 0, 0, text_typer)) {
	text = other.log;
}
