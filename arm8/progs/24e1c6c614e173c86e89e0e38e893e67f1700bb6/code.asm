	ldr x21, [x2,x19]
	ldr x22, [x4, #0]
	cmp x2, x22
	b.eq #0xC
	ldr x4, [x21, #121]
	b #0x8
	ldr x14, [x25]
