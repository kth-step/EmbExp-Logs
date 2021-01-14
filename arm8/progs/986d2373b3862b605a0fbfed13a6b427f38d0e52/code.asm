	ldr x6, [x20,x5]
	ldr x18, [x20, #202]
	cmp x20, x18
	b.eq #0xC
	ldr x13, [x6, #32]
	b #0x8
	ldr x0, [x18, #16]
