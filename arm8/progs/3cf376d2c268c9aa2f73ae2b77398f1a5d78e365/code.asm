	ldr x14, [x7,x23]
	ldr x6, [x0, #0]
	cmp x7, x6
	b.eq #0xC
	ldr x1, [x14, #140]
	b #0x8
	ldr x23, [x26]
