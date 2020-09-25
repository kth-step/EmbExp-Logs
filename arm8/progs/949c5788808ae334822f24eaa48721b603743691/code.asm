	ldr x25, [x9,x20]
	ldr x21, [x4, #0]
	cmp x9, x21
	b.eq #0xC
	ldr x2, [x25, #80]
	b #0x8
	ldr x18, [x10, #8]
