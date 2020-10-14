	ldr x11, [x23,x18]
	ldr x14, [x9, #0]
	cmp x23, x14
	b.eq #0xC
	ldr x8, [x11, #13]
	b #0x8
	ldr x14, [x8, #16]
