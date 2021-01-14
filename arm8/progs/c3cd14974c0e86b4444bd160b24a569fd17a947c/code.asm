	ldr x20, [x28,x19]
	ldr x6, [x24, #56]
	cmp x28, x6
	b.eq #0xC
	ldr x2, [x20, #142]
	b #0x8
	ldr x13, [x25, #8]
