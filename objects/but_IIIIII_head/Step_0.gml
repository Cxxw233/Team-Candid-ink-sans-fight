if(xt="bone")
{
a+=1
if (a>30&&(a%10==0)){
var bone=cr_bone(x,y+10*4,-10,3,90,c_white,-4,0,1);
easing_execute(bone,"gravity",0,0,0,0.3,5,irandom_range(3,140))
//bone.gravity=0.2;
}
if(a=30)
{
line_x=1000
}

}
if(xt="move")
{

}
if(xt="fight")
{
OBJ=instance_create_depth(x,y+124,depth-1,but_IIIIII_)
xt="get"
}
if(xt="get")
{
if(!instance_exists(OBJ))
{
a=0
obj_soul.xt=1
xt="fight1"
}
}
if(xt="fight1")
{
a+=1
if (a=20)
{
var bone_white=instance_create_depth(640,global.ih+2,depth,obj_white_battle) //cr_bone(x,y+10*4,-10,3,90,c_white,-4,0,1,spr_bone_IIIIII);
bone_white.sprite_index=spr_IIIIII_III
bone_white.hspeed=-8
}

if(a=70)
{
a=0
xt="wall"
}


}
if(xt="wall")
{
a+=1
ang=sin(a/20)*80
if(a mod choose(30,50,70) = 0)
{
col=(col=global.blue ?   c_orange: global.blue)
}
if(a=330)
{
easing_execute(id,"yy",0,0,30,-30,30)
alarm[4]=32
xt="OTHER"
}
}