	ldr x29, [x2,x11]
	ldr x10, [x14, #0]
	cmp x2, x10
	b.eq #0xC
	ldr x2, [x29, #195]
	b #0x8
	ldr x1, [x20]
