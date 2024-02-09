run ++; GoTimer ++;

switch(temp) {
	case 1 :
		/*if (run mod 15 == 0) {
			Colour = choose(1, 2);
		}*/
		
		//x = 320 + rdis * dcos(image_angle);
		//y = 320 + rdis * dsin(image_angle);
break;
}

if (GoTimer >= EntranceTimer){
	GoTime -=1;
	if (GoTime <= 0){
		//show_debug_message("6");
		ImageTime +=1;
		Firetime -=1;
		switch (ImageTime){
			case 1:
				image_index = 4;
				break;
			case 2:
				//easing_execute(id, "x", 0, 0, x, GoX-x, MoveTime);
				//easing_execute(id, "y", 0, 0, x, GoY-y, MoveTime);
				hspeed = hsp;
				vspeed = vsp;
				audio_stop_sound(snd_gb_release);
				audio_play_sound(snd_gb_release, 1, 0);
				var ii = 0;
				repeat (4){
					but[ii] = instance_create_depth(x + lengthdir_x(30, ((ii * 90) + image_angle)), y + lengthdir_y(30, ((ii * 90) + image_angle)), 0, oEspeSpeGBATK)
					Camera_Shake(6,2,1,1);
					
					but[ii].image_xscale = (other.image_xscale * 1.2);
					but[ii].image_angle = ((90+(ii*90)) + image_angle);
					but[ii].Colour = Colour;
					ii++;
				}
				FireTurn=true;
				image_index = 5;
				break;
			case 3:
				image_index = 6;
				break;
			case 5:
				image_index = 7;
				break;
		}
	}
}
if (FireTurn == true){
	if (Firetime >= 0){
		image_angle += rotate;
		ii = 0;
		repeat (4){
			if (instance_exists(but[ii])){
				with (but[ii]){
					Colour = other.Colour;
					x = other.x;
					y = other.y;
					image_angle = ((90+(ii*90)) + other.image_angle);
				}
			}
			ii++;
		}
	}
}