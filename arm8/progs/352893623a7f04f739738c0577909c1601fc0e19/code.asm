	ldr x19, [x5,x16]
	ldr x26, [x3, #0]
	cmp x5, x26
	b.eq #0xC
	ldr x12, [x19, #223]
	b #0x8
	ldr x0, [x0, #8]
