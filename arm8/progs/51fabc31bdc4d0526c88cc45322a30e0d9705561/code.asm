	ldr x13, [x18,x0]
	ldr x25, [x2, #0]
	cmp x18, x25
	b.eq #0xC
	ldr x26, [x13, #178]
	b #0x8
	ldr x29, [x21, #4]
