	ldr x24, [x28,x5]
	ldr x2, [x11, #100]
	cmp x28, x2
	b.eq #0xC
	ldr x21, [x24, #142]
	b #0x8
	ldr x17, [x20]
