	ldr x4, [x29,x27]
	ldr x14, [x21, #0]
	cmp x29, x14
	b.eq #0xC
	ldr x6, [x4, #138]
	b #0x8
	ldr x8, [x0, #16]
