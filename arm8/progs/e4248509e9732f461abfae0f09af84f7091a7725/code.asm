	ldr x7, [x15,x27]
	ldr x14, [x1, #0]
	cmp x15, x14
	b.eq #0xC
	ldr x2, [x7, #159]
	b #0x8
	ldr x25, [x4]
