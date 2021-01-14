	ldr x16, [x18,x19]
	ldr x7, [x11, #86]
	cmp x18, x7
	b.eq #0xC
	ldr x19, [x16, #218]
	b #0x8
	ldr x15, [x5]
