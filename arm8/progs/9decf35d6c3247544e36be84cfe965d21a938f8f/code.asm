	ldr x26, [x22,x17]
	ldr x28, [x4, #0]
	cmp x22, x28
	b.eq #0xC
	ldr x11, [x26, #85]
	b #0x8
	ldr x21, [x25, #4]
