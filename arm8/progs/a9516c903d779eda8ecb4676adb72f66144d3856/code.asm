	ldr x19, [x7,x26]
	ldr x2, [x13, #0]
	cmp x7, x2
	b.eq #0xC
	ldr x14, [x19, #150]
	b #0x8
	ldr x29, [x13, #16]
