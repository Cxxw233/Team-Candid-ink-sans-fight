if(ord(talk)>128) then font=fnt_sans_say[1]; else font=fnt_sans_say[0];

draw_sprite_ext(sprite_index,0,enemy.x+88,enemy.y-136,1,1,0,c_white,1)
//draw_self()
draw_set_alpha(1)
draw_set_colour(col)
draw_set_font(font)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text_transformed(enemy.x+88+10,enemy.y-136+8,string_hash_to_newline(string_copy(talk,0, a)),xs,ys,0)
//b+=1
talk = string_replace_all(talk, string("/"),chr(10))
/*if (a<string_length(talk)+string_count("_",talk))
{
if (b mod time)=0
{
a+=1
audio_play_sound(snd_sans_say,0,0)
}
}


if(string_char_at(talk,a)="^")
{
if(instance_exists(enemy))
{
enemy.touxt=string_char_at(talk,a+1)
}
talk=string_delete(talk,a,2)
return 0;
}

if(string_char_at(talk,a)="|")
{
switch string_char_at(talk,a+1)
{
case "r" : color=c_red;break;
case "b" : color=c_blue;break;
case "g" : color=c_green;break;
case "w" : color=c_white;break;
case "p" : color=c_purple;break;
case "y" : color=c_yellow;break;
case "a" : color=c_aqua;break;
case "o" : color=c_orange;break;
case "R" : color=make_color_rgb(255,255,255)
default   : color=c_white;break;
}
talk=string_delete(talk,a,2)
return 0;
}

if(string_char_at(talk,a)="&")
{
time=string_char_at(talk,a+1)
talk=string_delete(talk,a,2)
return 0;
}


if (keyboard_check_pressed(vk_shift))
{
a=11451419
var alam =0
repeat(string_length(talk))
{
alam+=1
if(string_char_at(talk,alam)="^")
{
if(instance_exists(enemy))
{
enemy.touxt=ord(string_char_at(talk,alam+1))
}
talk=string_delete(talk,alam,2)
return 0;
}
}
talk = string_replace_all(talk, "_",chr(0))
}

if (a>=string_length(talk)+string_count("_",talk))
{
if (keyboard_check_pressed(vk_enter))
{
a=0
xt+=1
talk=say[xt]
b=0
if (xt=maxxt)
{
with(obj)
{
xt+=1
}
instance_destroy()
}
}
}




/* */
/*  */
