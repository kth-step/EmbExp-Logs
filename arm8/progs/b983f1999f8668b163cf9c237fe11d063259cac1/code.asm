	ldr x6, [x9,x8]
	ldr x16, [x20, #0]
	cmp x9, x16
	b.eq #0xC
	ldr x15, [x6, #175]
	b #0x8
	ldr x10, [x6, #8]
