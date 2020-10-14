	ldr x3, [x12,x19]
	ldr x25, [x13, #0]
	cmp x12, x25
	b.eq #0xC
	ldr x5, [x3, #229]
	b #0x8
	ldr x15, [x29, #4]
