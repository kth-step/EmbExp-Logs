	ldr x5, [x2,x9]
	ldr x10, [x23, #97]
	cmp x2, x10
	b.eq #0xC
	ldr x23, [x5, #102]
	b #0x8
	ldr x5, [x10]
