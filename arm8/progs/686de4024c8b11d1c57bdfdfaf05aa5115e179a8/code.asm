	ldr x12, [x11,x29]
	ldr x4, [x27, #0]
	cmp x11, x4
	b.eq #0xC
	ldr x25, [x12, #185]
	b #0x8
	ldr x13, [x7]
