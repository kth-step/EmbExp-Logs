	ldr x19, [x18,x10]
	ldr x23, [x9, #31]
	cmp x18, x23
	b.eq #0xC
	ldr x16, [x19, #63]
	b #0x8
	ldr x1, [x9]
