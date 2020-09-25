	ldr x17, [x3,x14]
	ldr x8, [x20, #0]
	cmp x3, x8
	b.eq #0xC
	ldr x21, [x17, #78]
	b #0x8
	ldr x29, [x9]
