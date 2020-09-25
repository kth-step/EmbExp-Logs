	ldr x20, [x26,x26]
	ldr x26, [x7, #0]
	cmp x26, x26
	b.eq #0xC
	ldr x19, [x20, #25]
	b #0x8
	ldr x5, [x11, #16]
