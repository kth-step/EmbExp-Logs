	ldr x12, [x25,x27]
	ldr x29, [x20, #0]
	cmp x25, x29
	b.eq #0xC
	ldr x2, [x12, #49]
	b #0x8
	ldr x15, [x15, #4]
