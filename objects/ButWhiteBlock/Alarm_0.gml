xt=1;
//xta=1;
audio_play_sound(sndImpact,0,0);
sprite_index=sprButGenoBlock;
image_xscale=1;image_yscale=1;image_alpha=0;
easing_execute(id,"image_xscale",easing_class.sine,easing_class.in,image_xscale,+xs,10);
easing_execute(id,"image_yscale",easing_class.sine,easing_class.in,image_yscale,+ys,10);
easing_execute(id,"image_alpha",easing_class.sine,easing_class.in,image_alpha,+1,10);
easing_execute(id,"image_alpha",easing_class.sine,easing_class.out,1,-1,10,30);
//easing_execute(id,"xt",easing_class.sine,easing_class.in,xt,+2,10,30);