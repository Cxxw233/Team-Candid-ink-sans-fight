#region BoneSystem
function CrBone(){
/// @arg x,y,depth,xscale,angle,color,hspd*,vspd*,*auto_destroy,*yscale
	c=instance_create_depth(argument[0],argument[1],argument[2],obj_bone);
	c.image_xscale=argument[3];
	c.image_angle=argument[4];
	c.image_blend=argument[5];
	if(argument_count>=7) then c.hspeed=argument[6];
	if(argument_count>=8) then c.vspeed=argument[7];
	if(argument_count>=9) then c.auto_destroy=argument[8];
	if(argument_count>=10) then c.image_yscale=argument[9];
	return c;
	delete c;
};

function cr_bone(){
/// @arg x,y,depth,xscale,angle,color,hspeed*,vspeed*,*auto_destroy,*yscale
	c=instance_create_depth(argument[0],argument[1],argument[2],obj_bone);
	c.image_xscale=argument[3];
	c.image_angle=argument[4];
	c.image_blend=argument[5];
	if(argument_count>=7) then c.hspeed=argument[6];
	if(argument_count>=8) then c.vspeed=argument[7];
	if(argument_count>=9) then c.auto_destroy=argument[8];
	if(argument_count>=10) then c.image_yscale=argument[9];
	return c;
	delete c;
};
	
function CrBoneRun(){
///@arg x,y,length,depth,color,angle,*hspd,*vspd,*rotate,*auto_destroy;
	var bone=instance_create_depth(argument[0],argument[1],argument[3],runBone);
	bone.length=argument[2];
	bone.color=argument[4];
	bone.angle=argument[5];
	bone.rotate=0;
	if(argument_count>=7) then bone.hspeed=argument[6];
	if(argument_count>=8) then bone.vspeed=argument[7];
	if(argument_count>=9) then bone.rotate=argument[8];
	if(argument_count>=10) then bone.auto_destroy=argument[9];
	
	return bone;
	//delete bone;
};
#endregion;
	
#region BoneWall

function CrWallDown(){
///@arg pause,length,duration,color,[N/A]*isTime,[N/A]*isX,*tip;
	var PAUSE=argument[0],LENGTH=argument[1],DURATION=argument[2],COLOR=argument[3],it=0,is=0,_tip=1;
	var ii=0;
	if(argument_count>=5) then it=argument[4];
	if(argument_count>=6) then is=argument[5];
	if(argument_count>=7) then _tip=argument[6];
	for(i=1;i<global.left+global.right+6;i+=11){
		ii ++;
		b[ii]=CrBoneRun(320-global.left+i+is,320+global.down+LENGTH/2+10,LENGTH,0,COLOR,90);
		b[ii].alarm[0]=DURATION+120;
		with(b[ii]){
			easing_execute(id,"y",0,0,y,-LENGTH,8+it,PAUSE);
			//easing_execute(id,"y",easing_class.sine,easing_class.in,y-LENGTH,LENGTH*2,16,16+PAUSE+DURATION);
			easing_execute(id,"y",0,0,y-LENGTH,LENGTH*2,16,16+PAUSE+DURATION);
		};
		//return b[ii];
	};
	if(_tip>=2){
		tip=instance_create_depth(0,0,0,TipBox);
		tip.duration=PAUSE;
		tip.x1=320-global.left+1;
		tip.y1=320+global.down-LENGTH;
		tip.x2=320+global.right-2;
		tip.y2=320+global.down-2;
	};
	//delete PAUSE;delete LENGTH;delete DURATION;delete COLOR;
};

