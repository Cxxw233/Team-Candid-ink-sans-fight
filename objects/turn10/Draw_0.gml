if(open=1&&opend=0){
		var eff=instance_create_depth(0,0,obj_bk.depth+2,empty);
		eff.sprite_index=spr_pixel;
		eff.image_xscale=640;
		eff.image_yscale=480;
		eff.image_blend=c_red//make_color_rgb(0,0,255);
		eff.image_alpha=1;
		//easing_execute(eff,"image_alpha",easing_class.linear,easing_class.in,0,+1,2);
		destroy = false;
		opend=1
}
if(open=0&&opend=1){
		instance_destroy(empty)
}

//draw_text(30, 30, string(open) + chr(10) + string(opend))
