	ldr x29, [x15,x19]
	ldr x4, [x14, #0]
	cmp x15, x4
	b.eq #0xC
	ldr x19, [x29, #166]
	b #0x8
	ldr x10, [x28]