function CrWallUp(){
///@arg pause,length,duration,color,[N/A]*isTime,[N/A]*isX,*tip;
	var PAUSE=argument[0],LENGTH=argument[1],DURATION=argument[2],COLOR=argument[3],it=0,is=0,_tip=1;
	if(argument_count>=5) then it=argument[4];
	if(argument_count>=6) then is=argument[5];
	if(argument_count>=7) then _tip=argument[6];
	var ii=0;
	for(i=1;i<global.left+global.right+6;i+=11){
		ii ++;
		b[ii] = CrBoneRun(320-global.left+i+is,320-global.up-LENGTH/2-5,LENGTH,0,COLOR,90);
		b[ii].alarm[0]=DURATION+120;
		with(b[ii]){
			easing_execute(id,"y",0,0,y,LENGTH,8+it,PAUSE);
			easing_execute(id,"y",0,0,y+LENGTH,-LENGTH*2,16,16+PAUSE+DURATION);
		};
		//return b[ii];
	};
	if(_tip>=2){
		_ti=instance_create_depth(0,0,0,TipBox);
		_ti.duration=PAUSE;
		_ti.x1=320-global.left+1;
		_ti.y1=320-global.up+LENGTH-1;
		_ti.x2=320+global.right-2;
		_ti.y2=320-global.up+1;
	};
	//delete PAUSE;delete LENGTH;delete DURATION;delete COLOR;
};

function CrWallLeft(){
///@arg pause,length,duration,color,[N/A]*inTime,[N/A]*isX,*tip;
	var PAUSE=argument[0],LENGTH=argument[1],DURATION=argument[2],COLOR=argument[3],it=0,is=0,_tip=1;
	if(argument_count>=5) then it=argument[4];
	if(argument_count>=6) then is=argument[5];
	if(argument_count>=7) then _tip=argument[6];
	var ii=0;
	for(i=1;i<global.up+global.down+6;i+=11){
		ii ++;
		b[ii]=CrBoneRun((global.left-LENGTH/2-5)-20-10+is,320-global.up+i,LENGTH,0,COLOR,0);
		b[ii].alarm[0]=DURATION+120;
		with(b[ii]){
			easing_execute(id,"x",easing_class.sine,easing_class.in,x,+LENGTH,8+it,PAUSE);
			easing_execute(id,"x",easing_class.sine,easing_class.in,x+LENGTH,-LENGTH*2,16,16+PAUSE+DURATION);
			//easing_execute(id,"y",easing_class.sine,easing_class.in,y,LENGTH,8,PAUSE);
			//easing_execute(id,"y",easing_class.sine,easing_class.in,y+LENGTH,-LENGTH*2,16,16+PAUSE+DURATION);
		};
		//return b[ii];
	};
	if(_tip>=2){
		_ti=instance_create_depth(0,0,0,TipBox);
		_ti.duration=PAUSE;
		_ti.x1=320-global.left+1;
		_ti.y1=320-global.up+1;
		_ti.x2=320-global.left+LENGTH-1;
		_ti.y2=320+global.down-2;
	};
	//delete PAUSE;delete LENGTH;delete DURATION;delete COLOR;		
};
	
function CrWallRight(){
///@arg pause,length,duration,color,[N/A]*inTime,[N/A]*isX,*tip;
	var PAUSE=argument[0],LENGTH=argument[1],DURATION=argument[2],COLOR=argument[3],it=0,is=0,_tip=1;
	if(argument_count>=5) then it=argument[4];
	if(argument_count>=6) then is=argument[5];
	if(argument_count>=7) then _tip=argument[6];
	var ii=0;
	for(i=1;i<global.up+global.down+6;i+=11){
		ii ++;
		b[ii]=CrBoneRun((global.right+LENGTH/2+5)+100+is,320-global.up+i,LENGTH,0,COLOR,0);
		//b[ii]=CrBoneRun((global.left-LENGTH/2-5)-20,320-global.up+i,LENGTH,0,COLOR,0);
		b[ii].alarm[0]=DURATION+120;
		with(b[ii]){
			easing_execute(id,"x",easing_class.sine,easing_class.in,x,-LENGTH,8+it,PAUSE);
			easing_execute(id,"x",easing_class.sine,easing_class.in,x-LENGTH,LENGTH*2,16,16+PAUSE+DURATION);
		};
		//return b[ii];
	};
	if(_tip>=2){
		_ti=instance_create_depth(0,0,0,TipBox);
		_ti.duration=PAUSE;
		_ti.x1=320+global.right-2;
		_ti.y1=320-global.up+1;
		_ti.x2=320+global.right-LENGTH;
		_ti.y2=320+global.down-2;
	};
	//delete PAUSE;delete LENGTH;delete DURATION;delete COLOR;		
};
	
