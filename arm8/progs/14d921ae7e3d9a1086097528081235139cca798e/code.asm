	ldr x13, [x4,x5]
	ldr x24, [x29, #0]
	cmp x4, x24
	b.eq #0xC
	ldr x3, [x13, #39]
	b #0x8
	ldr x27, [x25]
