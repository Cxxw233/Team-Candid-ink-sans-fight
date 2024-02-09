if(global.phase=4)
{
if(global.color=0&&global.phase4=0)
{
draw_sprite_ext(spr_fight2,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
} 
if(global.color=0&&global.phase4=1)
{
draw_self()
} 
if(global.color=1)
{
var(colorgreen)=(global.dye[1]=-1 ? c_white: global.green)
draw_sprite_ext(spr_fight_line_dye,0,x,y+(image_xscale-2)*29,2,image_xscale,0,colorgreen,image_alpha)
var(coloraqua)=(global.dye[2]=-1 ? c_white: global.aqua)
draw_sprite_ext(spr_fight_line_dye,1,x,y-(image_xscale-2)*29,2,image_xscale,0,coloraqua,image_alpha)
var(colorblue)=(global.dye[3]=-1 ? c_white: make_color_rgb(0,30,255))
draw_sprite_ext(spr_fight_line_dye,2,x,y+(image_xscale-2)*29,2,image_xscale,0,colorblue,image_alpha)
var(colorpink)=(global.dye[4]=-1 ? c_white: global.purple)
draw_sprite_ext(spr_fight_line_dye,3,x,y-(image_xscale-2)*29,2,image_xscale,0,colorpink,image_alpha)
var(colorpurple)=(global.dye[5]=-1 ? c_white: global.pink)
draw_sprite_ext(spr_fight_line_dye,3,x,y+(image_xscale-2)*29,-2,image_xscale,0,colorpurple,image_alpha)
var(colorred)=(global.dye[6]=-1 ? c_white: global.red)
draw_sprite_ext(spr_fight_line_dye,2,x,y-(image_xscale-2)*29,-2,image_xscale,0,colorred,image_alpha)
var(colororange)=(global.dye[7]=-1 ? c_white: global.orange)
draw_sprite_ext(spr_fight_line_dye,1,x,y+(image_xscale-2)*29,-2,image_xscale,0,colororange,image_alpha)
var(coloryellow)=(global.dye[8]=-1 ? c_white: global.yellow)
draw_sprite_ext(spr_fight_line_dye,0,x,y-(image_xscale-2)*29,-2,image_xscale,0,coloryellow,image_alpha)
}
}
else
{
draw_self()
}
