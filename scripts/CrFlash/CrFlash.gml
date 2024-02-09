///@arg color,time
function CrFlash(){
mk=instance_create_depth(0,0,-999999999,oFlash)
mk.color=argument[0]
mk.time=argument[1]
return mk;
}
function CrFlashDT(){
mk=instance_create_depth(0,0,-1300,oFlashDT)
mk.color=c_black
mk.time=30
return mk;
}
function CrScreenFlash(){
	var inst = instance_create_depth(__view_get(0, 0), __view_get(1, 0), 0, obj_screen_flash)
if argument0
    inst.a = argument0
else
    inst.a = 10
return inst;
};