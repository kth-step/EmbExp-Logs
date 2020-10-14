	ldr x13, [x0,x25]
	ldr x16, [x15, #0]
	cmp x0, x16
	b.eq #0xC
	ldr x14, [x13, #128]
	b #0x8
	ldr x9, [x28, #4]
