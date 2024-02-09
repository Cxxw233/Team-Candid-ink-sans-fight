if (xt=0)
{
if (image_alpha<1)
{
image_alpha+=0.05
}
}
if (xt=1)
{
if (image_alpha>0)
{
image_alpha-=0.05
}
audio_sound_gain(snd_over,image_alpha,1)
}
if (xt=1)
{
if (image_alpha<0.05)
{
a-=1
}
}
if (image_alpha<0.05 && xt=1 && a<-30)
{
audio_stop_all()
game_restart()
instance_destroy()
}
if (keyboard_check_pressed(vk_enter))
{
xt=1
}

