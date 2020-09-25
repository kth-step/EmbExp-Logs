	ldr x27, [x19,x16]
	ldr x29, [x15, #0]
	cmp x19, x29
	b.eq #0xC
	ldr x17, [x27, #235]
	b #0x8
	ldr x6, [x3]
