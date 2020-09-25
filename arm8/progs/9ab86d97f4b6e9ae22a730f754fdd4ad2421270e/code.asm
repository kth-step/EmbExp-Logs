	ldr x26, [x20,x19]
	ldr x12, [x13, #0]
	cmp x20, x12
	b.eq #0xC
	ldr x6, [x26, #244]
	b #0x8
	ldr x7, [x27, #16]
