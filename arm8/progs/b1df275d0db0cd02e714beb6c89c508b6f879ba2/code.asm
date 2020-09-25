	ldr x9, [x11,x0]
	ldr x1, [x17, #0]
	cmp x11, x1
	b.eq #0xC
	ldr x8, [x9, #66]
	b #0x8
	ldr x1, [x24, #16]
