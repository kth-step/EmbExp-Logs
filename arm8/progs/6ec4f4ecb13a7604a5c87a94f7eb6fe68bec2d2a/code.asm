	ldr x22, [x27,x5]
	ldr x11, [x22, #0]
	cmp x27, x11
	b.eq #0xC
	ldr x24, [x22, #255]
	b #0x8
	ldr x26, [x9]
