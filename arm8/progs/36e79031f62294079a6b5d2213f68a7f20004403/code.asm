	ldr x8, [x14,x0]
	ldr x16, [x27, #0]
	cmp x14, x16
	b.eq #0xC
	ldr x16, [x8, #204]
	b #0x8
	ldr x23, [x9]
