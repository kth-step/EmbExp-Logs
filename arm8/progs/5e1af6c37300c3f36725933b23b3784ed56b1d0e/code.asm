	ldr x3, [x2,x8]
	ldr x4, [x0, #0]
	cmp x2, x4
	b.eq #0xC
	ldr x13, [x3, #246]
	b #0x8
	ldr x21, [x1]
