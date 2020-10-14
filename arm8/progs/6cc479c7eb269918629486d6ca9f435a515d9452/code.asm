	ldr x16, [x10,x27]
	ldr x8, [x25, #0]
	cmp x10, x8
	b.eq #0xC
	ldr x6, [x16, #69]
	b #0x8
	ldr x14, [x10]
