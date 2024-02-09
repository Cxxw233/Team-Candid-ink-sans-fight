if (global.phase < 3 && _enemy = 0)
{
if (global.MISS=1)
{
if (a<0)
{
a+=0.5
if (miss=1)
{
enemy.x-=a
}
else
{
enemy.x+=a
}
}
if (a=0)
{
if (alam>0)
{
alam-=1
}
}
}
if (alam=0)
{
if (a<9.5)
{
a+=0.5
if (miss=1)
{
enemy.x-=a
}
else
{
enemy.x+=a
}
}
}
if (a=20)
{
instance_destroy()
}
}

