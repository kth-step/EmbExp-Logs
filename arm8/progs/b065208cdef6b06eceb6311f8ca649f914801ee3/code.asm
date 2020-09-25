	ldr x20, [x25,x29]
	ldr x21, [x22, #0]
	cmp x25, x21
	b.eq #0xC
	ldr x17, [x20, #184]
	b #0x8
	ldr x8, [x21]
