	ldr x16, [x25,x28]
	ldr x14, [x29, #0]
	cmp x25, x14
	b.eq #0xC
	ldr x0, [x16, #184]
	b #0x8
	ldr x19, [x2, #4]
