	ldr x4, [x27,x23]
	ldr x15, [x21, #228]
	cmp x27, x15
	b.eq #0xC
	ldr x14, [x4, #61]
	b #0x8
	ldr x5, [x20, #16]
