xt++;
a++;
time[0] ++;
switch(a){
	case 1: xx-=1;yy1+=1;break;
	case 3: yy+=1;yy1+=1;xx1-=1;break;
	case 6: xx1-=1;xx-=1;yy+=1;break;
	case 8: xx1-=1;xx-=1;break;
	case 12: yy-=2;yy1-=2;break;
	case 16: xx+=1;xx1+=1;break;
	case 18: xx+=1;xx1+=1;break;
	case 20: yy+=2;yy1+=2;break;
	case 22: xx+=1;xx1+=1;yy1+=1;break;
	case 24: xx+=1;xx1+=1;yy1-=1;break;
	case 26: yy-=1;yy1-=1;break;
	case 29: yy-=1;yy1-=1;break;
	case 31: yy1-=1;break;
	case 33: yy1+=1;xx1-=1;xx-=1;a=0;break;
}

draw_sprite_ext(SprScientistlegs,0,x,y,2,2,0,c_white,alpha);
draw_sprite_ext(SprScientistBody,0,x+xx,y+yy,2,2,0,c_white,alpha);
draw_sprite_ext(SprScientistHead,0,x+xx1,y+yy1-80,1,1,0,c_white,alpha);

if (xt % 10 == 0) {
	eff ++;	
}
if(xt % 30 == 0){
	xxx[0] = random_range(58,-58);
	yyy[0] = random_range(23,120);
	xxx[1] = random_range(58,-58);
	yyy[1] = random_range(23,120);
}
if(alpha && !fin){
	draw_sprite_ext(ScientistEff,eff,x+xxx[0],y-yyy[0],2,2,0,c_white,alpha);
	draw_sprite_ext(ScientistEff,eff-4,x+xxx[1],y-yyy[1],2,2,0,c_white,alpha);
}
if (!fin) {
	if (time[0] >= 1 && ind[0] >= 0) {
		ind[0] --;
		draw_sprite_ext(SprScientistInitEffect,ind[0],x,y,1,1,0,c_white,alpha1);
	}
	if (ind[0] == 20) {
		alpha = 1;
	}
}
if (fin) {
	time[1] ++;
	if (time[1]) {
		draw_sprite_ext(SprScientistInitEffect,ind[0],x,y,1,1,0,c_white,alpha1);
	}
	if (time[1] && ind[0] <= 30) {
		ind[0] ++;
	} else {
		instance_destroy();
	}
	if (ind[0] == 18) {
		alpha = 0;
	}
}

