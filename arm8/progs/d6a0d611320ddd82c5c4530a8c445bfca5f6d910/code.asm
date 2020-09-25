	ldr x27, [x8,x1]
	ldr x21, [x1, #0]
	cmp x8, x21
	b.eq #0xC
	ldr x29, [x27, #51]
	b #0x8
	ldr x9, [x3]
