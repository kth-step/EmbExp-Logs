	ldr x28, [x25,x6]
	ldr x23, [x14, #0]
	cmp x25, x23
	b.eq #0xC
	ldr x4, [x28, #136]
	b #0x8
	ldr x3, [x29]
