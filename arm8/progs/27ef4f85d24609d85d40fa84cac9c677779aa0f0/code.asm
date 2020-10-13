	ldr x6, [x24,x2]
	ldr x0, [x13, #0]
	cmp x24, x0
	b.eq #0xC
	ldr x13, [x6, #241]
	b #0x8
	ldr x24, [x14, #16]
