a=0
xt=0
time=0
time2=0
c=0
xtt=0
globalvar _part0;
_part0=part_type_create();
part_type_shape(_part0,pt_shape_pixel);
part_type_scale(_part0,4,4);
part_type_gravity(_part0,0.5,random(360));
part_type_colour1(_part0,c_white);
part_type_colour2(_part0,c_gray,c_red);
part_type_alpha1(_part0,0.5);
part_type_alpha2(_part0,0.5,0);
part_type_life(_part0,30,60);