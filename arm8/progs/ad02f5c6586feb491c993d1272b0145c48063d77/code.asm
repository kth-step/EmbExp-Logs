	ldr x18, [x16,x2]
	ldr x9, [x22, #0]
	cmp x16, x9
	b.eq #0xC
	ldr x21, [x18, #0]
	b #0x8
	ldr x8, [x15, #8]
