// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outline(XX,YY,STR,COL=c_black){
draw_set_color(COL)
draw_text(XX-1,YY+1,STR)
draw_text(XX+1,YY+1,STR)
draw_text(XX,YY-1,STR)
draw_text(XX,YY+1,STR)
draw_text(XX-1,YY-1,STR)
draw_text(XX+1,YY-1,STR)
draw_text(XX-1,YY,STR)
draw_text(XX+1,YY,STR)

}