	ldr x29, [x0,x13]
	ldr x1, [x13, #0]
	cmp x0, x1
	b.eq #0xC
	ldr x16, [x29, #2]
	b #0x8
	ldr x22, [x15]
