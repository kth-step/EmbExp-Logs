	ldr x5, [x28,x20]
	ldr x22, [x17, #0]
	cmp x28, x22
	b.eq #0xC
	ldr x11, [x5, #51]
	b #0x8
	ldr x26, [x12, #16]
