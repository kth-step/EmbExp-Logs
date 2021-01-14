	ldr x23, [x11,x19]
	ldr x21, [x0, #28]
	cmp x11, x21
	b.eq #0xC
	ldr x10, [x23, #78]
	b #0x8
	ldr x11, [x24, #4]
