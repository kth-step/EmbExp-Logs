	ldr x11, [x22,x15]
	ldr x3, [x0, #0]
	cmp x22, x3
	b.eq #0xC
	ldr x2, [x11, #113]
	b #0x8
	ldr x15, [x1]
