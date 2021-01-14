	ldr x2, [x25,x12]
	ldr x29, [x5, #58]
	cmp x25, x29
	b.eq #0xC
	ldr x4, [x2, #207]
	b #0x8
	ldr x8, [x3]
