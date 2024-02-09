function CrText(){
	globalvar _lang;
	
	if(!file_exists("savedata.ini")){ 
		ini_open("savedata.ini"); 
		ini_write_string("System","lang",os_get_language()); 
		ini_close(); 
	};else{
		ini_open("savedata.ini");
		//ini_write_string("System","lang",os_get_language()); 
		_lang=ini_read_string("System","lang","undefined");
		ini_close();
	};
	_lang=( _lang == "zh" ? "chs" : "eng" );
	#macro lang_judgment _lang == "chs"
	//show_debug_message("Warning: At Script.Method.CrText: Line.14\nOutput: {0}",lang_judgment);
	
	_lang_text={
		// 实例: [ : ( lang_judgment ? "" : "" ), ] 方便复制使用
		// ? 判断后的":" 前面为中文，后面为英文
		// 一般使用[$]访问符
		menu_text : { // stage就是最开始的dialog, AUsans就是这个回合结束后的dialog(既指示下个回合)
			#region Item.
				item : {
					// named.
					butterscotch_pie			: ( global.egg == 1 ? ( lang_judgment ? "奶油糖肉桂π" : "Butterscotch Pi" ) : ( lang_judgment ? "奶油糖果派" : "Butterscotch Pie" ) ),
					instant_noodles				: ( lang_judgment ? "方便面" : "Instant Noodles" ),
					face_steak					: ( lang_judgment ? "脸型牛排" : "Face Steak" ),
					snowman_piece				: ( lang_judgment ? "雪块" : "Snowman Piece" ),
					legendary_hero				: ( lang_judgment ? "英雄传说" : "Legendary Hero" ),
					
					// talkd.
					based_item0					: ( lang_judgment ? "* 你吃了" : "* You ate the "),
					based_item1					: ( lang_judgment ? "/* 你恢复了" : "/* Your recovered "),
					based_item2 				: ( lang_judgment ? "/* 攻击力增加了4。/* 你恢复了" : "/* ATTACT increased by 4./* Your recovered " ),
					based_item3					: ( lang_judgment ? "/* 你的HP满了。" : "/* Your HP was maxed out." ),
				},
			#endregion
			#region Phase 1
				check							: ( lang_judgment ? "查看" : "Check" ), // 特别的，适应script._draw_lang_quick
				reset							: ( lang_judgment ? "重置" : "Reset" ),
				spare							: ( lang_judgment ? "饶恕" : "Spare" ),
				stage_1							: ( lang_judgment ? "* 你迷失了。" : "* You get lost."), // phase1 start.
				stage_1_check					: ( lang_judgment ? "* Ink!Sans 攻击力 ? 防御力 ?<l15>/* 所有想象和AU的守护者。" : "* Ink!Sans ATK ? DEF ?<l15>/* Protector of imagaination and/  all AUs."),
				sans							: ( lang_judgment ? "* 我们仍然活着。" : "* We are still alive."), // turn_1
				broken							: ( lang_judgment ? "* 你必须结束这一切。" : "* You have to end it all." ), // turn_2
				fell							: ( lang_judgment ? "* 星辰的陨落。" : "* The fall of the stars." ), // turn_3
				outer							: ( lang_judgment ? "* 时间线错乱不堪。" : "* The timeline gone awry." ), // turn_4
				swap							: ( "* Xxxx xxx xxxx xx." ),	//( lang_judgment ? "" : "* Xxxx xxx xxxx xxx." ), // turn_5
				cross						    : ( lang_judgment ? "* 在这一切之后..." : "* After all of that..." ), // turn_6. next geno.
				ho					            : ( lang_judgment ? "* 杀或被杀。" : "* Kill or be Killed." ), // turn_7, fact turn 10. after copy.
				geno							: ( lang_judgment ? "* 尘埃飘散。" : "* The dust drifts away." ), // turn_8, fact turn 7. after cross.
				copy						    : ( lang_judgment ? "* 冰与火之舞。" : "* Dancing with Ice and Fire." ), // turn_9
				murder					        : ( lang_judgment ? "* 复制的对立面。" : "* The opposite of copy." ), // turn_10, fact turn 8. after geno.
				killer					        : ( lang_judgment ? "* 但是什么也没有改变。" : "* But nothing changed." ), // turn_11, fact turn 11. after ho.
			#endregion
			
			#region Phase 2
				stage_2							: ( lang_judgment ? "* 你迷失了。<l15>/* 又一次。" : "* You get lost.<l15>/* Again." ),
				stage_2_check					: ( lang_judgment ? "* Ink!Sans 攻击力 ? 防御力 ?<l15>/* 幻想着保护想象和AU。" : "* Ink!Sans ATK ? DEF ?<l15>/* Daydreaming on protecting/  imaginations and AUs." ),
				scientist						: ( lang_judgment ? "* 向着目标前进。" : "* Move forward towards the goal." ), // turn_13
				fresh							: ( lang_judgment ? "* 这并不可控。" : "* It's not controllable." ), // turn_14
				nothing							: ( lang_judgment ? "* 战斗变得前卫。" : "* More avant-garde battle." ), // turn_15
				sudden							: ( lang_judgment ? "* 黑暗笼罩天空。/* 死神挥舞它的镰刀。" : "* Darkness shrouds the sky. /* The Grim Reaper wields its/  scythe." ), // turn_17
				espe							: ( lang_judgment ? "* 硝烟依旧的战争。" : "* The war with lingering gun/  smoke." ), // turn_16
				reaper							: ( lang_judgment ? "* 压倒性的差距。" : "* Overwhelming disparity." ), // turn_18
				epic							: ( lang_judgment ? "* 尘埃中的希望。" : "* Hope amidst the dust." ), // turn_19
				trust							: ( lang_judgment ? "* 做一个美梦..." : "* Dream a dream..." ), // turn_20
				nm_dream						: ( lang_judgment ? "* 最好的噩梦。" : "* The best nightmare." ), // turn_21
			#endregion
			
			#region Phase 3 Init
				stage_3_init					: ( lang_judgment ? "* 你回来了。" : "* You come back." ),
				stage_3_init_check				: ( lang_judgment ? "* Ink!Sans 攻击力 ? 防御力 ?<l25>/* 一个傀儡。" : "* Ink!Sans ATK ? DEF ?<l25>/* An obstacle." ),
			#endregion
			
			#region Phase 3
				stage_3							: ( lang_judgment ? "* 你回来了。<l30>/* 又一次。" : "* You come back.<l30>/* Again." ),
				stage_3_check					: ( lang_judgment ? "* Ink!Sans 攻击力 ? 防御力 ?<l25>/* 一个傀儡。" : "* Ink!Sans ATK ? DEF ?<l25>/* An obstacle." ),
				dyes_named						: ( lang_judgment ? "颜料瓶" : "Color Dyes" ),
				dyes_check						: ( lang_judgment ? "* 颜料瓶 攻击力 10 防御力 5<l25>/* 只是玩具。" : "* Color Dyes ATK 10 DEF 5<l25>/* Just pieces of toys." ),
				papy_check						: ( lang_judgment ? "* Papyrus - 攻击力 80 防御力 20<l15>/* 心窍似乎被神秘诅咒所迷。" : "* Papyrus - ATK 80 DEF 20<l15>/* Seems to be enchanted by/  a mysterious curse." ),
			#endregion
			
			#region Phase 4
			
			#endregion
		},
		
		enemy_text : { 
			// 可以参考log里的sans顺序来编写下文的fact turn
			// 关于struct的规则，保留变量为sans名字，注释为所在的obj，可添加fact turn(早期回合全乱)，用来指示实际回合；然后加入after/next+sans名，用来指示在~之后/之前；[ 最后看上去如:" fell : { // turn_3, fact turn 3. after broken.". 代表意思"fell回合，obj是turn3，实际战斗中是turn3，在broken之后"
			// 最后，严格按照注释/参照前面的正确命名来进行文本工作
			sans : { // turn_1
				talk_1 : ( lang_judgment ? "所以这还是发生了……/<l15>你站在了我的面前。" : "so this still happened....../<l15>you are standing in front /of me." ),
				talk_2 : ( lang_judgment ? "<o1>这也就说明你已经/屠杀了数不胜数的时间线。" : "<o1>it means that you /murdered infinite/timelines." ),
				talk_3 : ( lang_judgment ? "可这已经晚了，/多说无益。" : "it's too late now, /no need for talking." ),
				talk_4 : ( lang_judgment ? "<o2>很快，你便会葬身/于这风暴一般的色彩/之中……" : "<o2>soon, you will dead /in the stormy color......" ),
			},
			broken : { // turn_2
				talk_1 : ( lang_judgment ? "<o1>屠杀对你来说是极为容易的，/<l15>但你又有何动机呢？" : "<o1>genocideis really easy for /you, <l15>but what about/your motive?" ),
				talk_2 : ( lang_judgment ? "究竟是满足自己的变态欲望，/<l15>还是因为你很容易就能做到?/<l15>所以你就偏要去做，/哪怕是和平的结局?" : "is for your abnormal /desire, <l15>or just because/you can done it easily, /<l10>so you have to do, /even the peaceful ending," ),
				talk_3 : ( lang_judgment ? "<o3>你也要在这破碎的空间中/进行一个惨无人道的“转折”?" : "<o3>you still make a /cold-blooded\"twist\"is this /broken space?" ),
			},
			fell : { // turn_3
				talk_1 : ( lang_judgment ? "<o1>你究竟能否看清，/每一个宇宙都是一条/旋即跳跃的时间线，" : "<o1>can you just see, /every AU universe is /a jumping timeline," ),
				talk_2 : ( lang_judgment ? "其中都是一条条鲜活的性命。" : "there are lively lifes/full of it." ),
				talk_3 : ( lang_judgment ? "不论如此，他们由创造者/精心创作出来，<l15>/而你却几刀使本能/被拯救的灵魂消散…" : "not only this, they are /created carefully by their /creator,<l15> and you just/made the saveable/souls dissipate..." ),
				talk_4 : ( lang_judgment ? "<o4>这就是你想要的吗?" : "<o4>is this what you want?" ),
			},
			outer : { // turn_4
				talk_1 : ( lang_judgment ? "<o1>不论是怎样的环境，/<l15>你却都要一意孤行吗?" : "<o1>not matter any enviroment,/<l15>but still going your on /own way?" ),
				talk_2 : ( lang_judgment ? "<o5>即便怪物们超越了星际，/<l10>来到了渺茫得宇宙，/<l10>你也不会放弃你的屠杀游戏。" : "<o5>even monsters rised above /stars, came to boundless /space, you still won't give /up your genocide game." ),
			},
			swap : { // turn_5
				talk_1 : ( lang_judgment ? "<o1>时间线有各种变化的可能，/<l10>从而衍生出细节不同/而大体相同的角色，" : "<o1>timelines have many/possibility of change,/so that it can make same/characters with/different details," ),
				talk_2 : ( lang_judgment ? "他们的被创作是一件件/艺术品。" : "the created of they can/be called art." ),	
				talk_3 : ( lang_judgment ? "真是可悲啊…你将他们重重/地摔在地上，<l10>/也就是忽视了价值。" : "what a sad of you...<l10>/you threw them on the /ground heavily, /ignored their value." ),	
				talk_4 : ( lang_judgment ? "你只不过是想达成一个结局，/一个只有你的结局……" : "you just want one ending,/one ending with only you......" ),	
			},
			cross : { // turn_6
				talk_1 : ( lang_judgment ? "<o1>如同“他”一样，<l15>/你本拥有着可以改变/世界的力量，" : "<o1>just like X-\"He\"XX,<l10>/you had the power that/can change the world," ),
				talk_2 : ( lang_judgment ? "却将其用作满足自己的/工具……" : "but you use it to /satisfy yourself......" ),
			},
			ho : { // turn_7, fact turn 10. after copy.
				talk_1 : ( lang_judgment ? "<o1>我们就仿佛站在了一个/完全的对立面，就像……" : "<o1>we just like standing in /a totally side, just like...... " ),
				talk_2 : ( lang_judgment ? "“冰”与“火”?" : "\"Ice\" and \"Fire\"?" ),
				talk_3 : ( lang_judgment ? "但同时，/<l15>火遇冰融，火遇水熄，" : "but at the same time, /fire melt because of ice, /fire gone because of water," ),
				talk_4 : ( lang_judgment ? "却又同时赋予了对方/存在的意义。" : "they give each other the /meaning of existence." ),
			},
			geno : { // turn_8, fact turn 7. after cross.
				talk_1 : ( lang_judgment ? "<o1>无论时间过去了多久，<l15>/你都会重新再来。" : "<o1>no matter how long past, <l10>/you will come /again over and over." ),
			},
			copy : { // turn_9, fact turn 9. after murder.
				talk_1 : ( lang_judgment ? "复制……粘贴，<l15>/你的行径也使怪物/如此一般，" : "<o1>copy......paste, <l10>/<o10>your behavior just like /monsters." ),
				talk_2 : ( lang_judgment ? "陷入在无尽的循环中，/<l10>万劫不复。" : "fell into infinite loop,/<l10>never come back." ),
			},
			murder : { // turn_10, fact turn 8. after geno.
				talk_1 : ( lang_judgment ? "<o1>有人选择了一条极端的道路，<l15>/变成了一个带有理智的/疯子，" : "<o1>someone chose a extreme/road, became a lunatic/with sanity," ),
				talk_2 : ( lang_judgment ? "<o11>但是即便如此，/他对你的恨却从未有波动，<l15>/你对这种屠杀游戏的/兴趣也是一样……" : "<o11>however his hatred of /you never changed, and /same of your interest /in genocide game......" ),
			},
			killer : { // turn_11, fact turn 11. after ho.
				talk_1 : ( lang_judgment ? "<o1>经过了一场致命的交易，/他也终于理解了一切。" : "<o1>with a fatal deal, /he understood everything." ),
				talk_2 : ( lang_judgment ? "理解，亦是疯狂，/<l10>冷酷无情，/这都是你一手造成的。" : "understanding, or madness, /cold-blooded, you made all /of these." ),
			},
			six_bone : { // turn_12, fact turn 12. its phase1 last turn. after killer.
				// noone
			},
			scientist : {
				talk_1 : ( lang_judgment ? "<o1>又是这样的场景…<l10>/循环往复地面对面。" : "<o1>scene like this again...<l10>/recurring facing each/other." ),
				talk_2 : ( lang_judgment ? "无论是『科学』还是『天使』，/都无法阻拦你杀戮的步伐。" : "whether SCIENCE or ANGEL,/both cant' stop you/from killing others." ),
				talk_3 : ( lang_judgment ? "脸上的笑意不足以掩饰/你对嗜血的渴望……" : "the smile on your face/is not enough to/cover your willingness/to blood..." ),
				talk_4 : ( lang_judgment ? "<o15>一切，难道只是为了你，/小小的兴趣？" : "<o15>everything, is for your,/small \"interest\"?" ),
			},
			fresh : {
				talk_1 : ( lang_judgment ? "<o1>站在这里，/<l10>可真是件苦差……" : "<o1>standing here,/<l10>is such a hard work... " ),
				talk_2 : ( lang_judgment ? "<o16>不过，难得的事情，<l10>/他将为这场无味/的战斗带来些乐趣。" : "<o16>but, it is rare that,/<l10>he will bring some/fun for this/boring battle." ),
			},
			nothing : {
				talk_1 : ( lang_judgment ? "<o1>友善的情谊早已不复存在，<l10>/其被你断为无尽的尘埃，/万劫不复……<l10>好似遁入虚无，/再无一事留于世间。" : "<o1>friendly friendship no/longer exists,<l10> it has been/doomed to endless/dust, doomed eternally..." ),
				talk_2 : ( lang_judgment ? "<o17>伙伴…爱情…事业…<l10>/难道就没有一事，/让你有过些许动摇？" : "just like dropping into/the void, nothing remains/in the world./<l15><o17>partner...love...business.../<l10>none of them have/shaken you for any bit?" ),
			},
			espe : {
				talk_1 : ( lang_judgment ? "<o1>为了自己欲望而不惜/一切代价，<l10>哪怕将它者/的文明毁灭…" : "<o1>can cost everything/for their own desire, <l10>even/if it destroys the/civilization of others..." ),
				talk_2 : ( lang_judgment ? "<o18>人类，<l10>就是如此。" : "<o18>this, <l10>is human." ),
			},
			sudden : {
				talk_1 : ( lang_judgment ? "<o1>时代在进步，<l10>可是人类/的思想却总一成不变。" : "<o1>the times are advancing,/<l10>but human thought/remains unchanged." ),
				talk_2 : ( lang_judgment ? "弱小时，以团结互助；/<l10>强大时，却又展开杀戮。" : "when they are small/and weak, <l10>they work /together./<l10>when they are strong/and powerful, they/kill each other." ),
				talk_3 : ( lang_judgment ? "欲望的深渊，/像是无底的巨洞，/<l10><o37>永远不可填满。" : "the abyss of desire,/just like a bottomless/hole, <l10><o37>can never be filled." ),
			},
			reaper : {
				talk_1 : ( lang_judgment ? "<o1>即便是无上的死亡之神，/<l10>也不可阻挡你的变态欲望。" : "<o1>even the supreme death/god, <l10>can't stop your/perverted desire.<l10><o19> just/depends on your /\"determination\"," ),
				talk_2 : ( lang_judgment ? "<o19>仅凭你那所谓的“决心”，/<l10>你踏平了多少悠悠岁月，/<l10>多少怪物的尘埃飘落……" : "you destroyed how many/peaceful years,<l10>how many/monsters turned into dust/and fall..." ),
				talk_3 : ( lang_judgment ? "如影随形，对你也不再/是什么可怕的事情了。" : "death, as the shadow/follows the/form, <l10>is not a/terrible thing for you." ),
			},
			epic : {
				talk_1 : ( lang_judgment ? "<o1>融合……<l10>带来了力量，/<l10><o20>但代价又是什么？" : "<o1>blend...<l10>brought power,/<l10><o20>but what is the cost?" ),
			},
			trust : {
				talk_1 : ( lang_judgment ? "<o1>再善良的人，也会被/无穷无尽<l10>的无休止/的杀戮…直到崩溃。" : "<o1>no matter how kind/they are, they will be/driven to collapse...<l10>/by the endless killing." ),
				talk_2 : ( lang_judgment ? "<o21>他们从来没做错什么事情，/<l10>只有你的存在……/是唯一的错误。" : "<o21>they have never done/anything wrong,/<l10>but the existence of you.../<l10>is the only mistake." ),
			},
			nm_dream : {
				talk_1 : ( lang_judgment ? "<o1>梦想与梦魇…<l10>/一字之差，便是万丈红尘，<l10>/你可曾看见你带来了什么？" : "<o1>reverie and nightmare.../<l10>both works in dream,/<l10>but totally opposite sides,/<l10>have you ever seen/what you brought?" ),
				talk_2 : ( lang_judgment ? "<o39>你可曾明白你都做了什么？" : "<o39>have you ever/understood what/you've done?" ),
				talk_3 : ( lang_judgment ? "……无意义的话语。" : "...meaningless discourses." ),
			},
			/*
				梦境与梦魔，融为一体，/真幻交织于我脑海！
				* Dream and nightmare, <l15>/  intertwined in my mind /  with illusion and reality!
			*/
			p3_start : {
				talk_1 : ( lang_judgment ? "你仍旧在这里<l10>.<l10>.<10>." : "You are still here<l6>.<l6>.<l6>." ),
				talk_2 : ( lang_judgment ? "呵。/呵.<l10>.<l10>./呵.<l10>.<l10>." : "Heh./Heh.<l5>.<l5>./Heh.<l5>.<l5>." ),
				talk_3 : ( lang_judgment ? "为什么你不明白.<l10>.<l10>." : "Why can't you/understand.<l5>.<l5>." ),
				talk_4 : ( lang_judgment ? "为什么你.<l10>.<l10>." : "Why are you.<l5>.<l5>." ),
				talk_5 : ( lang_judgment ? "呵.<l10>.<l10>./好吧。" : "Heh.<l5>.<l5>./Okay." ),
			}
		},
		
	};
	
	//show_debug_message("Warning: At Script.Method.CrText: Line.20\nOutput: {0}",_lang_text.menu_text.stage_1); // pass test, use for dev.

};
	
function CrUntext(){
	if(variable_global_exists("_lang"))	then delete _lang;
	if(variable_global_exists("_lang_text")) then delete _lang_text;
	
	show_debug_message("Script: CrUntext execute.");
};

function CrTextReload(){
	CrUntext();
	CrText();
	
	return;
};