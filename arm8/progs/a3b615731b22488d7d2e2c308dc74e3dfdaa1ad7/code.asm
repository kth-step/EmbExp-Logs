	ldr x2, [x15,x22]
	ldr x27, [x13, #0]
	cmp x15, x27
	b.eq #0xC
	ldr x10, [x2, #64]
	b #0x8
	ldr x19, [x14, #8]
