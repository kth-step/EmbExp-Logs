	ldr x10, [x26,x16]
	ldr x29, [x27, #0]
	cmp x26, x29
	b.eq #0xC
	ldr x2, [x10, #201]
	b #0x8
	ldr x0, [x0]
