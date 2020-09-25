	ldr x23, [x19,x21]
	ldr x14, [x8, #0]
	cmp x19, x14
	b.eq #0xC
	ldr x5, [x23, #95]
	b #0x8
	ldr x19, [x9, #4]
