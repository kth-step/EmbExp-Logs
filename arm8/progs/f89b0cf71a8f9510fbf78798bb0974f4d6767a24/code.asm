	ldr x17, [x20,x29]
	ldr x27, [x3, #0]
	cmp x20, x27
	b.eq #0xC
	ldr x19, [x17, #43]
	b #0x8
	ldr x21, [x3]
