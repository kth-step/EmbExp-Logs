	ldr x12, [x23,x26]
	ldr x7, [x3, #0]
	cmp x23, x7
	b.eq #0xC
	ldr x6, [x12, #150]
	b #0x8
	ldr x24, [x25, #16]
