	ldr x5, [x21,x0]
	ldr x3, [x29, #0]
	cmp x21, x3
	b.eq #0xC
	ldr x29, [x5, #138]
	b #0x8
	ldr x24, [x14, #16]
