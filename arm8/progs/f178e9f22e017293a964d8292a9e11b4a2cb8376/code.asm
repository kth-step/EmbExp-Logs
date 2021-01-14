	ldr x20, [x0,x1]
	ldr x18, [x13, #176]
	cmp x0, x18
	b.eq #0xC
	ldr x22, [x20, #145]
	b #0x8
	ldr x8, [x10, #4]
