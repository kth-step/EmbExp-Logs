	ldr x14, [x7,x27]
	ldr x29, [x11, #0]
	cmp x7, x29
	b.eq #0xC
	ldr x0, [x14, #20]
	b #0x8
	ldr x27, [x5, #16]
