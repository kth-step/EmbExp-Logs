	ldr x9, [x8,x8]
	ldr x16, [x8, #0]
	cmp x8, x16
	b.eq #0xC
	ldr x7, [x9, #244]
	b #0x8
	ldr x17, [x9, #16]
