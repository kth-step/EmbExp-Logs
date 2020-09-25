	ldr x15, [x7,x18]
	ldr x5, [x11, #0]
	cmp x7, x5
	b.eq #0xC
	ldr x3, [x15, #7]
	b #0x8
	ldr x29, [x22, #16]
