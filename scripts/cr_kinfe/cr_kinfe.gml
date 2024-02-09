// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cr_kinfe(X,Y,DEPTH=-10,ANGLE=0,LEN=0,TIME=0,COLOR=c_white,IMGSPD=1){
var(_INS)=instance_create_depth(X,Y,DEPTH,but_knife)
_INS.image_angle=ANGLE
_INS.bt=LEN
_INS.terminal=TIME
_INS.image_blend=COLOR
_INS.image_speed=IMGSPD
}