	ldr x27, [x16,x20]
	ldr x24, [x27, #0]
	cmp x16, x24
	b.eq #0xC
	ldr x21, [x27, #14]
	b #0x8
	ldr x17, [x20, #16]
