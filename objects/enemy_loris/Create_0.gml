a=0
b=0
c=-15
xt=0
xx=0
yy=0
xx1=0
yy1=0
alam=1
alpha=1
shenxt=0
shenxt1=0
penxt=0
touxt=0
gt=0
gx=0
xxx=random_range(52,-52)
yyy=random_range(13,180)
xxx1=random_range(52,-52)
yyy1=random_range(13,180)
spr_body=sprLorisBody
index=sprLorisLegs
keepY=0;
depth=6;
lock=true;
switch (global.phase){
	case 55:
		touxt=10;
		alam=0.5;
		shenxt=0;
break;
	case 2: 
		touxt=1
		alam=0.5
		shenxt=0
		spr_body=sprLorisBody
break;
	case 22:
		touxt=14;
break;
	case 13:
		touxt=20;
break;
}

