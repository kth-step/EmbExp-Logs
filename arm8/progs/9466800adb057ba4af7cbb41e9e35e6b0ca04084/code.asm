	ldr x18, [x5,x14]
	ldr x8, [x9, #4]
	cmp x5, x8
	b.eq #0xC
	ldr x1, [x18, #219]
	b #0x8
	ldr x29, [x1, #4]
