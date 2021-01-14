	ldr x11, [x15,x3]
	ldr x21, [x3, #72]
	cmp x15, x21
	b.eq #0xC
	ldr x8, [x11, #128]
	b #0x8
	ldr x17, [x9, #8]
