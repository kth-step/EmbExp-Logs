	ldr x8, [x10,x5]
	ldr x15, [x13, #0]
	cmp x10, x15
	b.eq #0xC
	ldr x15, [x8, #168]
	b #0x8
	ldr x10, [x19, #16]
