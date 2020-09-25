	ldr x20, [x1,x1]
	ldr x8, [x27, #0]
	cmp x1, x8
	b.eq #0xC
	ldr x2, [x20, #94]
	b #0x8
	ldr x21, [x25]
