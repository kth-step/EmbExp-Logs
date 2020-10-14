	ldr x27, [x15,x22]
	ldr x29, [x17, #0]
	cmp x15, x29
	b.eq #0xC
	ldr x12, [x27, #204]
	b #0x8
	ldr x17, [x9, #8]
