if (global.inv=0)
{/**/
/*if (global.kr=0)
{/**/
if(!instance_exists(obj_die))
{
if (hpj=0)
{
audio_play_sound(snd_ss,0,0)
hpj=20
global.hp-=10
	if (instance_exists(turn8)){
		var eff=instance_create_depth(0,0,-1000,empty);
		eff.sprite_index=spr_pixel;
		eff.image_xscale=640;
		eff.image_yscale=480;
		eff.image_blend=c_red;
		eff.image_alpha=0;
		easing_execute(eff,"image_alpha",easing_class.sine,easing_class.in,0,+1,2);
		easing_execute(eff,"image_alpha",easing_class.sine,easing_class.in,1,-1,4,3);
	}

}
}
/*}
else
{
audio_play_sound(snd_ss,0,0)
obj_system.kr-=1
}
/**/
}

/* */
/*  */
