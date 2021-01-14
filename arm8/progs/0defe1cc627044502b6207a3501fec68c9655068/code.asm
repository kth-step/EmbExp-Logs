	ldr x4, [x8,x11]
	ldr x29, [x5, #200]
	cmp x8, x29
	b.eq #0xC
	ldr x18, [x4, #46]
	b #0x8
	ldr x21, [x6, #4]
