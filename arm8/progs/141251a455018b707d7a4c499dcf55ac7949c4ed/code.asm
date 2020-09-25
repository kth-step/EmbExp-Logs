	ldr x20, [x15,x19]
	ldr x19, [x24, #0]
	cmp x15, x19
	b.eq #0xC
	ldr x13, [x20, #166]
	b #0x8
	ldr x27, [x3, #16]
