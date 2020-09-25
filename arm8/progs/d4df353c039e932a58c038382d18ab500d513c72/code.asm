	ldr x7, [x5,x3]
	ldr x10, [x26, #0]
	cmp x5, x10
	b.eq #0xC
	ldr x29, [x7, #35]
	b #0x8
	ldr x26, [x16, #16]
