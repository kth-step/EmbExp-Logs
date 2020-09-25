	ldr x21, [x9,x16]
	ldr x20, [x10, #0]
	cmp x9, x20
	b.eq #0xC
	ldr x25, [x21, #101]
	b #0x8
	ldr x13, [x28, #8]
