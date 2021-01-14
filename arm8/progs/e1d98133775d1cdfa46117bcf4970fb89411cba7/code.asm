	ldr x18, [x17,x19]
	ldr x8, [x25, #167]
	cmp x17, x8
	b.eq #0xC
	ldr x10, [x18, #15]
	b #0x8
	ldr x21, [x2]
