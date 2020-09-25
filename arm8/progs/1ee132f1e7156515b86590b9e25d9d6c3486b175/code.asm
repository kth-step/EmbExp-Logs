	ldr x18, [x15,x6]
	ldr x24, [x2, #0]
	cmp x15, x24
	b.eq #0xC
	ldr x11, [x18, #152]
	b #0x8
	ldr x20, [x15, #8]
