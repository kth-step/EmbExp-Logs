	ldr x4, [x9,x6]
	ldr x24, [x23, #0]
	cmp x9, x24
	b.eq #0xC
	ldr x1, [x4, #68]
	b #0x8
	ldr x4, [x27, #8]
