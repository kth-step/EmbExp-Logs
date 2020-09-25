	ldr x5, [x9,x13]
	ldr x26, [x18, #0]
	cmp x9, x26
	b.eq #0xC
	ldr x29, [x5, #41]
	b #0x8
	ldr x29, [x1, #16]
