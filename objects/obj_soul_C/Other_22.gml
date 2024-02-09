if (keyboard_check(ord("D"))){var (ri)=1}else{var (ri)=0}
if (keyboard_check(ord("A"))){var (le)=1}else{var (le)=0}
if (keyboard_check(ord("W"))){var (up)=1}else{var (up)=0}
if (keyboard_check(ord("S"))){var (dow)=1}else{var (dow)=0}
if (ri=0 && up=0 && dow=0 && le=0)
{
event_user(10)
}