	ldr x7, [x27,x25]
	ldr x13, [x25, #0]
	cmp x27, x13
	b.eq #0xC
	ldr x28, [x7, #53]
	b #0x8
	ldr x24, [x7]
