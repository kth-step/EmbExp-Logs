	ldr x18, [x11,x7]
	ldr x5, [x24, #0]
	cmp x11, x5
	b.eq #0xC
	ldr x28, [x18, #30]
	b #0x8
	ldr x26, [x7, #16]
