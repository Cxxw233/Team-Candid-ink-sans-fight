//T//ALK2  BEGIN STEP


b += 1
if (b mod time = 0) {
	if (a < string_length(talk)) {
		if (sleep = 0) {
			audio_play_sound(snd_sans_say, 0, 0);
			a += 1
		}
	}
}

if (sleep > 0) {
	sleep -= 1
}
if (sleep < 0) {
	sleep += 1
}




if (string_char_at(talk, a) = "<") {

	var (strexe) = ""
	var (strnum) = 0

	while (string_char_at(talk, a + 2 + strnum) != ">") {
		strexe += string_char_at(talk, a + 2 + strnum)
		strnum += 1
	}

	if (string_char_at(talk, a + 1) = "a") {
		alp = real(strexe)
	}

	if (string_char_at(talk, a + 1) = "c") {
		switch (strexe) {
			case "red":
				col = c_red;
				break
			case "orange":
				col = c_orange;
				break
			case "aqua":
				col = c_aqua;
				break
			case "blue":
				col = c_blue;
				break
			case "yellow":
				col = c_yellow;
				break
			case "green":
				col = c_green;
				break
			case "purple":
				col = c_purple;
				break
			case "white":
				col = c_white;
				break
			case "black":
				col = c_black;
				break
		}
	}

	if (string_char_at(talk, a + 1) = "t") {
		time = real(strexe)
	}

	if (string_char_at(talk, a + 1) = "o") {
		if (instance_exists(enemy)) {
			enemy.touxt = real(strexe)
		}
	}

	/*if(string_char_at(talk,a+1)="b")
	{
	BG_spr=asset_get_index(strexe)
	}

	if(string_char_at(talk,a+1)="s")
	{
	spr=asset_get_index(strexe)
	}

	if(string_char_at(talk,a+1)="x")
	{
	shenxt=real(strexe)
	}/**/

	if (string_char_at(talk, a + 1) = "l") {
		sleep = real(strexe)
	}

	if (string_char_at(talk, a + 1) = "f") {
		font = asset_get_index(strexe)
	}

	if (string_char_at(talk, a + 1) = "X") {
		xs = real(strexe)
	}

	if (string_char_at(talk, a + 1) = "Y") {
		ys = real(strexe)
	}

	/*if(string_char_at(talk,a+1)="n")
	{
	name=real(strexe)
	}/**/



	talk = string_delete(talk, a, 3 + strnum)




	a -= 1



}





if (keyboard_check_pressed(vk_shift)) // shift
{
	var (shifta) = 0

	repeat(string_length(talk)) {

		if (string_char_at(talk, shifta) = "<") {

			var (strexe) = ""
			var (strnum) = 0

			while (string_char_at(talk, shifta + 2 + strnum) != ">") {
				strexe += string_char_at(talk, shifta + 2 + strnum)
				strnum += 1
			}

			if (string_char_at(talk, shifta + 1) = "a") {
				alp = real(strexe)
			}

			if (string_char_at(talk, shifta + 1) = "c") {
				switch (strexe) {
					case "red":
						col = c_red;
						break
					case "orange":
						col = c_orange;
						break
					case "aqua":
						col = c_aqua;
						break
					case "blue":
						col = c_blue;
						break
					case "yellow":
						col = c_yellow;
						break
					case "green":
						col = c_green;
						break
					case "purple":
						col = c_purple;
						break
					case "white":
						col = c_white;
						break
					case "black":
						col = c_black;
						break
				}
			}

			if (string_char_at(talk, shifta + 1) = "t") {
				time = real(strexe)
			}

			if (string_char_at(talk, a + 1) = "o") {
				if (instance_exists(enemy)) {
					enemy.touxt = real(strexe)
				}
			}

			/*if(string_char_at(talk,a+1)="b")
			{
			BG_spr=asset_get_index(strexe)
			}/**/

			/*if(string_char_at(talk,shifta+1)="s")
			{
			spr=asset_get_index(strexe)
			}/**/

			/*if(string_char_at(talk,shifta+1)="x")
			{
			shenxt=real(strexe)
			}/**/

			if (string_char_at(talk, shifta + 1) = "f") {
				font = asset_get_index(strexe)
			}

			if (string_char_at(talk, shifta + 1) = "X") {
				xs = real(strexe)
			}

			if (string_char_at(talk, shifta + 1) = "Y") {
				ys = real(strexe)
			}

			/*if(string_char_at(talk,shifta+1)="n")
			{
			name=real(strexe)
			}/**/



			talk = string_delete(talk, shifta, 3 + strnum)


			shifta -= 1


		}

		shifta += 1

	}




	a = string_length(talk)




}

if (a >= string_length(talk)) {
	if (keyboard_check_pressed(vk_enter)) {
		a = 0
		b = 0
		talk = ""
		xt += 1
		if (xt = maxxt) {
			if (!start[0]) {
				with(obj) {
					xt += 1;
				}
			} else {
				if (variable_instance_exists(obj, string(start[1]))) {
					variable_instance_set(obj, string(start[1]), start[2]);
				}
			}
			instance_destroy()
		} else {
			talk = say[xt]
		}
	}
}