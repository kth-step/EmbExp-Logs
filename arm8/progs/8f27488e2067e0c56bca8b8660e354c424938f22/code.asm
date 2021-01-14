	ldr x23, [x26,x4]
	ldr x28, [x21, #198]
	cmp x26, x28
	b.eq #0xC
	ldr x5, [x23, #136]
	b #0x8
	ldr x5, [x26, #16]
