	ldr x9, [x29,x20]
	ldr x16, [x13, #0]
	cmp x29, x16
	b.eq #0xC
	ldr x12, [x9, #21]
	b #0x8
	ldr x21, [x19]
