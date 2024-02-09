for(star_alarm=1;star_alarm<230;star_alarm+=1)
{
var(STAR_L_N_OBJ_BUT)=instance_create(x,y,obj_LN_star)
STAR_L_N_OBJ_BUT.image_alpha=0
STAR_L_N_OBJ_BUT.alarm[1]=star_alarm
STAR_L_N_OBJ_BUT.alarm[0]=-1
STAR_L_N_OBJ_BUT.xt=choose(1,2)
STAR_L_N_OBJ_BUT.image_xscale=0.1
STAR_L_N_OBJ_BUT.image_yscale=0.1
STAR_L_N_OBJ_BUT.direction=star_alarm*7+star_alarm
}
instance_destroy()


