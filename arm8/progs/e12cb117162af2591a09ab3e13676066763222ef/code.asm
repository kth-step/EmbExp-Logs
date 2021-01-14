	ldr x9, [x0,x7]
	ldr x27, [x11, #140]
	cmp x0, x27
	b.eq #0xC
	ldr x15, [x9, #12]
	b #0x8
	ldr x17, [x18, #16]
