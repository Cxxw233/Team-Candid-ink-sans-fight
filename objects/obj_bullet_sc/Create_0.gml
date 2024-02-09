xx = 0
yy = 0
time = 0
xt = 0
out = 0
dir = 0
t = 0
a = 0

line = false;
value = [];

value[0, 0] = obj_soul.x;
value[1, 0] = obj_soul.x;

value[0, 1] = -1;
value[1, 1] = 500;

if (line) {
	alarm[0] = t;
	easing_execute(id, "t", 0, 0, 0, +1, 30);
}