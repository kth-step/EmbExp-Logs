	ldr x9, [x24,x23]
	ldr x11, [x5, #91]
	cmp x24, x11
	b.eq #0xC
	ldr x4, [x9, #246]
	b #0x8
	ldr x2, [x27, #8]
