	ldr x16, [x9,x5]
	ldr x0, [x9, #215]
	cmp x9, x0
	b.eq #0xC
	ldr x18, [x16, #223]
	b #0x8
	ldr x25, [x16, #8]
