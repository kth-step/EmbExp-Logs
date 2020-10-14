	ldr x20, [x15,x28]
	ldr x2, [x13, #0]
	cmp x15, x2
	b.eq #0xC
	ldr x5, [x20, #153]
	b #0x8
	ldr x24, [x29]
