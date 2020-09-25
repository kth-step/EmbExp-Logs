	ldr x13, [x28,x1]
	ldr x20, [x27, #0]
	cmp x28, x20
	b.eq #0xC
	ldr x22, [x13, #147]
	b #0x8
	ldr x25, [x5, #8]
