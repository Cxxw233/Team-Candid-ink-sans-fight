if(xt=0)
{

if(abs(global.ih-hgo)<1){
global.ih=hgo
}
else{
global.ih+=hi
}
if(abs(global.iw-wgo)<1){
global.iw=wgo
}
else{
global.iw+=wi
}
if(abs(global.iy-ygo)<1){
global.iy=ygo
}
else{
global.iy+=yi
}
if(abs(global.ix-xgo)<1){
global.ix=xgo
}
else{
global.ix+=xi
}

}

if(xt=1)
{

if(abs(global.ih-hgo)<1){
global.ih=hgo
}
else{
global.ih+=((hgo-global.ih))/spd
}
if(abs(global.iw-wgo)<1){
global.iw=wgo
}
else{
global.iw+=((wgo-global.iw))/spd
}
if(abs(global.iy-ygo)<1){
global.iy=ygo
}
else{
global.iy+=((ygo-global.iy))/spd
}
if(abs(global.ix-xgo)<1){
global.ix=xgo
}
else{
global.ix+=((xgo-global.ix))/spd
}

}
if(abs(global.ix-xgo)<1 && abs(global.iy-ygo)<1 && abs(global.iw-wgo)<1 && abs(global.ih-hgo)<1)
{
global.ix=xgo
global.iy=ygo
global.iw=wgo
global.ih=hgo
instance_destroy()
}