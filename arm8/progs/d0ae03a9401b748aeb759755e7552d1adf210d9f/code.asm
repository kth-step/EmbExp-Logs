	ldr x2, [x13,x21]
	ldr x17, [x29, #0]
	cmp x13, x17
	b.eq #0xC
	ldr x20, [x2, #73]
	b #0x8
	ldr x26, [x19]
