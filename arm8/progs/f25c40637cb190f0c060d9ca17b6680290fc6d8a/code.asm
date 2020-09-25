	ldr x24, [x9,x0]
	ldr x3, [x2, #0]
	cmp x9, x3
	b.eq #0xC
	ldr x15, [x24, #97]
	b #0x8
	ldr x7, [x9]
