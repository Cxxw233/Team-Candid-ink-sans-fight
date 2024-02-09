if (b < 10) {
    global.ix += 18
    global.iw -= 18
    b += 1
}
if (xt = 1) {
    a += 1
    if (a = 1) {
        with(instance_create_depth(320, global.iy - 6, -2, enemy_ae)) {
            shenxt = 2
        }
        obj_soul.xt = 1
        so_set_angle("left")
        var flash = instance_create_depth(0, 0, -99999, obj_flash)
        flash.color = c_black
        flash.alarm[0] = 3
        var num = floor(60)
        var i = 0
        repeat(num) {
            cr_bone(38 + 16 * i, global.iy, obj_bk.depth + 1, 3, 90, c_white)
            cr_bone(38 + 16 * i, global.ih, obj_bk.depth + 1, 3, 270, c_white)
            i += 1
        }
		//CrBoneHeap("up",0,40,600);CrBoneHeap("",0,40,600);
    }
    if (a < 10) {
        enemy.x -= (a - 10) * 4
    }
    if (a = 15) {
        number = instance_number(obj_bone)
        with(enemy_ae) {
            shenxt = 0
        }
    }
    if (a > 20 && a mod 30 = 0 && a < 120) {
        cr_bone(global.ix - 62, global.iy + (global.ih - global.iy) / 2, obj_bk.depth + 1, 12, 90, c_orange, 9)
        instance_create_depth(obj_soul.x, (global.ih - global.iy) / 2, -10, but_knife)
        alarm[0] = 1
    }
    if (a > 20 && a mod 50 = 0 && a < 120) {
        var ii = irandom_range(-20, 25)
        var iii = 0
        repeat(12) {
            iii += 1
            cr_bone(global.iw - 12 + iii * 15, global.iy + ii, obj_bk.depth + 1, 12, -45, c_white, -8)
            cr_bone(global.iw - 12 + iii * 15, global.iy + ii + 114, obj_bk.depth + 1, 12, 45, c_white, -8)
        }
    }
    if (a = 120) {
        with(enemy_ae) {
            shenxt = 0
        }
        obj_soul.xt = 0
        obj_soul.hspeed = 0
        obj_soul.jump = 2
        obj_soul.angle = "down"
        obj_soul.image_angle = 0
    }
    if (a = 130) {
        scgb(320, -100, 320, 200, 2, 2, 0, 0, 1, -9, 70, 0, c_white, spr_ink_gb)
    }
    if (a > 130 && a < 200 && a mod 5 = 0) {
        cr_bone(irandom_range(global.ix, global.iw), global.iy - 30, obj_bk.depth + 1, 1, 90, c_white, 0, random_range(5, 8))
    }
    if (a > 130 && a < 200 && a mod 20 = 0) {
        var xxx = choose(30, 610)
        scgb(320, -20, xxx, obj_soul.y, 1, 2, 0, point_direction(xxx, obj_soul.y, obj_soul.x, obj_soul.y) + 90, 1, -9, 0, 0, c_white, spr_ink_gb)
    }
    if (a > 200 && a < 270 && a mod 25 = 0) {
        alarm[0] = 1
        with(instance_create_depth(30, obj_soul.y, -10, but_knife)) {
            image_angle = 90
        }
    }
    if (a > 200 && a < 270 && a mod 10 = 0) {
        cr_bone(global.ix - 14, global.iy + (global.ih - global.iy) / 2, obj_bk.depth, 12, 90, choose(global.blue, c_orange), 9)
    }
    if (a = 280) {
        with(instance_create_depth(320, 320, -12, but_knife)) {
            image_angle = 90
        }
        alarm[0] = 1
        instance_create_depth(300, 100, -12, but_knife)
        instance_create_depth(340, 100, -12, but_knife)
        instance_create_depth(280, 100, -12, but_knife)
        instance_create_depth(360, 100, -12, but_knife)
        instance_create_depth(260, 100, -12, but_knife)
        instance_create_depth(380, 100, -12, but_knife)
    }
    if (a = 300) {
        with(instance_create_depth(320, global.iy + 10, -12, but_knife)) {
            image_angle = 90
        }
        with(instance_create_depth(320, global.ih - 10, -12, but_knife)) {
            image_angle = 90
        }
        alarm[0] = 1
        instance_create_depth(320, 100, -12, but_knife)
        instance_create_depth(330, 100, -12, but_knife)
        instance_create_depth(340, 100, -12, but_knife)
        //instance_create_depth(400,100,-12,but_knife)
        instance_create_depth(200, 100, -12, but_knife)
        instance_create_depth(global.ih, 100, -12, but_knife)
    }
    if (a = 310) {
        cr_board(320 - 220, global.iy, 320 + 220, global.ih, 13)
    }
    if (a > 330 && a mod 40 = 0 && a < 600) {
        with(instance_create_depth(320, global.ih + 13, obj_bk.depth, battle_move_wall)) {
            vspeed = -4.6
            easing_execute(id, "vspeed", 0, 0, -4.6, 4.6, 17)
            easing_execute(id, "hspeed", 0, 0, 0, -4, 2, 18)
            len = 30
            flo = 0
        }
        with(instance_create_depth(320, global.ih + 13, obj_bk.depth, battle_move_wall)) {
            vspeed = -4.6
            easing_execute(id, "vspeed", 0, 0, -4.6, 4.6, 17)
            easing_execute(id, "hspeed", 0, 0, 0, 4, 2, 18)
            len = 30
            flo = 0
        }

    }
    if (a = 358) {
        with(obj_soul) {
            xt = 1
        }
    }

    if (a > 358 && a mod 15 = 0 && a < 550) {
        var (_INST) = instance_find(obj_bone, irandom_range(1, number - 2))
        with(cr_bone(_INST.x, _INST.y, obj_bk.depth, _INST.image_xscale, 90, c_white, 0, (_INST.y > 320 ? 4 : -4))) {
            gravity_direction = (y > 320 ? 90 : -90)
            gravity = 0.4
        }
    }

    if (a > 358 && a < 600 && a mod 25 = 0) {
        //cr_bone(global.ix-62,global.iy+(global.ih-global.iy)/2,obj_bk.depth+1,12,90,c_orange,9)
        instance_create_depth(random_range(global.ix, global.iw), global.iy - 100, -10, but_knife)
        alarm[0] = 1
    }
    if (a > 360 && a < 610 && a mod 50 = 0) {
        var (xx) = obj_soul.x //random_range(global.ix+10,global.iw-10)
        scgb(xx, -100, xx, global.iy - 90, 1, 2, 0, point_direction(xx, global.iy - 90, xx, global.iy + 20) + 90, 3, -9, 0, -5, c_white, spr_ink_gb)
    }


    if (a = 590) {
        easing_execute(battle_move_wall, "y", 0, 0, battle_move_wall.y, (battle_move_wall.y > 320 ? 100 : -100), 13)
        easing_execute(obj_bone, "y", 0, 0, obj_bone.y, (obj_bone.y > 320 ? 100 : -100), 13)
        cr_board_color(c_white, 10)
        with(enemy_ae) {
            xt = 2
        }
    }
    if (a > 590 && a < 600) {
        enemy.x += (a - 600) * 4
    }
    if (a = 605) {
        with(obj_bone) {
            instance_destroy()
        }
        with(battle_move_wall) {
            instance_destroy()
        }
        with(enemy_ae) {
            instance_destroy()
        }
        tred(_lang_text[$ "menu_text"][$ "broken"], turn3)
    }

}
/*if(a=310)
{
with(enemy_ae)
{
xt=2
}
}
if(a>325 && a<335)
{
col+=255/10
if(instance_exists(obj_bk))
{
obj_bk.colour=make_color_rgb(255,col,col)
}
enemy.x+=(a-335)*4
}
if(a=335)
{
if(instance_exists(obj_bk))
{
cr_board_color(c_white,10)
}
with(obj_bone)
{
instance_destroy()
}
with(battle_move_wall)
{
instance_destroy()
}
with(enemy_ae)
{
instance_destroy()
}
tred(get_text("turn2 end"),turn3)
}
}