if(instance_exists(obj_frisk))
{
if(obj_frisk.x>1500)
{
if(xt=0)
{
if(!instance_exists(obj_OV_WH))
{
instance_create_depth(__view_get(e__vw.xview,0)+640,0,0,obj_OV_WH)
}
xt=-114514
//with(obj_OV_Pilar)
//{
//depth=-1
//}
//xt=1
}
}
if(xt=1)
{
draw_set_alpha(1)
draw_set_color(c_white)
draw_rectangle(0,0,2800,480,0)
a+=1
if(a=50)
{
xt=2
}
}
if(xt=2)
{
a+=1
if(a mod 5)=0
{
if(alp1=1)
{
alp1=0
}
else
{
if(alp1=0)
{
alp1=1
}
}
}
draw_set_alpha(1)
draw_set_color(c_white)
draw_rectangle(0,0,2800,480,0)
draw_set_alpha(alp1)
draw_set_color(c_black)
draw_rectangle(0,0,2800,480,0)
//draw_sprite_ext(spr_soul,0,obj_frisk.x,obj_frisk.y-30,1,1,0,c_white,alp1)
if(a=70)
{
alp1=1

var f = file_bin_open("temp",1)
file_bin_write_byte(f,string(1))
file_bin_close(f)
//ini_open("savedata.ini");
//ini_write_real("System","area",(file_exists("temp")));
//ini_close();
xt=3
instance_create_depth(0,0,0,obj_OV_falsh)
depth=-114514
room_goto(Room_battle)
instance_destroy()
}
}
}