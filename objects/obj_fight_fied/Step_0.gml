if (global.color=0)
{
if (x>640-32+5)
{
if (xt=0)
{
xt=1
alarm[0]=30
image_speed=0.5
speed=0
}
}
if (x<32)
{
if (xt=0)
{
xt=1
alarm[0]=30
image_speed=0.5
speed=0
}
}
}
if (global.color=1)
{
if (x>640-38-5)
{
x=38+6
}
if (x<38+5)
{
x=640-38-6
}
if (x <= 106)
{
    nb=1
}
else if (x > 106 && x <= 179)
{
   nb=2
}
else if (x > 179 && x <= 246)
{
   nb=3
}
else if (x > 246 && x <= 321)
{
   nb=4
}
else if (x > 321 && x <= 398)
{
   nb=5
}
else if (x > 398 && x <= 465)
{
   nb=6
}
else if (x > 465 && x <= 533)
{
   nb=7
}
else if (x > 533)
{
   nb=8
}
}
