	ldr x14, [x27,x26]
	ldr x6, [x1, #0]
	cmp x27, x6
	b.eq #0xC
	ldr x11, [x14, #40]
	b #0x8
	ldr x20, [x2]
