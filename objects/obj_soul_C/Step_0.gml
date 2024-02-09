
/// @description move

if (global.tre=0)
{
if (xt=0)
{
if (place_free(x+8,y))
{
if (keyboard_check(ord("D")))
{
if (!keyboard_check(vk_shift))
{
x+=5
}
else
{
x+=2
}
}
}

if (place_free(x-8,y))
{
if (keyboard_check(ord("A")))
{
if (!keyboard_check(vk_shift))
{
x-=5
}
else
{
x-=2
}
}
}

if (place_free(x,y-8))
{
if (keyboard_check(ord("W")))
{
if (!keyboard_check(vk_shift))
{
y-=5
}
else
{
y-=2
}
}
}

if (place_free(x,y+8))
{
if (keyboard_check(ord("S")))
{
if (!keyboard_check(vk_shift))
{
y+=5
}
else
{
y+=2
}
}
}
}

///blue
if (xt=1)
{
switch(angle)
{
case "down" :
{
if(vspeed>11)
{
vspeed=0
}
hspeed=0
gravity_direction=-90
image_angle=0
if (gmu=0 && b=0)
{
b=1
gravity=0.4
}
else
{
gravity=0
}
if (keyboard_check(ord("W")))
{
if(jump=0)
{
gmu=1
jump=1
gravity=0.4
vspeed=-8
}
}
if (keyboard_check_released(ord("W")) && a=0)
{
a=1
}
if (a=1)
{
if (vspeed<0)
{
vspeed+=1
}
}
if (y>=global.ih-8 || place_meeting(x,y+9,battle_move_wall))
{
jump=0
a=0
gmu=0
}
if (place_meeting(x,y+1,battle_move_wall))
{
if(vspeed>0)
{
gmu=1
gravity=0
vspeed=0
}
move_outside_solid(90,-1)
}
else
{
gravity=0.4
}
if (keyboard_check(ord("D")))
{
if (!keyboard_check(vk_shift))
{
x+=5
}
else
{
x+=2
}
}
if (keyboard_check(ord("A")))
{
if (!keyboard_check(vk_shift))
{
x-=5
}
else
{
x-=2
}
}
}
break

case "up" :
{
if(vspeed<-11)
{
vspeed=0
}
hspeed=0
gravity_direction=90
image_angle=-180
if (gmu=0 && b=0)
{
b=1
gravity=0.4
}
else
{
gravity=0
}
if (keyboard_check(ord("S")))
{
if(jump=0)
{
gmu=1
jump=1
gravity=0.4
vspeed=8
}
}
if (keyboard_check_released(ord("S")) && a=0)
{
a=1
}
if (a=1)
{
if (vspeed>0)
{
vspeed-=1
}
}
if (y<=global.iy+8 || place_meeting(x,y-9,battle_move_wall))
{
jump=0
a=0
gmu=0
}
if (place_meeting(x,y-1,battle_move_wall))
{
if(vspeed<0)
{
a=0
gmu=1
gravity=0
vspeed=0
}
move_outside_solid(-90,-1)
}
else
{
gravity=0.4
}
if (keyboard_check(ord("A")))
{
if (!keyboard_check(vk_shift))
{
x-=5
}
else
{
x-=2
}
}
if (keyboard_check(ord("D")))
{
if (!keyboard_check(vk_shift))
{
x+=5
}
else
{
x+=2
}
}
}
break

case "right":
{
if(hspeed>9)
{
hspeed=0
}
vspeed=0
gravity_direction=0
image_angle=90
if (gmu=0 && b=0)
{
b=1
gravity=0.4
}
else
{
gravity=0
}
if (keyboard_check(ord("A")))
{
if(jump=0)
{
gmu=1
jump=1
gravity=0.4
hspeed=-8
}
}
if (keyboard_check_released(ord("A")) && a=0)
{
a=1
}
if (a=1)
{
if (hspeed<0)
{
hspeed+=1
}
}
if (x>=global.iw-8 || place_meeting(x+9,y,battle_move_wall))
{
jump=0
a=0
gmu=0
}
if (place_meeting(x+1,y,battle_move_wall))
{
if(hspeed>0)
{
gmu=1
gravity=0
hspeed=0
}
move_outside_solid(0,-1)
}
else
{
gravity=0.4
}
if (keyboard_check(ord("S")))
{
if (!keyboard_check(vk_shift))
{
y+=5
}
else
{
y+=2
}
}
if (keyboard_check(ord("W")))
{
if (!keyboard_check(vk_shift))
{
y-=5
}
else
{
y-=2
}
}

}
break

case "left":
{
if(hspeed<-9.5)
{
hspeed=0
}
vspeed=0
gravity_direction=-180
image_angle=-90
if (gmu=0 && b=0)
{
b=1
gravity=0.4
}
else
{
gravity=0
}
if (keyboard_check(ord("D")))
{
if(jump=0)
{
gmu=1
jump=1
gravity=0.4
hspeed=8
}
}
if (keyboard_check_released(ord("D")) && a=0)
{
a=1
}
if (a=1)
{
if (hspeed>0)
{
hspeed-=1
}
}
if (x<=global.ix+8 || place_meeting(x-9,y,battle_move_wall))
{
jump=0
a=0
gmu=0
}
if (place_meeting(x-1,y,battle_move_wall))
{
if(hspeed<0)
{
gmu=1
gravity=0
hspeed=0
}
move_outside_solid(0,1)
}
else
{
gravity=0.4
}
if (keyboard_check(ord("S")))
{
if (!keyboard_check(vk_shift))
{
y+=5
}
else
{
y+=2
}
}
if (keyboard_check(ord("W")))
{
if (!keyboard_check(vk_shift))
{
y-=5
}
else
{
y-=2
}
}

}
break


}
}


//green
if (xt=2)
{
if (instance_exists(obj_soul_green))
{
y=obj_soul_green.y
x=obj_soul_green.x
}
}


//yellow
if(xt=3)
{
if (place_free(x+8,y))
{
if (keyboard_check(ord("D")))
{
if (!keyboard_check(vk_shift))
{
x+=5
}
else
{
x+=2
}
}
}

if (place_free(x-8,y))
{
if (keyboard_check(ord("A")))
{
if (!keyboard_check(vk_shift))
{
x-=5
}
else
{
x-=2
}
}
}

if (place_free(x,y-8))
{
if (keyboard_check(ord("W")))
{
if (!keyboard_check(vk_shift))
{
y-=5
}
else
{
y-=2
}
}
}

if (place_free(x,y+8))
{
if (keyboard_check(ord("S")))
{
if (!keyboard_check(vk_shift))
{
y+=5
}
else
{
y+=2
}
}
}
if(keyboard_check_pressed(vk_enter))
{
instance_create_depth(x,y-5,depth,obj_soul_bullet)
}
}


//ho
if(xt=6)
{
sprite_index=spr_soul_buff
if (buff=0)
image_index=0
if (buff=1)
image_index=1
if (buff=2)
image_index=2
if(buff=0)
{
if (place_free(x+5,y))
{
if (keyboard_check(vk_right))
{
if (!keyboard_check(vk_shift))
{
x+=5
}
else
{
x+=2
}
}
}

if (place_free(x-5,y))
{
if (keyboard_check(vk_left))
{
if (!keyboard_check(vk_shift))
{
x-=5
}
else
{
x-=2
}
}
}

if (place_free(x,y-5))
{
if (keyboard_check(vk_up))
{
if (!keyboard_check(vk_shift))
{
y-=5
}
else
{
y-=2
}
}
}

if (place_free(x,y+5))
{
if (keyboard_check(vk_down))
{
if (!keyboard_check(vk_shift))
{
y+=5
}
else
{
y+=2
}
}
}
}
if(buff=1)
{
part_particles_create(global.se, x+irandom_range(-5,5), y+irandom_range(-5,5), global.se_type_ice, choose(1, 2))
if (place_free(x+5,y))
{
if (keyboard_check(ord("D")))
{
if (!keyboard_check(vk_shift))
{
x+=2
}
else
{
x+=2
}
}
}

if (place_free(x-5,y))
{
if (keyboard_check(ord("A")))
{
if (!keyboard_check(vk_shift))
{
x-=2
}
else
{
x-=2
}
}
}

if (place_free(x,y-5))
{
if (keyboard_check(ord("W")))
{
if (!keyboard_check(vk_shift))
{
y-=2
}
else
{
y-=2
}
}
}

if (place_free(x,y+5))
{
if (keyboard_check(ord("S")))
{
if (!keyboard_check(vk_shift))
{
y+=2
}
else
{
y+=2
}
}
}
}
if(buff=2)
{
if(buffer=0)
{
if (place_free(x+5,y))
{
if (keyboard_check(vk_right))
{
if (!keyboard_check(vk_shift))
{
x+=8
}
else
{
x+=2
}
}
}

if (place_free(x-5,y))
{
if (keyboard_check(vk_left))
{
if (!keyboard_check(vk_shift))
{
x-=8
}
else
{
x-=2
}
}
}

if (place_free(x,y-5))
{
if (keyboard_check(vk_up))
{
if (!keyboard_check(vk_shift))
{
y-=8
}
else
{
y-=2
}
}
}

if (place_free(x,y+5))
{
if (keyboard_check(vk_down))
{
if (!keyboard_check(vk_shift))
{
y+=8
}
else
{
y+=2
}
}
}
}
if(buffer=1)
{
switch(angle)
{
#region BlueDown
case "down" :
{
if(vspeed>11)
{
vspeed=0
}
hspeed=0
gravity_direction=-90
image_angle=0
if (gmu=0 && b=0)
{
b=1
if(slam==0){
	gravity=0.4;
}else{
	gravity=downspd;
}
}else
{
gravity=0
}
if (keyboard_check(vk_up))
{
if(jump=0)
{
gmu=1
jump=1
if(slam==0){
gravity=0.4}else{gravity=downspd;}
vspeed=-8
}
}
if (keyboard_check_released(vk_up) && a=0)
{
a=1
}
if (a=1)
{
if (vspeed<0)
{
vspeed+=1
}
}
if (y>=global.ih-8 || place_meeting(x,y+9,battle_move_wall))
{
jump=0
a=0
gmu=0
}
if (place_meeting(x,y+1,battle_move_wall))
{
if(vspeed>0)
{
gmu=1
gravity=0
vspeed=0
}
move_outside_solid(90,-1)
}
else
{
if(slam==0){
gravity=0.4}else{gravity=downspd;}
}
if (keyboard_check(vk_right))
{
if (!keyboard_check(vk_shift))
{
x+=8
}
else
{
x+=2
}
}
if (keyboard_check(vk_left))
{
if (!keyboard_check(vk_shift))
{
x-=8
}
else
{
x-=2
}
}
}
break
#endregion

#region BlueUp
case "up" :
{
if(vspeed<-11)
{
vspeed=0
}
hspeed=0
gravity_direction=90
image_angle=-180
if (gmu=0 && b=0)
{
b=1
if(slam==0){
gravity=0.4}else{gravity=downspd;}
}
else
{
gravity=0
}
if (keyboard_check(vk_down))
{
if(jump=0)
{
gmu=1
jump=1
if(slam==0){
gravity=0.4}else{gravity=downspd;}
vspeed=8
}
}
if (keyboard_check_released(vk_down) && a=0)
{
a=1
}
if (a=1)
{
if (vspeed>0)
{
vspeed-=1
}
}
if (y<=global.iy+8 || place_meeting(x,y-9,battle_move_wall))
{
jump=0
a=0
gmu=0
}
if (place_meeting(x,y-1,battle_move_wall))
{
if(vspeed<0)
{
a=0
gmu=1
if(slam==0){
gravity=0.4}else{gravity=downspd;}
vspeed=0
}
move_outside_solid(-90,-1)
}
else
{
if(slam==0){
gravity=0.4}else{gravity=downspd;}
}
if (keyboard_check(vk_left))
{
if (!keyboard_check(vk_shift))
{
x-=5
}
else
{
x-=2
}
}
if (keyboard_check(vk_right))
{
if (!keyboard_check(vk_shift))
{
x+=5
}
else
{
x+=2
}
}
}
break
#endregion

#region BlueRight
case "right":
{
if(hspeed>9)
{
hspeed=0
}
vspeed=0
gravity_direction=0
image_angle=90
if (gmu=0 && b=0)
{
b=1
if(slam==0){
gravity=0.4}else{gravity=downspd;}
}
else
{
gravity=0
}
if (keyboard_check(vk_left))
{
if(jump=0)
{
gmu=1
jump=1
if(slam==0){
gravity=0.4}else{gravity=downspd;}
hspeed=-8
}
}
if (keyboard_check_released(vk_left) && a=0)
{
a=1
}
if (a=1)
{
if (hspeed<0)
{
hspeed+=1
}
}
if (x>=global.iw-8 || place_meeting(x+9,y,battle_move_wall))
{
jump=0
a=0
gmu=0
}
if (place_meeting(x+1,y,battle_move_wall))
{
if(hspeed>0)
{
gmu=1
gravity=0
hspeed=0
}
move_outside_solid(0,-1)
}
else
{
if(slam==0){
gravity=0.4}else{gravity=downspd;}
}
if (keyboard_check(vk_down))
{
if (!keyboard_check(vk_shift))
{
y+=5
}
else
{
y+=2
}
}
if (keyboard_check(vk_up))
{
if (!keyboard_check(vk_shift))
{
y-=5
}
else
{
y-=2
}
}

}
break
#endregion

#region BlueLeft
case "left":
{
if(hspeed<-9.5)
{
hspeed=0
}
vspeed=0
gravity_direction=-180
image_angle=-90
if (gmu=0 && b=0)
{
b=1
if(slam==0){
gravity=0.4}else{gravity=downspd;}
}
else
{
gravity=0
}
if (keyboard_check(vk_right))
{
if(jump=0)
{
gmu=1
jump=1
if(slam==0){
gravity=0.4}else{gravity=downspd;}
hspeed=8
}
}
if (keyboard_check_released(vk_right) && a=0)
{
a=1
}
if (a=1)
{
if (hspeed>0)
{
hspeed-=1
}
}
if (x<=global.ix+8 || place_meeting(x-9,y,battle_move_wall))
{
jump=0
a=0
gmu=0
}
if (place_meeting(x-1,y,battle_move_wall))
{
if(hspeed<0)
{
gmu=1
gravity=0
hspeed=0
}
move_outside_solid(0,1)
}
else
{
if(slam==0){
gravity=0.4}else{gravity=downspd;}
}
if (keyboard_check(vk_down))
{
if (!keyboard_check(vk_shift))
{
y+=5
}
else
{
y+=2
}
}
if (keyboard_check(vk_up))
{
if (!keyboard_check(vk_shift))
{
y-=5
}
else
{
y-=2
}
}

}
#endregion;
break;


}	
}
}
}
}


if(xt!=6)
{
image_index=xt
}
if(global.hp<=0)
{
instance_destroy()
}
///hurt
/*if (global.kr=0)
{*/
if (hpj>0)
{
hpj-=1
if(hpj mod 4 = 0)
{
if(image_blend=c_gray)
{
image_blend=c_white
}
else
{
if(image_blend=c_white)
{
image_blend=c_gray
}
}
}
}
if (hpj=0)
{
image_blend=c_white
}
/*if (global.hp<=0)
{
gravity=0
vspeed=0
global.hp=0
if (!instance_exists(obj_die))
{
var (die) = instance_create_depth(x,y,-114514,obj_die)
die.xt=xt
}
xt=114514
}
else
{
image_index=xt
}
/*}
else
{
global.hp=obj_system.kr
if (obj_system.nowkr<=0)
{
global.hp=0
obj_system.nowkr=0
if (!instance_exists(obj_die))
{
instance_create(x,y,obj_die)
}
}
else
{
image_index=xt
}
}/**/
///sprite
//image_index=xt

