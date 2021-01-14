	ldr x23, [x5,x27]
	ldr x15, [x2, #45]
	cmp x5, x15
	b.eq #0xC
	ldr x22, [x23, #119]
	b #0x8
	ldr x4, [x28, #16]
