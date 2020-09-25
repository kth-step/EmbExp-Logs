	ldr x29, [x14,x2]
	ldr x1, [x5, #0]
	cmp x14, x1
	b.eq #0xC
	ldr x26, [x29, #2]
	b #0x8
	ldr x18, [x2, #4]
