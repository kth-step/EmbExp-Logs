	ldr x16, [x23,x7]
	ldr x10, [x24, #0]
	cmp x23, x10
	b.eq #0xC
	ldr x6, [x16, #71]
	b #0x8
	ldr x28, [x8]
