function draw_text_sprite(X,Y,String,Sprite=spr_hp_font){
for(NNNN=0;NNNN<string_length(String);NNNN+=1)
{
draw_sprite(Sprite,ord(string_char_at(String,NNNN+1))-65,X+NNNN*sprite_get_width(Sprite),Y)
}



}