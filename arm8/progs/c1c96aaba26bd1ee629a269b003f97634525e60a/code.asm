	ldr x6, [x7,x20]
	ldr x18, [x11, #0]
	cmp x7, x18
	b.eq #0xC
	ldr x19, [x6, #94]
	b #0x8
	ldr x29, [x21, #8]
