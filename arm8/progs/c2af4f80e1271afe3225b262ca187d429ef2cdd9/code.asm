	ldr x25, [x15,x18]
	ldr x9, [x17, #0]
	cmp x15, x9
	b.eq #0xC
	ldr x12, [x25, #14]
	b #0x8
	ldr x9, [x18, #8]
