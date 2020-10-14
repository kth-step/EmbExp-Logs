	ldr x3, [x10,x26]
	ldr x8, [x24, #0]
	cmp x10, x8
	b.eq #0xC
	ldr x5, [x3, #241]
	b #0x8
	ldr x0, [x9, #8]
