	ldr x18, [x13,x23]
	ldr x22, [x16, #0]
	cmp x13, x22
	b.eq #0xC
	ldr x25, [x18, #47]
	b #0x8
	ldr x2, [x21]
