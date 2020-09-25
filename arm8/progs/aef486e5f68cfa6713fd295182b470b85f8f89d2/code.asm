	ldr x16, [x11,x17]
	ldr x6, [x5, #0]
	cmp x11, x6
	b.eq #0xC
	ldr x15, [x16, #244]
	b #0x8
	ldr x28, [x8, #16]
