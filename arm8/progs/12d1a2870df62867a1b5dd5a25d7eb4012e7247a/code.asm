	ldr x16, [x21,x12]
	ldr x7, [x10, #0]
	cmp x21, x7
	b.eq #0xC
	ldr x13, [x16, #153]
	b #0x8
	ldr x29, [x7]
