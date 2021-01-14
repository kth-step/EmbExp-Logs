	ldr x2, [x12,x28]
	ldr x28, [x19, #212]
	cmp x12, x28
	b.eq #0xC
	ldr x11, [x2, #0]
	b #0x8
	ldr x19, [x23]
