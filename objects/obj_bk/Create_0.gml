#macro define_depth depth

global.ix=38
global.iy=256
global.iw=602
global.ih=385
alpha=1
colour=make_color_rgb(255,255,255)
wh=5
if(global.phase=5){
xt=4;
}
else{
xt=2;
}

if(!script_exists(asset_get_index("BKInit"))){
	function BKInit(){
		global.down=global.ih-320;
		global.up=320-global.iy;
		global.left=320-global.ix;
		global.right=global.iw-320;
	}
}

globalvar battle_board;
globalvar surface_mask, outside_mask;

surface_mask = surface_create(room_width, room_height);
outside_mask = surface_create(room_width, room_height);
