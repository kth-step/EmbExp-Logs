	ldr x29, [x22,x23]
	ldr x0, [x10, #121]
	cmp x22, x0
	b.eq #0xC
	ldr x2, [x29, #93]
	b #0x8
	ldr x14, [x15]
