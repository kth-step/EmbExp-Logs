	ldr x4, [x3,x3]
	ldr x29, [x25, #0]
	cmp x3, x29
	b.eq #0xC
	ldr x13, [x4, #176]
	b #0x8
	ldr x26, [x5]
