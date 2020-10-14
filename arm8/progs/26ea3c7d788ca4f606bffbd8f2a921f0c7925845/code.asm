	ldr x10, [x0,x13]
	ldr x21, [x2, #0]
	cmp x0, x21
	b.eq #0xC
	ldr x4, [x10, #80]
	b #0x8
	ldr x27, [x4, #16]
