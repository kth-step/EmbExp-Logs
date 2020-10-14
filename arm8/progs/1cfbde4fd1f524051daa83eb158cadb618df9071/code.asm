	ldr x14, [x2,x21]
	ldr x3, [x21, #0]
	cmp x2, x3
	b.eq #0xC
	ldr x13, [x14, #90]
	b #0x8
	ldr x3, [x21, #4]
