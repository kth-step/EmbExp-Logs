	ldr x12, [x21,x9]
	ldr x15, [x26, #62]
	cmp x21, x15
	b.eq #0xC
	ldr x25, [x12, #4]
	b #0x8
	ldr x6, [x9, #4]
