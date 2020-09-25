	ldr x23, [x0,x20]
	ldr x29, [x22, #0]
	cmp x0, x29
	b.eq #0xC
	ldr x1, [x23, #93]
	b #0x8
	ldr x15, [x26, #16]
