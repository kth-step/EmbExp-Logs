	ldr x9, [x21,x2]
	ldr x17, [x24, #0]
	cmp x21, x17
	b.eq #0xC
	ldr x11, [x9, #50]
	b #0x8
	ldr x17, [x12, #4]
