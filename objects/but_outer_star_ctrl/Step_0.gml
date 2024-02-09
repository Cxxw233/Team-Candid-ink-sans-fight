if (is_array(JIQIREN)) {
	JIQIREN[0].x=insx+lengthdir_x(64+xx,ang1)
	JIQIREN[0].y=insy+lengthdir_y(64+xx,ang1)
	JIQIREN[2].x=insx+lengthdir_x(64+xx,2*60+ang1)
	JIQIREN[2].y=insy+lengthdir_y(64+xx,2*60+ang1)
	JIQIREN[4].x=insx+lengthdir_x(64+xx,4*60+ang1)
	JIQIREN[4].y=insy+lengthdir_y(64+xx,4*60+ang1)

	JIQIREN[1].x=insx+lengthdir_x(64+xx,60+ang2)
	JIQIREN[1].y=insy+lengthdir_y(64+xx,60+ang2)
	JIQIREN[3].x=insx+lengthdir_x(64+xx,3*60+ang2)
	JIQIREN[3].y=insy+lengthdir_y(64+xx,3*60+ang2)
	JIQIREN[5].x=insx+lengthdir_x(64+xx,5*60+ang2)
	JIQIREN[5].y=insy+lengthdir_y(64+xx,5*60+ang2)
}
xx+=0.5

ang1+=vspeed
ang2+=-vspeed