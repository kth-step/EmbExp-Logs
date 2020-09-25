	ldr x12, [x27,x25]
	ldr x21, [x28, #0]
	cmp x27, x21
	b.eq #0xC
	ldr x23, [x12, #8]
	b #0x8
	ldr x9, [x20]
