	ldr x23, [x24,x0]
	ldr x7, [x11, #0]
	cmp x24, x7
	b.eq #0xC
	ldr x29, [x23, #59]
	b #0x8
	ldr x12, [x3, #16]
