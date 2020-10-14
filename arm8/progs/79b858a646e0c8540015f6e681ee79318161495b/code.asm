	ldr x11, [x14,x28]
	ldr x24, [x19, #0]
	cmp x14, x24
	b.eq #0xC
	ldr x24, [x11, #66]
	b #0x8
	ldr x16, [x14, #4]
