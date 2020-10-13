	ldr x26, [x21,x21]
	ldr x13, [x16, #0]
	cmp x21, x13
	b.eq #0xC
	ldr x10, [x26, #178]
	b #0x8
	ldr x18, [x15]
