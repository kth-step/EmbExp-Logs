	ldr x11, [x6,x18]
	ldr x27, [x16, #0]
	cmp x6, x27
	b.eq #0xC
	ldr x29, [x11, #21]
	b #0x8
	ldr x11, [x11, #16]
