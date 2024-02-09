if (b < 10) {
	b += 1
	global.ix += 22
	global.iw -= 22
}
if (xt = 1) {
	a += 1
	if (a = 1) {
		instance_create_depth(320, global.iy - 6, -1, enemy_outer)
	}
	if (a <= 10) {
		enemy.alpha -= 0.1
	}
	if (a > 20 && a < 36) {
		__view_set(e__vw.yview, 0, __view_get(e__vw.yview, 0) - (a - 36) * 2)
	}
	if (a = 36) {
		instance_create_depth(0, 0, -999, obj_flash)
	}
	if (a = 38) {
		global.ix = 0
		global.iy = -490
		global.iw = 640
		instance_create_depth(320, -240, obj_bk.depth - 1, but_outer_bk)
		with(obj_soul) {
			y -= 560
		}
		with(obj_system) {
			hp_Y -= 480
		}
		__view_set(e__vw.yview, 0, -480)
	}
	if (a > 40 && a < 260 && (a mod 30) = 0) {
		instance_create_depth(irandom_range(200, 440), -540, -3, but_outer_star)
	}
	if (a > 40 && a < 260 && (a mod 60) = 0) {
		var xx = irandom_range(0, 640)
		var xxx = irandom_range(100, 540)
		scgb(xx, 50, xxx, -40, 1, 2, 0, point_direction(xxx, -40, obj_soul.x, obj_soul.y) + 90, 6, -9, 0, 0, c_white, spr_outer_gb)
	}
	if (a > 280 && a < 440 && a mod 10 = 0) {
		var (star) = instance_create_depth(choose(irandom_range(10, 200), irandom_range(420, 630)), -540, -10, but_outer_star)
		star.xt = 3
		star.d = choose(1, 2)
	}
	if (a = 400) {
		instance_create_depth(__view_get(e__vw.xview, 0) + 320, __view_get(e__vw.yview, 0) + 240, 0, but_outer_star_ctrl)
	}
	if (a = 560) {
		with(but_outer_star_ctrl) {
			instance_destroy()
		}
	}
	if (a > 550 && a < 660 && a mod 20 = 0) {
		var (star) = instance_create_depth(choose(irandom_range(10, 200), irandom_range(420, 630)), -540, -10, but_outer_star)
		star.xt = 9
		star.d = choose(1, 2)
	}
	if (a = 700) {
		instance_destroy(enemy_outer)
		enemy.alpha = 1
		global.ih = 1000
		with(obj_soul) {
			y += 480 * 2
		}
		with(but_outer_star) {
			y += 480 * 2
		}
		with(but_outer_bk) {
			y += 480 * 2
		}
		with(obj_system) {
			hp_Y += 480 * 2
		}
		with(obj_system) {
			__view_set(e__vw.yview, 0, 480)
		}
	}
	if (a > 700 && a < 741) {
		with(obj_soul) {
			y -= 480 / 20
		}
		with(but_outer_bk) {
			y -= 480 / 20
		}
		with(obj_system) {
			hp_Y -= 480 / 40
		}
		c = __view_get(e__vw.yview, 0)
		__view_set(e__vw.yview, 0, c - (480 / 40))
	}
	if (a = 741) {
		__view_set(e__vw.yview, 0, 0)
		with(obj_system) {
			hp_Y = 0
		}
		global.ix = 320 - 60
		global.iw = 320 + 60
		global.iy = 496
		global.ih = 625
		obj_soul.y = 320 + 240
		instance_destroy(but_outer_bk)
	}
	if (a > 750 && a <= 770) {
		global.iy -= (240 / 20)
		global.ih -= (240 / 20)
		with(obj_soul) {
			y += (240 / 20)
		}
	}
	if (a = 780) {
		tred(_lang_text[$ "menu_text"][$ "outer"], turn5);
	}
}

/*
if(b<10)
{
b+=1
global.ix+=22
global.iw-=22
}
if(xt=1)
{
a+=1
if(a=1)
{
instance_create_depth(320,global.iy-6,-1,enemy_outer)	
}
if(a<=10)
{
enemy.alpha-=0.1
}
if(a>20 && a<36)
{
__view_set(e__vw.yview,0,__view_get(e__vw.yview,0)-(a-36)*2)
}
if(a=36)
{
instance_create_depth(0,0,-999,obj_flash)
}
if(a=38)
{
global.ix=0
global.iy=-490
global.iw=640
instance_create_depth(320,-240,obj_bk.depth-1,but_outer_bk)
with(obj_soul)
{
y-=560
}
with(obj_system)
{
hp_Y-=480
}
__view_set(e__vw.yview,0,-480)
}
if(a>40 && a  <260 && (a mod 30) =0)
{
instance_create_depth(irandom_range(200,440),-540,-3,but_outer_star)
}
if(a>40 && a  <260 && (a mod 60) =0)
{
var xx =irandom_range(0,640)
var xxx =irandom_range(100,540)
scgb(xx,50,xxx,-40,1,2,0,point_direction(xxx,-40,obj_soul.x,obj_soul.y)+90,6,-9,0,0,c_white,spr_ink_gb)
}
if(a>280 && a<440 && a mod 10 = 0)
{
var(star)=instance_create_depth(choose(irandom_range(10,200),irandom_range(420,630)),-540,-10,but_outer_star)
star.xt=3
star.d=choose(1,2)
}
if(a>450 && a<540 && a mod 15=0)
{
var xx =choose(100,540)
var yyy =irandom_range(-190,-50)
scgb(xx,50,xx,yyy,2,2,0,point_direction(xx,yyy,obj_soul.x,obj_soul.y)+90,6,-9,0,0,c_white,newSprOuterGB)
}
if(a>550 && a<660 && a mod 20 = 0)
{
var(star)=instance_create_depth(choose(irandom_range(10,200),irandom_range(420,630)),-540,-10,but_outer_star)
star.xt=9
star.d=choose(1,2)
}
if(a=700)
{
instance_destroy(enemy_outer)
enemy.alpha=1
global.ih=1000
with(obj_soul)
{
y+=480*2
}
with(but_outer_star)
{
y+=480*2
}
with(but_outer_bk)
{
y+=480*2
}
with(obj_system)
{
hp_Y+=480*2
}
with(obj_system)
{
__view_set(e__vw.yview,0,480)
}
}
if(a>700 && a<741)
{
with(obj_soul)
{
y-=480/20
}
with(but_outer_bk)
{
y-=480/20
}
with(obj_system)
{
hp_Y-=480/40
}
c=__view_get(e__vw.yview,0)
__view_set(e__vw.yview,0,c-(480/40))
}
if(a=741)
{
__view_set(e__vw.yview,0,0)
with(obj_system)
{
hp_Y=0
}
global.ix=320-60
global.iw=320+60
global.iy=496
global.ih=625
obj_soul.y=320+240
instance_destroy(but_outer_bk)
}
if(a>750 && a<=770)
{
global.iy-=(240/20)
global.ih-=(240/20)
with(obj_soul)
{
y+=(240/20)
}
}
if(a=780)
{
tred("<l5>* What we do.",turn5)
}
}