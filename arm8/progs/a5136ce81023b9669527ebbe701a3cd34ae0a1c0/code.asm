	ldr x24, [x20,x27]
	ldr x11, [x3, #0]
	cmp x20, x11
	b.eq #0xC
	ldr x21, [x24, #160]
	b #0x8
	ldr x25, [x10, #4]
