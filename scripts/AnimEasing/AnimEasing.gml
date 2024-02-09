function Anim_Init() {
	//GMU_Anim v3.0.0

	global._gmu_anim_list=ds_list_create();
	global._gmu_anim_data=ds_map_create();
	global._gmu_anim_id=-10;

	enum ANIM_DATA{
		TARGET,
		VAR_NAME,
		TWEEN,
		EASE,
		START,
		CHANGE,
		DURATION,
		DELAY,
		ARG_0,
		ARG_1,
		TIME
	};
	enum easing_class {
		linear = 0,
		sine = 1,
		quad = 2,
		cubic = 3,
		quart = 4,
		quint = 5,
		expo = 6,
		circ = 7,
		back = 8,
		elastic = 9,
		bounce = 10,
		in = 0,
		out = 1,
		in_out = 2	
	}
}

///@arg tween
///@arg ease
///@arg time
///@arg arg_0*
///@arg arg_1*
function Anim_GetValue() {
	var TWEEN=argument[0];
	var EASE=argument[1];
	var TIME=argument[2];
	var ARG_0=0;
	var ARG_1=0;
	if(argument_count>=4){
		ARG_0=argument[3];
	}
	if(argument_count>=5){
		ARG_1=argument[4];
	}

	var r=0;
	var t=TIME;
	var b=0;
	var c=1;
	var d=1;

	switch(TWEEN){
		case easing_class.linear:
			r=(t/d)*c+b;
			break;
		
		case easing_class.sine:
			switch(EASE){
				case easing_class.in:
					r=-c*cos(t/d*(pi/2))+c+b;
					break;
				case easing_class.out:
					r=c*sin(t/d*(pi/2))+b;
					break;
				case easing_class.in_out:
					r=-c/2*(cos(pi*t/d)-1)+b;
					break;
			}
			break;
		
		case easing_class.quad:
			switch(EASE){
				case easing_class.in:
					t/=d;
					r=c*t*t+b;
					break;
				case easing_class.out:
					t/=d;
					r=-c*t*(t-2)+b;
					break;
				case easing_class.in_out:
					t/=d/2;
					if(t<1){
						r=c/2*t*t+b;
					}else{
						r=-c/2*((--t)*(t-2)-1)+b;
					}
					break;
			}
			break;
		
		case easing_class.cubic:
			switch(EASE){
				case easing_class.in:
					t/=d;
					r=c*t*t*t+b;
					break;
				case easing_class.out:
					t=t/d-1
					r=c*(t*t*t+1)+b;
					break;
				case easing_class.in_out:
					t/=d/2
					if(t<1){
						r=c/2*t*t*t+b;
					}else{
						t-=2;
						r=c/2*(t*t*t+2)+b;
					}
					break;
			}
			break;
		
		case easing_class.quart:
			switch(EASE){
				case easing_class.in:
					t/=d;
					r=c*t*t*t*t+b;
					break;
				case easing_class.out:
					t=t/d-1;
					r=-c*(t*t*t*t-1)+b;
					break;
				case easing_class.in_out:
					t/=d/2
					if(t<1){
						r=c/2*t*t*t*t+b;
					}else{
						t-=2;
						r=-c/2*(t*t*t*t-2)+b;
					}
					break;
			}
			break;
		
		case easing_class.quint:
			switch(EASE){
				case easing_class.in:
					t/=d;
					r=c*t*t*t*t*t + b;
					break;
				case easing_class.out:
					t=t/d-1;
					r=c*(t*t*t*t*t+1)+b;
					break;
				case easing_class.in_out:
					t/=d/2
					if(t<1){
						r=c/2*t*t*t*t*t+b;
					}else{
						t-=2;
						r=c/2*(t*t*t*t*t+2)+b;
					}
					break;
			}
			break;
		
		case easing_class.expo:
			switch(EASE){
				case easing_class.in:
					if(t==0){
						r=b;
					}else{
						r=c*power(2,10*(t/d-1))+b;
					}
					break;
				case easing_class.out:
					if(t==d){
						r=b+c;
					}else{
						r=c * (-power(2,-10*t/d)+1)+b;
					}
					break;
				case easing_class.in_out:
					if (t==0){
						r=b;
					}
					if(t==d){
						r=b+c;
					}
					t/=d/2;
					if (t<1){
						r=c/2*power(2,10*(t-1))+b;
					}else{
						r=c/2*(-power(2,-10*--t)+2)+b;
					}
					break;
			}
			break;
		
		case easing_class.circ:
			switch(EASE){
				case easing_class.in:
					t/=d;
					r=-c*(sqrt(1-t*t)-1)+b;
					break;
				case easing_class.out:
					t=t/d-1;
					r=c*sqrt(1-t*t)+b;
					break;
				case easing_class.in_out:
					t/=d/2;
					if(t<1){
						r=-c/2*(sqrt(1-t*t)-1)+b;
					}else{
						t-=2;
						r=c/2*(sqrt(1-t*t)+1)+b;
					}
					break;
			}
			break;
		
		case easing_class.back:
			if(ARG_0>0){
				var s=ARG_0;
			}else{
				var s=1.70158;
			}
			switch(EASE){
				case easing_class.in:
					t/=d;
					r=c*t*t*((s+1)*t-s)+b;
					break;
				case easing_class.out:
					t=t/d-1;
					r=c*(t*t*((s+1)*t+s)+1)+b;
					break;
				case easing_class.in_out:
					t/=d/2;
					s*=1.525;
					if(t<1){
						r=c/2*(t*t*((s+1)*t-s))+b;
					}else{
						t-=2;
						r=c/2*(t*t*((s+1)*t+s)+2)+b;
					}
					break;
			}
			break;
		
		case easing_class.elastic:
			var a=ARG_0;
			var p=ARG_1;
			switch(EASE){
				case easing_class.in:
					if(t==0){
						r=b;
						break;
					}
					t/=d;
					if(t==1){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*0.3;
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					t-=1;
					r=-(a*power(2,10*t)* sin((t*d-s)*(2*pi)/p))+b;
					break;
				case easing_class.out:
					if(t==0){
						r=b;
						break;
					}
					t/=d;
					if(t==1){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*0.3;
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					r=a*power(2,-10*t)*sin((t*d-s)*(2*pi)/p)+c+b;
					//show_debug_message("{0} / {1}",a,p);
					break;
				case easing_class.in_out:
					if(t==0){
						r=b;
						break;
					}
					t/=d/2;
					if(t==2){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*(0.3*1.5);
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					t-=1;
					if(t<1){
						r=-0.5*(a*power(2,10*t)*sin((t*d-s)*(2*pi)/p))+b;
					}else{
						r=a*power(2,-10*t)*sin((t*d-s)*(2*pi)/p )*0.5+c+b;
					}
					break;
			}
			break;
		
		case easing_class.bounce:
			switch(EASE){
				case easing_class.in:
					t=d-t;
					t/=d;
					if (t<1/2.75){
						r=c*(7.5625*t*t);
					}else if(t<2/2.75){
						t-=1.5/2.75;
						r=c*(7.5625*t*t+0.75);
					}else if(t<2.5/2.75) {
						t-=2.25/2.75;
						r=c*(7.5625*t*t+0.9375);
					}else{
						t-=2.625/2.75;
						r=c*(7.5625*t*t +0.984375);
					}
					r=c-r+b;
					break;
				case easing_class.out:
					t/=d;
					if (t<1/2.75){
						r=c*(7.5625*t*t)+b;
					}else if(t<2/2.75){
						t-=1.5/2.75;
						r=c*(7.5625*t*t+0.75)+b;
					}else if(t<2.5/2.75) {
						t-=2.25/2.75;
						r=c*(7.5625*t*t+0.9375)+b;
					}else{
						t-=2.625/2.75;
						r=c*(7.5625*t*t +0.984375)+b;
					}
					break;
				case easing_class.in_out:
					var ease_in;
					if(t<d/2){
						t*=2;
						ease_in=true;
					}else{
						t*=2;
						t-=d;
						ease_in=false;
					}
				
					t/=d;
					if (t<1/2.75){
						r=c*(7.5625*t*t);
					}else if(t<2/2.75){
						t-=1.5/2.75;
						r=c*(7.5625*t*t+0.75);
					}else if(t<2.5/2.75) {
						t-=2.25/2.75;
						r=c*(7.5625*t*t+0.9375);
					}else{
						t-=2.625/2.75;
						r=c*(7.5625*t*t +0.984375);
					}
				
					if(ease_in){
						r=r*0.5+b;
					}else{
						r=r*0.5+c*0.5+b;
					}
					break;
			}
			break;
	}

	return r;


}
/// @desc 使用这个方法，你可以自定义参数随时间变化的速率.
/// @arg {Any}		target		目标
/// @arg {String}	variable	变量名
/// @arg {Real}		tween		缓动
/// @arg {Real}		ease		类型
/// @arg {Real}		start		开始值
/// @arg {Real}		change		变化值
/// @arg {Real}		duration	持续时间
/// @arg {Real}		delay		延迟
/// @arg {Real}		arg_0		参数
/// @arg {Real}		arg_1		参数
function easing_execute(TARGET, VAR_NAME, TWEEN, EASE, START, CHANGE, DURATION, DELAY = 0, ARG_0 = 0, ARG_1 = 0) {
	
	var inst_result=-1;

	if(DURATION>=0){
		if(instance_exists(TARGET)){
			var proc=0;
			var proc_result=0;
			var inst_find=noone;
		
			repeat(instance_number(TARGET)){
				inst_find=instance_find(TARGET,proc);
				if(instance_exists(inst_find)){
					if(variable_instance_exists(inst_find,VAR_NAME)){
						var map=ds_map_create();
						ds_map_add(global._gmu_anim_data,global._gmu_anim_id,map);
						ds_list_add(global._gmu_anim_list,global._gmu_anim_id);
						inst_result[proc_result]=global._gmu_anim_id;
						global._gmu_anim_id-=1;
					
						map[?ANIM_DATA.TARGET]=inst_find;
						map[?ANIM_DATA.VAR_NAME]=VAR_NAME;
						map[?ANIM_DATA.TWEEN]=TWEEN;
						map[?ANIM_DATA.EASE]=EASE;
						map[?ANIM_DATA.START]=START;
						map[?ANIM_DATA.CHANGE]=CHANGE;
						map[?ANIM_DATA.DURATION]=DURATION;
						map[?ANIM_DATA.DELAY]=DELAY;
						map[?ANIM_DATA.ARG_0]=ARG_0;
						map[?ANIM_DATA.ARG_1]=ARG_1;
						map[?ANIM_DATA.TIME]=0;
					
						proc_result+=1;
					}
				}
				proc+=1;
			}
		}else if(TARGET==global){
			if(variable_global_exists(VAR_NAME)){
				var map=ds_map_create();
				ds_map_add(global._gmu_anim_data,global._gmu_anim_id,map);
				ds_list_add(global._gmu_anim_list,global._gmu_anim_id);
				inst_result[0]=global._gmu_anim_id;
				global._gmu_anim_id-=1;
			
				map[?ANIM_DATA.TARGET]=global;
				map[?ANIM_DATA.VAR_NAME]=VAR_NAME;
				map[?ANIM_DATA.TWEEN]=TWEEN;
				map[?ANIM_DATA.EASE]=EASE;
				map[?ANIM_DATA.START]=START;
				map[?ANIM_DATA.CHANGE]=CHANGE;
				map[?ANIM_DATA.DURATION]=DURATION;
				map[?ANIM_DATA.DELAY]=DELAY;
				map[?ANIM_DATA.ARG_0]=ARG_0;
				map[?ANIM_DATA.ARG_1]=ARG_1;
				map[?ANIM_DATA.TIME]=0;
			
				proc_result+=1;
			}
		}
	}
	return inst_result;
}
	
function Anim_Step() {
	var proc=0;
	repeat(ds_list_size(global._gmu_anim_list)){
		var key=global._gmu_anim_list[|proc];
		var map=global._gmu_anim_data[?key];
		if(instance_exists(map[?ANIM_DATA.TARGET]) || map[?ANIM_DATA.TARGET]==global || (is_struct(map[?ANIM_DATA.TARGET])) ){
			if(map[?ANIM_DATA.DELAY]<=0){
				if(map[?ANIM_DATA.TIME] < map[?ANIM_DATA.DURATION]){
					map[?ANIM_DATA.TIME]+=1;
					var value=map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]*Anim_GetValue(map[?ANIM_DATA.TWEEN],map[?ANIM_DATA.EASE],map[?ANIM_DATA.TIME]/map[?ANIM_DATA.DURATION],map[?ANIM_DATA.ARG_0],map[?ANIM_DATA.ARG_1]);
					if(map[?ANIM_DATA.TARGET]!=global){
						variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],value);
					}
					if(map[?ANIM_DATA.TARGET]==global){
						variable_global_set(map[?ANIM_DATA.VAR_NAME],value);
					}
					if (is_struct(map[?ANIM_DATA.TARGET])) {
						variable_struct_set(map[?ANIM_DATA.TARGET], map[?ANIM_DATA.VAR_NAME], value);
					}
				}else{
					var value=map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE];
					if(map[?ANIM_DATA.TARGET]!=global){
						variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],value);
					}
					if(map[?ANIM_DATA.TARGET]==global){
						variable_global_set(map[?ANIM_DATA.VAR_NAME],value);
					}
					if (is_struct(map[?ANIM_DATA.TARGET])) {
						variable_struct_set(map[?ANIM_DATA.TARGET], map[?ANIM_DATA.VAR_NAME], value);
					}
					ds_map_destroy(map);
					ds_map_delete(global._gmu_anim_data,key);
					ds_list_delete(global._gmu_anim_list,proc);
					proc-=1;
				}
			}else{
				map[?ANIM_DATA.DELAY]-=1;
			}
		}else{
			ds_map_destroy(map);
			ds_map_delete(global._gmu_anim_data,key);
			ds_list_delete(global._gmu_anim_list,proc);
			proc-=1;
		}
		proc+=1;
	}

	return true;


}

	
function Anim_Uninit() {
	if (ds_exists(global._gmu_anim_list, ds_type_list)) {
		ds_list_destroy(global._gmu_anim_list);
	}
	if (ds_exists(global._gmu_anim_data, ds_type_map)) {
		var key=ds_map_find_first(global._gmu_anim_data);
		while(!is_undefined(key)){
			ds_map_destroy(global._gmu_anim_data[?key]);
			ds_map_delete(global._gmu_anim_data,key);
			key=ds_map_find_first(global._gmu_anim_data);
		}
		ds_map_destroy(global._gmu_anim_data);
	}
	return true;


}