function CrWall(){
///@arg type,pause,length,duration,color,*isTip;
	var type=string_lower(argument[0]),_t=0;
	if(argument_count>=2) then _t=argument[1];
	switch(type){
		case "down":
			CrWallDown(argument[1],argument[2],argument[3],argument[4],0,0,_t);
	break;
		case "up":
			CrWallUp(argument[1],argument[2],argument[3],argument[4],0,0,_t);
	break;
		case "left":
			CrWallLeft(argument[1],argument[2],argument[3],argument[4],0,0,_t);
	break;
		case "right":
			CrWallRight(argument[1],argument[2],argument[3],argument[4],0,0,_t);
	break;
	};
	delete type;
};
#endregion;

#region BoneSystemP
function CrBoneIh(){
///@arg x,length,color,angle,hspd,vspd,*rotate,*depth,*AutoDestroy;
	var dep=obj_bk.depth+1,rot=0,destroy=1;
	if(argument_count>=8) then rot=argument[7];
	if(argument_count>=9) then dep=argument[8];
	if(argument_count>=10) then destroy=argument[9];
	bone=CrBoneRun(argument[0],320+global.down-argument[1]/2-5,argument[1],dep,argument[2],argument[3],argument[4],argument[5],rot,destroy);
	return bone;
};
function CrBoneIy(){
///@arg x,length,color,hspd;
	bone=CrBoneRun(argument[0],320-global.up+argument[1]/2+5,argument[1],0,argument[2],90,argument[3],0,0,1);
	return bone;
};
function CrBonePow(){
///@arg x,y,gap,hspd;
	CrBoneIy(argument[0],argument[1]-320+global.up-argument[2],bones.white,argument[3]);
	CrBoneIh(argument[0],320+global.down-argument[2]-argument[1],bones.white,90,argument[3],0);
};
function CrBoneIw(){
///@arg y,length,color,vspd;
	bone=CrBoneRun(320+global.right-argument[1]/2-5,argument[0],argument[1],0,argument[2],0,0,argument[3]);
	return bone;
}
function CrBoneIx(){
///@arg y,length,color,vspd;
	bone=CrBoneRun(320-global.left+argument[1]/2+5,argument[0],argument[1],0,argument[2],0,0,argument[3]);
	return bone;
};
function CrBoneIxP(){
///@arg y,length,color,vspd;
	bone=CrBoneRun(global.ix+(argument[1]*2-(argument[1]/5)),argument[0],argument[1],0,argument[2],0,0,argument[3]);
	return bone;
};
function CrBoneIwP(){
///@arg y,length,color,vspd;
	bone=CrBoneRun(global.iw-(argument[1]*2-(argument[1]/5)),argument[0],argument[1],0,argument[2],0,0,argument[3]);
	return bone;
};
function CrBoneSide(){
///@arg x,y,gap,color,vspd;
	CrBoneIx(argument[1],argument[0]-320+global.left-argument[2],argument[3],argument[4]);
	CrBoneIw(argument[1],320+global.right-argument[2]-argument[0],argument[3],argument[4]);
};
#endregion;

#region BoneMain

