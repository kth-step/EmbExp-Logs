	ldr x21, [x26,x20]
	ldr x9, [x18, #0]
	cmp x26, x9
	b.eq #0xC
	ldr x8, [x21, #123]
	b #0x8
	ldr x29, [x27, #16]
