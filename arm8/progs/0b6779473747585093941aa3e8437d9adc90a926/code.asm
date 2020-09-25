	ldr x2, [x17,x15]
	ldr x18, [x20, #0]
	cmp x17, x18
	b.eq #0xC
	ldr x16, [x2, #221]
	b #0x8
	ldr x21, [x13]
