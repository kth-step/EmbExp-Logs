	ldr x8, [x3,x21]
	ldr x27, [x11, #0]
	cmp x3, x27
	b.eq #0xC
	ldr x29, [x8, #253]
	b #0x8
	ldr x29, [x17, #16]
