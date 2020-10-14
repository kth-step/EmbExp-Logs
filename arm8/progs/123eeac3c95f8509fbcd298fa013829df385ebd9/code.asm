	ldr x6, [x15,x12]
	ldr x20, [x21, #0]
	cmp x15, x20
	b.eq #0xC
	ldr x27, [x6, #91]
	b #0x8
	ldr x26, [x11, #4]
