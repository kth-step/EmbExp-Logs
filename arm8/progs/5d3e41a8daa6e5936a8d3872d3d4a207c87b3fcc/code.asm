	ldr x19, [x25,x2]
	ldr x17, [x3, #182]
	cmp x25, x17
	b.eq #0xC
	ldr x11, [x19, #73]
	b #0x8
	ldr x26, [x27, #4]
