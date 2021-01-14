	ldr x18, [x12,x11]
	ldr x17, [x13, #47]
	cmp x12, x17
	b.eq #0xC
	ldr x6, [x18, #94]
	b #0x8
	ldr x21, [x15, #16]
