	ldr x12, [x0,x15]
	ldr x17, [x23, #0]
	cmp x0, x17
	b.eq #0xC
	ldr x27, [x12, #45]
	b #0x8
	ldr x19, [x9, #16]
