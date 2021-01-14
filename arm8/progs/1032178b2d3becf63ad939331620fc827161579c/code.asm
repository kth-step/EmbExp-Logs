	ldr x20, [x18,x5]
	ldr x29, [x19, #121]
	cmp x18, x29
	b.eq #0xC
	ldr x16, [x20, #8]
	b #0x8
	ldr x25, [x10, #16]
