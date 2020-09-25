	ldr x16, [x22,x13]
	ldr x19, [x11, #0]
	cmp x22, x19
	b.eq #0xC
	ldr x11, [x16, #252]
	b #0x8
	ldr x13, [x3, #16]
