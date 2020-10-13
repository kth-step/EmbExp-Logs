	ldr x17, [x2,x19]
	ldr x24, [x18, #0]
	cmp x2, x24
	b.eq #0xC
	ldr x7, [x17, #253]
	b #0x8
	ldr x5, [x9, #8]
