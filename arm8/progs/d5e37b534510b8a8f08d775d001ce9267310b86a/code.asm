	ldr x4, [x9,x10]
	ldr x11, [x4, #0]
	cmp x9, x11
	b.eq #0xC
	ldr x21, [x4, #101]
	b #0x8
	ldr x15, [x17]
