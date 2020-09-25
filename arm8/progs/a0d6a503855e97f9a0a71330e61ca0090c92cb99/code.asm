	ldr x28, [x24,x3]
	ldr x29, [x20, #0]
	cmp x24, x29
	b.eq #0xC
	ldr x14, [x28, #84]
	b #0x8
	ldr x25, [x26, #16]
