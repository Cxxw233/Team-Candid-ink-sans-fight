///@arg ix,iy,iw,ih,speed,xt
function CrBoard(){
var BOARD_SET_YOU_KONW=instance_create_depth(0,0,0,obj_bd_set)
BOARD_SET_YOU_KONW.xgo=argument[0]
BOARD_SET_YOU_KONW.ygo=argument[1]
BOARD_SET_YOU_KONW.wgo=argument[2]
BOARD_SET_YOU_KONW.hgo=argument[3]
BOARD_SET_YOU_KONW.spd=argument[4]
if(argument_count>=6)
{
BOARD_SET_YOU_KONW.xt=argument[5]
}
}
function cr_board(){
var BOARD_SET_YOU_KONW=instance_create_depth(0,0,0,obj_bd_set)
BOARD_SET_YOU_KONW.xgo=argument[0]
BOARD_SET_YOU_KONW.ygo=argument[1]
BOARD_SET_YOU_KONW.wgo=argument[2]
BOARD_SET_YOU_KONW.hgo=argument[3]
BOARD_SET_YOU_KONW.spd=argument[4]
if(argument_count>=6)
{
BOARD_SET_YOU_KONW.xt=argument[5]
}
}