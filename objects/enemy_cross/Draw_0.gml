if(xt=0)
{
a+=1
if (a<10)
{
image_xscale += 0.11
image_yscale += 0.11
}
if(a>20)
{
if(b<180)
{
b+=5
image_angle+=5
}
if(b=180)
{
if(image_xscale>0)
{
image_xscale-=0.11
image_yscale-=0.11
}
else
{
xt=114514
b=0
a=0
}
}
}
if b=90
{
enemy.visible=0
xxt=1
}

}




if(xxt!=0)
{
c+=1
draw_sprite_ext(spr_cross_chara,1,x-40-xx,y+20-sin(c/20)*1.1,2,2,0,c_white,alpha)
draw_sprite_ext(spr_cross_shen,7,x-40+xx,y+20-sin((c-3)/30),2,2,0,c_white,alpha)
draw_sprite_ext(spr_cross_tui,0,x-40+xx,y+60,2,2,0,c_white,alpha)
draw_sprite_ext(spr_cross_shen,shenxt,x-40+xx,y+20-sin(c/30),2,2,0,c_white,alpha)

draw_sprite_ext(spr_cc_chara,1,x,y+16-sin((c-3)/30),2,2,0,c_white,alpha1)
draw_sprite_ext(spr_cc_chara,2,x,y+16,2,2,0,c_white,alpha1)
draw_sprite_ext(spr_cc_chara,0,x,y+16-sin(c/30),2,2,0,c_white,alpha1)


xta++;
if(xta mod 30==0){
	gxxt=choose(0,1);
	xxxt=random_range(230,400);
	yyyt=random_range(100,230);
}
draw_sprite_ext(sprGlitchX,gxxt,xxxt,yyyt,2.5,2.5,0,col,alpha-0.5);
draw_sprite_ext(sprGlitchX,gxxt,xxxt,yyyt,2.5,2.5,0,col1,alpha-0.5);



}
if(xxt=2)
{
xx+=2.5
alpha-=0.05
alpha1+=0.05
}
if(xttt=1)
{
if(shenxt<6)
{
shenxt+=1
}
else
{
if(xttt=1)
{
with(instance_create_depth(x,y+40,depth-1,but_knife))
{
sprite_index=spr_cross_knife
image_angle=point_direction(x,y+40,obj_soul.x,obj_soul.y)+29
direction=point_direction(x,y+40,obj_soul.x,obj_soul.y)
speed=9
image_speed=0
xxxt=1
}
xttt=2
}
}
}

if(xt=1)
{
a+=1
if (a<10)
{
image_xscale += 0.11
image_yscale += 0.11
}
if(a>20)
{
if(b<180)
{
b+=5
image_angle+=5
}
if(b=180)
{
if(image_xscale>0)
{
image_xscale-=0.11
image_yscale-=0.11
}
else
{
instance_destroy()
}
}
if b=90
{
enemy.visible=1
xxt=0
}
}
}

if b > 90{
  for(i=1;i<=180-b;i+=1){
    draw_sprite_ext(spr_cross_eff,1,320,y,image_xscale,image_yscale,-i,c_white,1)
  }
}else{
  for(i=1;i<=b;i+=1){
    draw_sprite_ext(spr_cross_eff,1,320,y,image_xscale,image_yscale,i,c_white,1)
  }
}
draw_self()
//draw_sprite_ext(sprite_index,0,320,y-60,image_xscale,image_yscale,image_angle,c_white,image_alpha)
//draw_sprite_ext(spr_cross_eff,0,320,y-60,image_xscale,image_yscale,image_angle,c_white,1)

