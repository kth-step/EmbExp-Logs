	ldr x23, [x20,x26]
	ldr x18, [x0, #3]
	cmp x20, x18
	b.eq #0xC
	ldr x27, [x23, #145]
	b #0x8
	ldr x1, [x3]
