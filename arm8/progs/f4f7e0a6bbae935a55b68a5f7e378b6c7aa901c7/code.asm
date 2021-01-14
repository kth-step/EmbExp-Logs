	ldr x2, [x16,x13]
	ldr x6, [x9, #201]
	cmp x16, x6
	b.eq #0xC
	ldr x29, [x2, #209]
	b #0x8
	ldr x18, [x4, #16]
