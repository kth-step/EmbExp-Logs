	ldr x11, [x0,x17]
	ldr x29, [x16, #0]
	cmp x0, x29
	b.eq #0xC
	ldr x6, [x11, #151]
	b #0x8
	ldr x12, [x28, #16]
