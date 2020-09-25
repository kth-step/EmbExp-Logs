	ldr x12, [x16,x11]
	ldr x28, [x13, #0]
	cmp x16, x28
	b.eq #0xC
	ldr x14, [x12, #141]
	b #0x8
	ldr x20, [x28]
