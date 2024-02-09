function cr_dt_light(X,Y,Xs,Ys,DEPTH=-10,ANGLE=0,LEN=0,TIME=1,COLOR=c_purple,ALARM=10){
var(_INS)=instance_create_depth(X,Y,DEPTH,dt_light)
_INS.image_angle=ANGLE
_INS.image_xscale=Xs
_INS.image_yscale=Ys
_INS.bt=LEN
_INS.terminal=TIME+2
_INS.image_blend=COLOR
_INS.alarm[0]=ALARM
}

// Box