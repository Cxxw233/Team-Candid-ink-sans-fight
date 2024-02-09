///@arg col,fnt,x,y,str,xs,ys,ang
function scr_draw_text(){
draw_set_color(argument[0])
draw_set_font(argument[1])
draw_text_transformed(argument[2],argument[3],argument[4],argument[5],argument[6],argument[7])
}