	ldr x20, [x28,x23]
	ldr x17, [x24, #0]
	cmp x28, x17
	b.eq #0xC
	ldr x17, [x20, #228]
	b #0x8
	ldr x0, [x29]
