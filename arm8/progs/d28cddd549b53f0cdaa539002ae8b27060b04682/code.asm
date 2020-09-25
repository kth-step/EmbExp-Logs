	ldr x25, [x21,x12]
	ldr x13, [x1, #0]
	cmp x21, x13
	b.eq #0xC
	ldr x1, [x25, #223]
	b #0x8
	ldr x15, [x25, #16]
