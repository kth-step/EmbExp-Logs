	ldr x15, [x21,x8]
	ldr x23, [x13, #0]
	cmp x21, x23
	b.eq #0xC
	ldr x8, [x15, #188]
	b #0x8
	ldr x0, [x0, #8]
