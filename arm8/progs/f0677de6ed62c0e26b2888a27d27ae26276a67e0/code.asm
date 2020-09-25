	ldr x13, [x4,x3]
	ldr x4, [x16, #0]
	cmp x4, x4
	b.eq #0xC
	ldr x29, [x13, #219]
	b #0x8
	ldr x4, [x3, #8]
