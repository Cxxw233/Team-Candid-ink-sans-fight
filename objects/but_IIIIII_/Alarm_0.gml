if sid = 7{
  but_IIIIII_.back = true;
  alarm[1] = 15;
}else{
  out = true;
  sprite_index=spr_IIIIII_I
  //sprite_index = bssp165a4;
  image_angle -= 45;
  image_angle += irandom_range(-20,20);
  if image_angle > 360{
    image_angle -= 360;
  }
  if image_angle < 0{
    image_angle += 360;
  }
  if image_angle < 90 && image_angle > 0{
    tgit = instance_create_depth(x-cos(degtorad(image_angle))*70,y+sin(degtorad(image_angle))*70,depth,but_IIIIII_);
  }else if image_angle < 180 && image_angle > 90{
    tgit = instance_create_depth(x+sin(degtorad(image_angle-90))*70,y+cos(degtorad(image_angle-90))*70,depth,but_IIIIII_);
  }else if image_angle < 270 && image_angle > 180{
    tgit = instance_create_depth(x+cos(degtorad(image_angle-180))*70,y-sin(degtorad(image_angle-180))*70,depth,but_IIIIII_);
  }else if image_angle < 360 && image_angle > 270{
    tgit = instance_create_depth(x-sin(degtorad(image_angle-270))*70,y-cos(degtorad(image_angle-270))*70,depth,but_IIIIII_);
  }else if image_angle = 0 || image_angle = 360{
    tgit = instance_create_depth(x+70,y,depth,but_IIIIII_);
  }else if image_angle = 90{
    tgit = instance_create_depth(x,y+70,depth,but_IIIIII_);
  }else if image_angle = 180{
    tgit = instance_create_depth(x-70,y,depth,but_IIIIII_);
  }else if image_angle = 270{
    tgit = instance_create_depth(x,y+70,depth,but_IIIIII_);
  }
  tgit.sid = sid+1;
}