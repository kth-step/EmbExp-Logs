	ldr x26, [x12,x2]
	ldr x8, [x11, #0]
	cmp x12, x8
	b.eq #0xC
	ldr x29, [x26, #39]
	b #0x8
	ldr x22, [x5]
