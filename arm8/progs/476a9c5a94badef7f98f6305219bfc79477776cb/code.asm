	ldr x2, [x11,x5]
	ldr x22, [x6, #0]
	cmp x11, x22
	b.eq #0xC
	ldr x20, [x2, #200]
	b #0x8
	ldr x26, [x27, #4]
