	ldr x25, [x7,x0]
	ldr x14, [x17, #0]
	cmp x7, x14
	b.eq #0xC
	ldr x0, [x25, #148]
	b #0x8
	ldr x1, [x14, #16]
