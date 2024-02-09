temp+=1;
if(sleep>0)
{
sleep-=1
}
if(sleep<0)
{
sleep+=1
}
if(a<=string_length(talk))
{
if(string_char_at(talk,a)!="<")
{
if(string_char_at(talk,a)!="/")
{
var(OBJ_talk_WDS_CHAR)=instance_create_depth(x+xx+offset_x+28-_h,y+yy+14,0,obj_wds)
OBJ_talk_WDS_CHAR.char=string_char_at(talk,a)
OBJ_talk_WDS_CHAR.color=color
OBJ_talk_WDS_CHAR.xs=xs
OBJ_talk_WDS_CHAR.ys=ys
OBJ_talk_WDS_CHAR.fnt=fnt
OBJ_talk_WDS_CHAR.alpha=alpha
b++;

if(b mod time = 0)
{
if(sleep=0)
{
if(string_char_at(talk,a)<=chr(128))
{
xx+=16
}
else
{
xx+=30;
}

a++;


}
}

}

else
{
b+=1
if(b mod time = 0)
{
if(sleep=0)
{
a+=1
yy+=36
xx=0
}
}
}
}

else
{

var (strexe)=""
var (strnum)=0

while(string_char_at(talk,a+2+strnum)!=">")
{
strexe+=string_char_at(talk,a+2+strnum)
strnum+=1
}

if(string_char_at(talk,a+1)="a")
{
alpha=real(strexe)
}

if(string_char_at(talk,a+1)="c")
{
switch(strexe)
{
case "red":color=c_red;break
case "orange":color=c_orange;break
case "aqua":color=c_aqua;break
case "blue":color=c_blue;break
case "yellow":color=c_yellow;break
case "green":color=c_green;break
case "purple":color=c_purple;break
case "white":color=c_white;break
case "black":color=c_black;break
}
}


if(string_char_at(talk,a+1)="j")
{
xsep=real(strexe);
}
if(string_char_at(talk,a+1)="t")
{
time=real(strexe)
}
if(string_char_at(talk,a+1)="l")
{
sleep=real(strexe)
}
if(string_char_at(talk,a+1)="h")
{
_h=real(strexe)
}
if(string_char_at(talk,a+1)="f")
{
fnt=asset_get_index(strexe)
}

if(string_char_at(talk,a+1)="X")
{
xs=real(strexe)

}

if(string_char_at(talk,a+1)="Y")
{
ys=real(strexe)
}




talk=string_delete(talk,a,3+strnum)

}

}



//-----------------------------------------------------------------------------------------------


if (gmm=1)
{
if (a>=string_length(talk)+string_count("_",talk))
{
if (keyboard_check_pressed(vk_enter))
{
global.tre=0
with(enemy)
{
event_user(15)
}

instance_destroy()
obj_soul.x=320
obj_soul.y=320
}
}



}




