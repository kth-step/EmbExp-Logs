	ldr x7, [x29,x9]
	ldr x29, [x13, #0]
	cmp x29, x29
	b.eq #0xC
	ldr x10, [x7, #246]
	b #0x8
	ldr x3, [x4, #8]
