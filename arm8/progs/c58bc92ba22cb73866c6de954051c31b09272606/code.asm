	ldr x16, [x1,x7]
	ldr x29, [x9, #0]
	cmp x1, x29
	b.eq #0xC
	ldr x13, [x16, #163]
	b #0x8
	ldr x3, [x7]
