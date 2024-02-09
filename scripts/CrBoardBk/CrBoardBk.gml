///@arg left,up,right,down,speed,*xt
function setboardbk(){
var BOARD_SET_YOU_KONW=instance_create_depth(0,0,0,obj_bd_set)
BOARD_SET_YOU_KONW.xgo=320-argument[0];
BOARD_SET_YOU_KONW.ygo=320-argument[1];
BOARD_SET_YOU_KONW.wgo=320+argument[2];
BOARD_SET_YOU_KONW.hgo=320+argument[3];
BOARD_SET_YOU_KONW.spd=argument[4]
if(argument_count>=6)
{
BOARD_SET_YOU_KONW.xt=argument[5]
}
}
function CrBoardBk(){
///@arg left,up,right,down,speed,*xt
var BOARD_SET_YOU_KONW=instance_create_depth(0,0,0,obj_bd_set)
BOARD_SET_YOU_KONW.xgo=320-argument[0]
BOARD_SET_YOU_KONW.ygo=320-argument[1]
BOARD_SET_YOU_KONW.wgo=320+argument[2]
BOARD_SET_YOU_KONW.hgo=320+argument[3]
BOARD_SET_YOU_KONW.spd=argument[4]
if(argument_count>=6)
{
BOARD_SET_YOU_KONW.xt=argument[5]
}
}