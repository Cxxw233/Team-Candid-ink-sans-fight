if(xt=0)
{
	sprite_index=spr_block_ho
	image_index=0
if (hj > 0)
    part_emitter_region(global.se, c, ((x - 2) - hj), (x + 2), (y - yscale), (y + yscale), 0, 0)
if (hj < 0)
    part_emitter_region(global.se, c, (x - 2), ((x + 2) - hj), (y - yscale), (y + yscale), 0, 0)
part_emitter_burst(global.se, c, global.se_type_ice, (yscale * 3))
}
if(xt=1)
{
	sprite_index=spr_block_ho
	image_index=1
	emit = part_emitter_create(global.se)
part_emitter_region(global.se, emit, (x - 2), (x + 2), (y - yscale), (y + yscale), 0, 0)
if (hj > 0)
    part_emitter_burst(global.se, emit, global.se_type_fire_left, (yscale / 2))
if (hj < 0)
    part_emitter_burst(global.se, emit, global.se_type_fire_right, (yscale / 2))
}
if(xt=2)
{
	sprite_index=spr_block_ho_big
	image_index=0
	speed=0
}
if(xt=3)
{
	sprite_index=spr_block_ho_big
	image_index=1
	speed=0
}
if(xt=0||xt=1)
{
image_xscale=xscale
image_yscale=yscale
}
if(xt=2||xt=3)
{
image_xscale=12
image_yscale=12
if(a>=25)
{
instance_destroy()
}
}
a++
if(a<15)
{
easing_execute(id,"image_alpha",easing_class.sine,easing_class.in,0,+1,5)
}
