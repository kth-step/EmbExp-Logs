	ldr x28, [x4,x15]
	ldr x23, [x27, #0]
	cmp x4, x23
	b.eq #0xC
	ldr x17, [x28, #136]
	b #0x8
	ldr x21, [x0]
