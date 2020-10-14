	ldr x28, [x15,x9]
	ldr x23, [x2, #0]
	cmp x15, x23
	b.eq #0xC
	ldr x3, [x28, #179]
	b #0x8
	ldr x20, [x18, #16]
