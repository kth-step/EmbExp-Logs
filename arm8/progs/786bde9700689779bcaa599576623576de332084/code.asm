	ldr x9, [x5,x14]
	ldr x8, [x22, #0]
	cmp x5, x8
	b.eq #0xC
	ldr x0, [x9, #240]
	b #0x8
	ldr x21, [x15, #8]
