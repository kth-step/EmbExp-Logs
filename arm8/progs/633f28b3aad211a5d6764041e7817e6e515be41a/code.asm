	ldr x2, [x5,x24]
	ldr x4, [x11, #88]
	cmp x5, x4
	b.eq #0xC
	ldr x27, [x2, #223]
	b #0x8
	ldr x11, [x28]
