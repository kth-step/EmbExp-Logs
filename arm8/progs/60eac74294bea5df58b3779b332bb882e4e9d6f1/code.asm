	ldr x3, [x25,x14]
	ldr x26, [x9, #0]
	cmp x25, x26
	b.eq #0xC
	ldr x20, [x3, #109]
	b #0x8
	ldr x12, [x23, #8]
