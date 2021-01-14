	ldr x23, [x11,x19]
	ldr x4, [x16, #30]
	cmp x11, x4
	b.eq #0xC
	ldr x0, [x23, #246]
	b #0x8
	ldr x9, [x5, #16]
