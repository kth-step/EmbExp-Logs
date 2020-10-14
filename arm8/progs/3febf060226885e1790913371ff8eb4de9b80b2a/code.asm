	ldr x16, [x19,x11]
	ldr x26, [x1, #0]
	cmp x19, x26
	b.eq #0xC
	ldr x5, [x16, #200]
	b #0x8
	ldr x26, [x21, #8]
