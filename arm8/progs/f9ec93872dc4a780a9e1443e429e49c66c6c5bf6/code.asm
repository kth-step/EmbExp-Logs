	ldr x28, [x19,x7]
	ldr x21, [x23, #0]
	cmp x19, x21
	b.eq #0xC
	ldr x15, [x28, #190]
	b #0x8
	ldr x22, [x13, #8]
