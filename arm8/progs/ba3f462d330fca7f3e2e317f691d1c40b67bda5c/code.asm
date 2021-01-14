	ldr x10, [x19,x21]
	ldr x2, [x8, #149]
	cmp x19, x2
	b.eq #0xC
	ldr x19, [x10, #147]
	b #0x8
	ldr x16, [x22, #8]
