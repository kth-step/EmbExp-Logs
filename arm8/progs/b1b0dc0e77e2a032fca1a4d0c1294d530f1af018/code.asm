	ldr x28, [x6,x3]
	ldr x6, [x9, #21]
	cmp x6, x6
	b.eq #0xC
	ldr x23, [x28, #193]
	b #0x8
	ldr x17, [x25, #16]
