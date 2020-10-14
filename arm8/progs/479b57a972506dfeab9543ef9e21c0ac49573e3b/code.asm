	ldr x11, [x4,x26]
	ldr x19, [x17, #0]
	cmp x4, x19
	b.eq #0xC
	ldr x13, [x11, #66]
	b #0x8
	ldr x16, [x20]
