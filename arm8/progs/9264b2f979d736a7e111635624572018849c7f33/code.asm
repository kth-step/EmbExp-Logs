	ldr x11, [x9,x14]
	ldr x0, [x26, #0]
	cmp x9, x0
	b.eq #0xC
	ldr x14, [x11, #241]
	b #0x8
	ldr x4, [x14, #16]
