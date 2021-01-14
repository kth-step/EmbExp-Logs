	ldr x4, [x17,x14]
	ldr x10, [x13, #27]
	cmp x17, x10
	b.eq #0xC
	ldr x3, [x4, #153]
	b #0x8
	ldr x29, [x7, #8]
