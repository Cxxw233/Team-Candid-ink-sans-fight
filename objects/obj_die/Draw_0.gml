alp+=1
if (alp<60)
{
audio_stop_all()
}
if (alp=60)
{
audio_play_sound(snd_soul_die,0,0)
obj_soul.sprite_index=spr_soul_die2;
obj_soul.xt=114514;
}
if (alp=70)
{
audio_play_sound(snd_soul_die1,0,0)
repeat(4)
{
var(DD)=instance_create_depth(obj_soul.x,__view_get(e__vw.yview,0)+obj_soul.y,depth-4,obj_soul_die)
DD.xt=xt
}
if(instance_exists(obj_soul)){
instance_destroy(obj_soul)
};
}
if (alp=80)
{
instance_create_depth(320,140/*220*/,depth-1,obj_GG)
}
draw_sprite_pos(spr_die,0,__view_get( e__vw.xview, 0 ),__view_get( e__vw.yview, 0 ),__view_get( e__vw.xview, 0 )+640,__view_get( e__vw.yview, 0 ),__view_get( e__vw.xview, 0 )+640,__view_get( e__vw.yview, 0 )+480,__view_get( e__vw.xview, 0 ),__view_get( e__vw.yview, 0 )+480,1)

