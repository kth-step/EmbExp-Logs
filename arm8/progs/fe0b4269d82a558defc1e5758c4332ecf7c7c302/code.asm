	ldr x9, [x24,x25]
	ldr x13, [x5, #130]
	cmp x24, x13
	b.eq #0xC
	ldr x17, [x9, #216]
	b #0x8
	ldr x28, [x25]
