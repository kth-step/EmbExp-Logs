	ldr x13, [x15,x8]
	ldr x9, [x27, #0]
	cmp x15, x9
	b.eq #0xC
	ldr x12, [x13, #71]
	b #0x8
	ldr x29, [x0, #8]
