sbyyg+=1
if(sbyyg mod 10)=0
{
index=choose(0,1,2,3,4,5)
}
draw_sprite_ext(BG_white,index,x,y,1,1,0,c_white,image_alpha)
draw_sprite_pos(spr_pixel,0,x+900,y,3000,0,3000,480,x+900,480,image_alpha)
x=__view_get(e__vw.xview,0)+640-xx*3
if(keyboard_check(vk_right))
{
xx+=5
}
if(keyboard_check(vk_left))
{
xx+=7
}
if(xt=1)
{
if(xx<__view_get(e__vw.xview,0)+1000)
{
xx+=10
}
if(xx>=1000)
{
if(instance_exists(obj_OV_Pilar))
{
with(obj_OV_Pilar)
{
instance_destroy()
}
}
if(instance_exists(obj_OV_control))
{
with(obj_OV_control)
{
if(xt=-114514)
{
xt=1
}
}
}
image_alpha-=0.1
}
}