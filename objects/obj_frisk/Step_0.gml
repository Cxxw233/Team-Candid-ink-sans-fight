if(keyboard_check(vk_right))
{
image_speed=0.25
sprite_index=spr_ov_f_right
if(place_free(x+5,y))
{
x+=5
}
}
if(keyboard_check_released(vk_right))
{
image_index=0
image_speed=0
}
if(keyboard_check(vk_left))
{
image_speed=0.25
sprite_index=spr_ov_f_left
if(place_free(x-5,y))
{
x-=5
}
}
if(keyboard_check_released(vk_left))
{
image_index=0
image_speed=0
}
if(keyboard_check(vk_down))
{
image_speed=0.25
sprite_index=spr_ov_f_down
if(place_free(x,y+5))
{
y+=5
}
}
if(keyboard_check_released(vk_down))
{
image_index=0
image_speed=0
}
if(keyboard_check(vk_up))
{
image_speed=0.25
sprite_index=spr_ov_f_up
if(place_free(x,y-5))
{
y-=5
}
}
if(keyboard_check_released(vk_up))
{
image_index=0
image_speed=0
}
move_outside_solid(-90,-1)
move_outside_solid(0,-1)
move_outside_solid(180,-1)
move_outside_solid(270,-1)