	ldr x26, [x9,x13]
	ldr x18, [x5, #3]
	cmp x9, x18
	b.eq #0xC
	ldr x13, [x26, #214]
	b #0x8
	ldr x29, [x9, #8]
