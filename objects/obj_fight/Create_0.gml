image_xscale=2
image_yscale=2
image_speed=0
depth=-4
xt=0
image_alpha=1
c=instance_create_depth(choose(x-272,x+272),y,depth-1,obj_fight_fied)
c.obj=id
if(global.phase=1 || global.phase=2 || global.phase4=1)
sprite_index=spr_fight1;
if((global.phase=3 || global.phase=4 || global.phase=5)&&global.phase4=0)
sprite_index=spr_fight2;
//if(global.color=1&&global.phase4=0)
//sprite_index=spr_fight3;
