	ldr x14, [x9,x9]
	ldr x10, [x25, #0]
	cmp x9, x10
	b.eq #0xC
	ldr x18, [x14, #181]
	b #0x8
	ldr x24, [x2, #8]
