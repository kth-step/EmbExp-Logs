	ldr x11, [x5,x9]
	ldr x18, [x24, #0]
	cmp x5, x18
	b.eq #0xC
	ldr x6, [x11, #206]
	b #0x8
	ldr x20, [x17, #16]
