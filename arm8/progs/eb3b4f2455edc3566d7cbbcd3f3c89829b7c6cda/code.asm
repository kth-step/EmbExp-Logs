	ldr x14, [x13,x19]
	ldr x21, [x8, #0]
	cmp x13, x21
	b.eq #0xC
	ldr x21, [x14, #165]
	b #0x8
	ldr x0, [x26, #16]
