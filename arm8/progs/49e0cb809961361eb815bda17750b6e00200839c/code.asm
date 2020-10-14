	ldr x17, [x3,x8]
	ldr x24, [x20, #0]
	cmp x3, x24
	b.eq #0xC
	ldr x15, [x17, #19]
	b #0x8
	ldr x17, [x28, #4]
