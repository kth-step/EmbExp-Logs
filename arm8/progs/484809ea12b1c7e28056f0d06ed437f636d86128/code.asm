	ldr x9, [x23,x24]
	ldr x4, [x7, #0]
	cmp x23, x4
	b.eq #0xC
	ldr x13, [x9, #17]
	b #0x8
	ldr x23, [x21]
