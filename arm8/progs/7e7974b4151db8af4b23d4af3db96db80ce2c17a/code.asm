	ldr x17, [x25,x26]
	ldr x14, [x11, #0]
	cmp x25, x14
	b.eq #0xC
	ldr x21, [x17, #66]
	b #0x8
	ldr x10, [x22, #8]
