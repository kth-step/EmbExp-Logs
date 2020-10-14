	ldr x13, [x25,x7]
	ldr x27, [x15, #0]
	cmp x25, x27
	b.eq #0xC
	ldr x0, [x13, #178]
	b #0x8
	ldr x17, [x18, #8]
