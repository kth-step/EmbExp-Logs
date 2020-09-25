	ldr x17, [x13,x16]
	ldr x18, [x4, #0]
	cmp x13, x18
	b.eq #0xC
	ldr x5, [x17, #175]
	b #0x8
	ldr x5, [x29, #8]
