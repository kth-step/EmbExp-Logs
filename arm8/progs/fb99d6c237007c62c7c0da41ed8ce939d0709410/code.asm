	ldr x5, [x1,x15]
	ldr x14, [x4, #0]
	cmp x1, x14
	b.eq #0xC
	ldr x26, [x5, #144]
	b #0x8
	ldr x2, [x25, #4]
