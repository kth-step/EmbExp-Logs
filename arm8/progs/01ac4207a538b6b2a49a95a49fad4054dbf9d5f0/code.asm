	ldr x7, [x23,x5]
	ldr x3, [x21, #0]
	cmp x23, x3
	b.eq #0xC
	ldr x24, [x7, #153]
	b #0x8
	ldr x16, [x25, #8]