function CrBoneHeap(TYPE,PAUSE=0,LENGTH,DURATION,COLOR=bones.white){
	switch(TYPE){ // RIGHT DOWN
		case "up":
		case dir_val.up :
			var ii=0;
			for(i=-2;i<((global.left+global.right)+11);i+=11){
				++ii;
				______bone[ii]=CrBoneRun(((obj_bk.x+320-global.left)+i),(((obj_bk.y+320-global.up)-(LENGTH/2))-5),LENGTH,obj_bk.depth-1,COLOR,90);
				with(______bone[ii]){
					alarm[0]=PAUSE+DURATION+room_speed;
					easing_execute(id,"y",0,0,y,LENGTH,10,PAUSE);
					easing_execute(id,"y",0,0,(y+LENGTH),((-LENGTH)*2),15,((10+PAUSE)+DURATION));
				};
			};
			
			with(instance_create_depth(0,0,0,TipBox)){
				duration=PAUSE;
				x1=((obj_bk.x+320-global.left)+1);
				y1=(((obj_bk.y+320-global.up)+LENGTH)-1);
				x2=((obj_bk.x+320+global.right)-2);
				y2=(obj_bk.y+320-global.up);
			}
			return ______bone;
	break;
		case "down":
		case dir_val.down :
			var ii=0;
			for (i=-2;i<((battle_board.left+battle_board.right)+11);i+=11){
				++ii;
				______bone[ii]=CrBoneRun(((battle_board.x-battle_board.left)+i),(((battle_board.y+battle_board.down)+(LENGTH/2))+10),LENGTH,obj_bk.depth-1,COLOR,90);
				with(______bone[ii]){
					alarm[0]=PAUSE+DURATION+room_speed;
					easing_execute(id,"y",0,0,y,(-LENGTH),10,PAUSE);
					easing_execute(id,"y",0,0,(y-LENGTH),(LENGTH*2),15,((10+PAUSE)+DURATION));
				};
			};
		    with(instance_create_depth(0,0,0,TipBox)){
				duration = PAUSE;
			    x1=((battle_board.x-battle_board.left)+1);
			    y1=(((battle_board.y+battle_board.down)-LENGTH)+1);
			    x2=((battle_board.x+battle_board.right)-2);
			    y2=((battle_board.y+battle_board.down)-2);	
			};
		    return ______bone;
	break;
		case "left":
		case dir_val.left :
			var ii=0;
			for(i=0;i<((battle_board.up+battle_board.down)+11);i+=11){
				++ii;
				______bone[ii]=CrBoneRun((((battle_board.x-battle_board.left)-(LENGTH/2))-5),((battle_board.y-battle_board.up)+i),LENGTH,obj_bk.depth+1,COLOR,0);
				with(______bone[ii]){
				alarm[0]=PAUSE+DURATION+room_speed;
				easing_execute(id,"x",0,0,x,LENGTH,10,PAUSE);
				easing_execute(id,"x",0,0,(x+LENGTH),((-LENGTH)*2),15,((10+PAUSE)+DURATION));
				};
			};
			with(instance_create_depth(0,0,0,TipBox)){
				duration=PAUSE;
				x1=((battle_board.x-battle_board.left)+1);
				y1=((battle_board.y-battle_board.up)+1);
				x2=(((battle_board.x-battle_board.left)+LENGTH)-2);
				y2=((battle_board.y+battle_board.down)-2);
			};
			return ______bone;
			
	break;
		case "right":
		case dir_val.right :
			var ii=0;
			for(i=0;i<((battle_board.up+battle_board.down)+11);i+=11){
				++ii;
				______bone[ii]=CrBoneRun((((battle_board.x+battle_board.right)+(LENGTH/2))+10),((battle_board.y-battle_board.up)+i),LENGTH,obj_bk.depth+1,COLOR,0);
				with(______bone[ii]){
					alarm[0]=PAUSE+DURATION+room_speed;
					easing_execute(id,"x",0,0,x,(-LENGTH),10,PAUSE);
					easing_execute(id,"x",0,0,(x-LENGTH),(LENGTH*2),15,((10+PAUSE)+DURATION));
				};
			};
			with(instance_create_depth(0,0,0,TipBox)){
				duration=PAUSE;
				x1=((battle_board.x+battle_board.right)-1);
				y1=((battle_board.y-battle_board.up)+1);
				x2=((battle_board.x+battle_board.right)-LENGTH);
				y2=((battle_board.y+battle_board.down)-2);
			};

			return ______bone;
			
	break;
	};
};
function CreateBone(X,Y,LENGTH,HSPEED=0,VSPEED=0,COLOR=bones.white,OUT=false,ROT=0,DESTROY=true,ANGLE=bones.vertical,DURATION=-1){
///@desc x,y,len,[hspd],[vpsd],[col],[out],[rot],[destroy],[angle],[duration]
	with(instance_create_depth(X,Y,0,runBone)){
	    length=LENGTH;
	    hspeed=HSPEED;
	    vspeed=VSPEED;
	    color=COLOR;
	    out=OUT;
	    rotate=ROT;
	    auto_destroy=DESTROY;
	    angle=ANGLE;
	    duration=DURATION
		return id;
	};
};
function CreateBoneIx(Y,LENGTH,VSPEED=0,COLOR=bones.white,OUT=false,ROT=0,DESTROY=true,DURATION=-1){
///@desc y,len,[vspd],[col],[out],[rot],[destroy],[duration]
	return CreateBone((((battle_board.x-battle_board.left)+(LENGTH/2))+3),Y,LENGTH,0,VSPEED,COLOR,OUT,ROT,DESTROY,0,DURATION);
};
function CreateBoneIw(Y,LENGTH,VSPEED=0,COLOR=bones.white,OUT=false,ROT=0,DESTROY=true,DURATION=-1){
///@desc y,len,[vspd],[col],[out],[rot],[destroy],[duration]
    return CreateBone((((battle_board.x+battle_board.right)-(LENGTH/2))-3),Y,LENGTH,0,VSPEED,COLOR,OUT,ROT,DESTROY,0,DURATION);
};
function CreateBoneIy(X,LENGTH,HSPEED=0,COLOR=bones.white,OUT=false,ROT=0,DESTROY=true,DURATION=-1){
///@desc x,len,[hspd],[col],[out],[rot],[destroy],[duration]
	return CreateBone(X,(((battle_board.y-battle_board.up)+(LENGTH/2))+4),LENGTH,HSPEED,0,COLOR,OUT,ROT,DESTROY,bones.vertical,DURATION);
};
function CreateBoneIh(X,LENGTH,HSPEED=0,COLOR=bones.white,OUT=false,ROT=0,DESTROY=true,DURATION=-1){
///@desc x,len,[hspd],[col],[out],[rot],[destroy],[duration]
    return CreateBone(X,(((battle_board.y+battle_board.down)-(LENGTH/2))-3),LENGTH,HSPEED,0,COLOR,OUT,ROT,DESTROY,bones.vertical,DURATION);
};
function CreateBoneTransverse(X,Y,VSPEED,GAP,DESTROY=true,DURATION=-1,COLOR=bones.white){
///@desc x,y,vspd,gap,[destroy],[duration],[col]
    var ____bone0=CreateBoneIx(Y,(((X-battle_board.x)+battle_board.left)-GAP),VSPEED,COLOR,0,0,DESTROY,DURATION);
    var ____bone1=CreateBoneIw(Y,(((battle_board.x+battle_board.right)-GAP)-X),VSPEED,COLOR,0,0,DESTROY,DURATION);
	var ____arr; ____arr[0]=____bone0; ____arr[1]=____bone1; delete ____bone0; delete ____bone1; // 问就是恼
    return ____arr;
};
function CreateBoneVertical(X,Y,HSPEED,GAP,DESTROY=true,DURATION=-1,COLOR=bones.white){
///@desc x,y,hspd,gap,[destroy],[duration],[col]
    var ____bone0=CreateBoneIy(X,(((Y-battle_board.y)+battle_board.up)-GAP),HSPEED,COLOR,0,0,DESTROY,DURATION);
    var ____bone1=CreateBoneIh(X,(((battle_board.y+battle_board.down)-GAP)-Y),HSPEED,COLOR,0,0,DESTROY,DURATION);
	var ____arr; ____arr[0]=____bone0;____arr[1]=____bone1; delete ____bone0; delete ____bone1; // 问就是恼
    return ____arr;
};
function CreateBoneVerticalBoard(X, Y, HSPEED, GAP, DESTROY = true, DURATION = -1, COLOR = bones.white){
///@desc x,y,hspd,gap,[destroy],[duration],[col]
	var arr, offset = 5;
	arr[0] = CreateBoneIy(X, (((Y - battle_board.y) + battle_board.up) - GAP), HSPEED, COLOR, 0, 0, DESTROY, DURATION);
	arr[1] = CreateBoneIh(X, ((((battle_board.y + battle_board.down) - GAP) - Y) + offset), HSPEED, COLOR, 0, 0, DESTROY, DURATION);
	return arr;
}

#endregion
