	ldr x9, [x15,x29]
	ldr x17, [x21, #0]
	cmp x15, x17
	b.eq #0xC
	ldr x0, [x9, #94]
	b #0x8
	ldr x28, [x21, #16]
