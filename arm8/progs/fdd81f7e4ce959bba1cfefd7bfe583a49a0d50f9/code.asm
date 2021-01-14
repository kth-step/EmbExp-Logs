	ldr x26, [x21,x15]
	ldr x28, [x12, #48]
	cmp x21, x28
	b.eq #0xC
	ldr x13, [x26, #219]
	b #0x8
	ldr x20, [x26, #8]
