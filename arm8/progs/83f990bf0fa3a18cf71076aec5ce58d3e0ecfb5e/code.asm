	ldr x7, [x6,x2]
	ldr x16, [x25, #0]
	cmp x6, x16
	b.eq #0xC
	ldr x24, [x7, #109]
	b #0x8
	ldr x10, [x9]
