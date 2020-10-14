	ldr x13, [x0,x27]
	ldr x8, [x16, #0]
	cmp x0, x8
	b.eq #0xC
	ldr x20, [x13, #148]
	b #0x8
	ldr x25, [x13, #16]
