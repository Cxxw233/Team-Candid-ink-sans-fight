// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function p3_set(){
var turn=turnP2
if(global.dye[1]!=0 && global.dye[2]!=0 && global.dye[3]!=0 && global.dye[4]!=0 && global.dye[5]!=0 && global.dye[6]!=0 && global.dye[7]!=0 && global.dye[8]!=0)
{
game_end()
}
else
{
do{
var obj = choose(1,2,3,4,5,6,7,8);
}until(global.dye[obj] = 0);
switch(obj){
  case 1: turn = asset_get_index("turnG"+string(irandom_range(1,5)));break;
  case 2: turn = asset_get_index("turnA"+string(irandom_range(1,5)));break;
  case 3: turn = asset_get_index("turnB"+string(irandom_range(1,5)));break;
  case 4: turn = asset_get_index("turnI"+string(irandom_range(1,5)));break;
  case 5: turn = asset_get_index("turnP"+string(irandom_range(1,5)));break;
  case 6: turn = asset_get_index("turnR"+string(irandom_range(1,5)));break;
  case 7: turn = asset_get_index("turnO"+string(irandom_range(1,5)));break;
  case 8: turn = asset_get_index("turnY"+string(irandom_range(1,5)));break;
  
}
}
//show_message(string(obj));
return turnP2;
//show_debug_message(turn);
}

/*

do{
obj = choose(1,2,3,4,5,6,7,8);
}until(global.dye[obj] = 0);
with(butxt3bottles){if(bkxt3empty.obj = nb){instance_create(x,y,butxt3bottletxs)}}
switch(obj){
  case 1: tobj = greenallbut;break;
  case 2: tobj = aquaallbut;break;
  case 3: tobj = blueallbut;break;
  case 4: tobj = purpleallbut;break;
  case 5: tobj = pinkallbut;break;
  case 6: tobj = redallbut;break;
  case 7: tobj = orangeallbut;break;
  case 8: tobj = yellowallbut;break;
  
}