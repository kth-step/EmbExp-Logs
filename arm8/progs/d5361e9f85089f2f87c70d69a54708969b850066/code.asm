	ldr x23, [x25,x28]
	ldr x12, [x10, #153]
	cmp x25, x12
	b.eq #0xC
	ldr x17, [x23, #65]
	b #0x8
	ldr x22, [x25]
