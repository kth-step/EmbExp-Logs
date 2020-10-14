	ldr x12, [x7,x19]
	ldr x19, [x3, #0]
	cmp x7, x19
	b.eq #0xC
	ldr x23, [x12, #88]
	b #0x8
	ldr x12, [x5, #8]
