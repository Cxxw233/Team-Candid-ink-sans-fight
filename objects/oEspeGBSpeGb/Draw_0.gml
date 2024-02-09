/// @description Insert description here
// You can write your code in this editor
if (Colour == 0)
	image_blend = c_white;
	//image_blend = make_color_rgb(152, 120, 255);
if (Colour == 1)
	image_blend = make_color_rgb(20, 196, 255);
if (Colour == 2)
	image_blend = make_color_rgb(248, 148, 29);
if (Firetime >= 0){
	for (var i = 0; i <5; i ++){
		draw_sprite_ext(sprite_index, image_index, x + lengthdir_x(Entrance, (i * 90)), y + lengthdir_y(Entrance, (i * 90)), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}else{
	if (FireTurn){
		if (DsTurn == true){
			alarm[1] = 1;
			DsTurn = false;
		}
		if (DScale[2] != 0)
			DScale[2] -= 0.2;
		else if (DScale[1] != 0)
			DScale[1] -= 0.2;
		else if (DScale[0] != 0)
			DScale[0] -= 0.2;
		else
			instance_destroy();
		for (i = 2; i > -1; i--)
			draw_sprite_ext(sprite_index, i, x, y, DScale[i], DScale[i], image_angle, image_blend, 1);
	}
}



