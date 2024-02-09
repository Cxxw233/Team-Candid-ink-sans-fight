/// @description Insert description here
// You can write your code in this editor
var ll = 0;
hspeed = 0;
vspeed = 0;
repeat (4){
	if (instance_exists(but[ll])){
		with (but[ll]){
			event_user(2);
		}
	}
	ll++;
}



