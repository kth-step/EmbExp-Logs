	ldr x28, [x20,x11]
	ldr x8, [x15, #0]
	cmp x20, x8
	b.eq #0xC
	ldr x3, [x28, #124]
	b #0x8
	ldr x1, [x26, #16]
