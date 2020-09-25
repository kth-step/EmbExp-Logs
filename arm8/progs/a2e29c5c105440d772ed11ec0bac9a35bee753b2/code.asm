	ldr x23, [x5,x20]
	ldr x10, [x18, #0]
	cmp x5, x10
	b.eq #0xC
	ldr x14, [x23, #212]
	b #0x8
	ldr x13, [x28]
