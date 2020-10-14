	ldr x3, [x23,x27]
	ldr x9, [x23, #0]
	cmp x23, x9
	b.eq #0xC
	ldr x16, [x3, #14]
	b #0x8
	ldr x28, [x14]
