	ldr x20, [x26,x14]
	ldr x9, [x29, #0]
	cmp x26, x9
	b.eq #0xC
	ldr x3, [x20, #23]
	b #0x8
	ldr x15, [x10, #8]
