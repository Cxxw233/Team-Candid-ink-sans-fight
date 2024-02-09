if(xt==1){
a++
if(a>10){
image_alpha-=(a-10)/10;
};
if(image_alpha<=0) then instance_destroy();
};


