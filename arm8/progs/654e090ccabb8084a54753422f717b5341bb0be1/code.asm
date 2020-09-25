	ldr x18, [x4,x19]
	ldr x17, [x21, #0]
	cmp x4, x17
	b.eq #0xC
	ldr x27, [x18, #103]
	b #0x8
	ldr x15, [x23, #8]