///@arg target
///@arg var_name*
///@arg skip*
function Anim_Destroy() {
	var TARGET=argument[0];
	var VAR_NAME="";
	var SKIP=false;
	if(argument_count>=2){
		VAR_NAME=argument[1];
	}
	if(argument_count>=3){
		SKIP=argument[2];
	}

	var result=false;

	if(TARGET<=-10){
		if(ds_map_exists(global._gmu_anim_data,TARGET)){
			var map=global._gmu_anim_data[?TARGET];
			if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
				result=true;
				if(SKIP){
					if(instance_exists(map[?ANIM_DATA.TARGET])){
						if(variable_instance_exists(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME])){
							variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]);
						}
					}
				}
				ds_map_destroy(map);
				ds_map_delete(global._gmu_anim_data,TARGET);
			}
		}
	}else if(instance_exists(TARGET)){
		var proc=0;
		repeat(ds_list_size(global._gmu_anim_list)){
			var key=global._gmu_anim_list[|proc];
			var map=global._gmu_anim_data[?key];
			if(instance_exists(map[?ANIM_DATA.TARGET])){
				if(map[?ANIM_DATA.TARGET]==TARGET||(map[?ANIM_DATA.TARGET]).object_index=TARGET){
					if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
						result=true;
						if(SKIP){
							if(instance_exists(map[?ANIM_DATA.TARGET])){
								if(variable_instance_exists(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME])){
									variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]);
								}
							}
						}
						ds_map_destroy(map);
						ds_map_delete(global._gmu_anim_data,key);
						ds_list_delete(global._gmu_anim_list,proc);
						proc-=1;
					}
				}
			}
			proc+=1;
		}
	}else if(TARGET==global){
		var proc=0;
		repeat(ds_list_size(global._gmu_anim_list)){
			var key=global._gmu_anim_list[|proc];
			var map=global._gmu_anim_data[?key];
			if(map[?ANIM_DATA.TARGET]==global){
				if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
					result=true;
					if(SKIP){
						if(instance_exists(map[?ANIM_DATA.TARGET])){
							if(variable_global_exists(map[?ANIM_DATA.VAR_NAME])){
								variable_global_set(map[?ANIM_DATA.VAR_NAME],map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]);
							}
						}
					}
					ds_map_destroy(map);
					ds_map_delete(global._gmu_anim_data,key);
					ds_list_delete(global._gmu_anim_list,proc);
					proc-=1;
				}
			}
			proc+=1;
		}
	}
	return result;
}

