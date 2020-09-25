	ldr x27, [x5,x0]
	ldr x1, [x24, #0]
	cmp x5, x1
	b.eq #0xC
	ldr x23, [x27, #218]
	b #0x8
	ldr x16, [x18, #16]
