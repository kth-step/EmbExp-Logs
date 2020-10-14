	ldr x4, [x5,x29]
	ldr x16, [x23, #0]
	cmp x5, x16
	b.eq #0xC
	ldr x18, [x4, #175]
	b #0x8
	ldr x9, [x24, #8]
