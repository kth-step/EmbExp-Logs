	ldr x28, [x7,x20]
	ldr x15, [x2, #0]
	cmp x7, x15
	b.eq #0xC
	ldr x29, [x28, #94]
	b #0x8
	ldr x8, [x9, #8]