///@arg target
///@arg var_name*
function Anim_IsExists() {
	var TARGET=argument[0];
	var VAR_NAME="";
	if(argument_count>=2){
		VAR_NAME=argument[1];
	}

	var result=false;

	if(TARGET<=-10){
		if(ds_map_exists(global._gmu_anim_data,TARGET)){
			var map=global._gmu_anim_data[?TARGET];
			if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
				result=true;
			}
		}
	}else if(instance_exists(TARGET)){
		var proc=0;
		repeat(ds_list_size(global._gmu_anim_list)){
			var key=global._gmu_anim_list[|proc];
			var map=global._gmu_anim_data[?key];
			if(instance_exists(map[?ANIM_DATA.TARGET])){
				if(map[?ANIM_DATA.TARGET]==TARGET||(map[?ANIM_DATA.TARGET]).object_index=TARGET){
					if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
						result=true;
						break;
					}
				}
			}
			proc+=1;
		}
	}else if(TARGET==global){
		var proc=0;
		repeat(ds_list_size(global._gmu_anim_list)){
			var key=global._gmu_anim_list[|proc];
			var map=global._gmu_anim_data[?key];
			if(map[?ANIM_DATA.TARGET]==global){
				if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
					result=true;
					break;
				}
			}
			proc+=1;
		}
	}

	return result;

}
