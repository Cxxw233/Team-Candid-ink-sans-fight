for (i = 0; i < 3; i += 1) {
	__view_set(e__vw.xview, 1 + i * 2, irandom_range(0, 15) * 40);
	__view_set(e__vw.yview, 1 + i * 2, irandom_range(0, 11) * 40);
	__view_set(e__vw.wview, 1 + i * 2, 40);
	__view_set(e__vw.hview, 1 + i * 2, 40);
	__view_set(e__vw.xport, 1 + i * 2, irandom_range(0, 15) * 40);
	__view_set(e__vw.yport, 1 + i * 2, irandom_range(0, 11) * 40);
	__view_set(e__vw.wport, 1 + i * 2, 40);
	__view_set(e__vw.hport, 1 + i * 2, 40);
	__view_set(e__vw.viisible, 1 + i * 2, true);

	__view_set(e__vw.xview, 2 + i * 2, __view_get(e__vw.xport, 1 + i * 2));
	__view_set(e__vw.yview, 2 + i * 2, __view_get(e__vw.yport, 1 + i * 2));
	__view_set(e__vw.wview, 2 + i * 2, 40);
	__view_set(e__vw.hview, 2 + i * 2, 40);
	__view_set(e__vw.xport, 2 + i * 2, __view_get(e__vw.xview, 1 + i * 2));
	__view_set(e__vw.yport, 2 + i * 2, __view_get(e__vw.yview, 1 + i * 2));
	__view_set(e__vw.wport, 2 + i * 2, 40);
	__view_set(e__vw.hport, 2 + i * 2, 40);
	__view_set(e__vw.viisible, 2 + i * 2, true);
}

alarm[0] = 10