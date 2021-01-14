	ldr x7, [x0,x10]
	ldr x21, [x27, #48]
	cmp x0, x21
	b.eq #0xC
	ldr x2, [x7, #94]
	b #0x8
	ldr x15, [x25, #4]
