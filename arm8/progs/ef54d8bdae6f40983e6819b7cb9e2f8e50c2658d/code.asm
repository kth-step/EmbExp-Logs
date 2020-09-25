	ldr x14, [x10,x12]
	ldr x26, [x11, #0]
	cmp x10, x26
	b.eq #0xC
	ldr x7, [x14, #66]
	b #0x8
	ldr x10, [x5, #4]
