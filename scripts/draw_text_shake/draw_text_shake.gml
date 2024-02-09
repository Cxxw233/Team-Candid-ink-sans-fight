// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_shake(X,Y,Str,XX=16,YY=22,color=c_white,XS=1,YS=1,Angle=0){
var(xxmove)=XX
var(yymove)=YY
var(xx)=X
var(yy)=Y
for(var _num_text=1;_num_text<=string_length(Str);_num_text+=1)
{
if(string_char_at(Str,_num_text)="{")
{
var(EXECUTE_STR)=""
var(EXECUTE_NUM)=0
while(string_char_at(Str,_num_text+EXECUTE_NUM+1)!="}")
{
EXECUTE_STR+=string_char_at(Str,_num_text+EXECUTE_NUM+2)
EXECUTE_NUM+=1
}
EXECUTE_STR=string_replace_all(EXECUTE_STR,"}",chr(0))

var(EXECUTE_CHAR_AT)=string_char_at(Str,_num_text+1)

if(EXECUTE_CHAR_AT="c") //Color
{
if(EXECUTE_STR="red")//红
{
color=c_red
}
if(EXECUTE_STR="yellow")//黄
{
color=c_yellow
}
if(EXECUTE_STR="blue")//蓝
{
color=c_blue
}
if(EXECUTE_STR="aqua")//青
{
color=c_aqua
}
if(EXECUTE_STR="pink")//粉
{
color=make_colour_rgb(255,0,255)
}
if(EXECUTE_STR="orange")//橙
{
color=c_orange
}
if(EXECUTE_STR="green")//绿
{
color=c_green
}
if(EXECUTE_STR="white")//白
{
color=c_white
}
if(EXECUTE_STR="gray")//暗
{
color=c_gray
}
if(EXECUTE_STR="purple")//紫
{
color=c_purple
}
if(EXECUTE_STR="black")//black
{
color=c_black
}
}

if(EXECUTE_CHAR_AT="x")//x move num
{
xxmove=real(EXECUTE_STR)
}

if(EXECUTE_CHAR_AT="y")//y move num
{
yymove=real(EXECUTE_STR)
}

_num_text+=EXECUTE_NUM+1

continue
}
if(string_char_at(Str,_num_text)="/")
{
xx=X+18
yy+=yymove
_num_text+=1
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_alpha(1)
draw_set_color(color)
draw_text_transformed(xx,yy,string_char_at(Str, _num_text),XS,YS,Angle)
xx+=xxmove
}


}