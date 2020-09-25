	ldr x24, [x23,x8]
	ldr x2, [x21, #0]
	cmp x23, x2
	b.eq #0xC
	ldr x13, [x24, #150]
	b #0x8
	ldr x8, [x29, #4]
