	ldr x27, [x3,x16]
	ldr x19, [x13, #0]
	cmp x3, x19
	b.eq #0xC
	ldr x12, [x27, #37]
	b #0x8
	ldr x8, [x20, #8]
