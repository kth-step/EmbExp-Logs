	ldr x14, [x24,x16]
	ldr x17, [x24, #0]
	cmp x24, x17
	b.eq #0xC
	ldr x11, [x14, #239]
	b #0x8
	ldr x21, [x7, #16]
