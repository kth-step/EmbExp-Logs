	ldr x25, [x10,x5]
	ldr x5, [x10, #0]
	cmp x10, x5
	b.eq #0xC
	ldr x1, [x25, #205]
	b #0x8
	ldr x13, [x21]
