if(xt=0)
{
image_xscale+=0.035
image_yscale+=0.035
gravity_direction+=5
image_angle+=9
if(instance_exists(obj_soul))
{
if(place_meeting(x,y,obj_soul))
{
with(obj_soul)
{
event_user(10)
}
}
}
}
if(xt=1)
{
image_xscale-=0.035
image_yscale+=0.035
gravity_direction-=5
image_angle-=9
if(instance_exists(obj_soul))
{
if(place_meeting(x,y,obj_soul))
{
with(obj_soul)
{
event_user(10)
}
}
}
}




/*if(MG=0)
{
if (xt==0&&image_alpha != 1){
    image_alpha += 0.05
};
if (x<320&&image_alpha > 0.6){
    if (image_angle != -270)
        image_angle+=((-270 - image_angle)/6);
    if (image_angle < -100 && xt==0){
        mk=instance_create_depth(x,y,0,battle_sickle)
        mk.image_index = image_index
        mk.image_xscale = (image_xscale * -1)
        mk.image_yscale = (image_xscale * -1)
        mk.speed = (image_xscale * 6)
		mk.MG=1
        xt=1;
    };
};
if (x>320&&image_alpha > 0.6){
    if (image_angle != 270)
        image_angle+=((270 - image_angle)/6);
    if (image_angle > 100 && xt==0){
        mk=instance_create_depth(x,y,0,battle_sickle)
        mk.image_index = image_index
        mk.image_xscale = (image_xscale * -1)
        mk.image_yscale = (image_xscale * -1)
        mk.speed = (image_xscale * 6)
		mk.MG=1
        xt=1;
    };
};
if (xt==1){
    image_alpha -= 0.05
    if (image_alpha < 0)
        instance_destroy()
};
}
if(MG=1)
{
image_alpha=0;
image_angle=180;
Anim(id, "image_alpha", 0, 0, 0, 1, 10);
depth=-150
MG=2
}