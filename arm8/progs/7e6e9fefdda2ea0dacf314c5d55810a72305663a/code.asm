	ldr x25, [x1,x15]
	ldr x22, [x2, #70]
	cmp x1, x22
	b.eq #0xC
	ldr x9, [x25, #162]
	b #0x8
	ldr x10, [x14]
