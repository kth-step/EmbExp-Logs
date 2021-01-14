	ldr x13, [x1,x28]
	ldr x22, [x9, #253]
	cmp x1, x22
	b.eq #0xC
	ldr x9, [x13, #72]
	b #0x8
	ldr x21, [x0, #8]
