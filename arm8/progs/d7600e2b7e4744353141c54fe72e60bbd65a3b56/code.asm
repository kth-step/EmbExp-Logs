	ldr x8, [x25,x9]
	ldr x6, [x0, #248]
	cmp x25, x6
	b.eq #0xC
	ldr x20, [x8, #244]
	b #0x8
	ldr x23, [x3, #8]
