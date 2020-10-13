	ldr x14, [x16,x16]
	ldr x2, [x28, #0]
	cmp x16, x2
	b.eq #0xC
	ldr x9, [x14, #75]
	b #0x8
	ldr x13, [x19, #4]
