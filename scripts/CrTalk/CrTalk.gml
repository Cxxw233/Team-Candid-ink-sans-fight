///@arg string
function CrTalk() {
/// max string 100
	text = instance_create_depth(enemy.x + 88, enemy.y - 166, 0, talk2)
	text.maxxt = argument_count;
	text.talk = argument[0];
	text.obj = id;
	for (i = 1; i < argument_count; i += 1) {
		text.say[i] = argument[i];
	}
}
///@arg string
///@arg ...start_value
function CrTalkStart() {
	text = instance_create_depth(enemy.x + 88, enemy.y - 166, 0, talk2);
	text.maxxt = argument_count;
	text.start[0] = true;
	text.talk = argument[0];
	text.obj = id;
	for (i = 1; i < argument_count; i += 1) {
		text.say[i] = argument[i];
	}

}