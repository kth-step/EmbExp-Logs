	ldr x19, [x13,x29]
	ldr x9, [x10, #0]
	cmp x13, x9
	b.eq #0xC
	ldr x15, [x19, #62]
	b #0x8
	ldr x25, [x2]
