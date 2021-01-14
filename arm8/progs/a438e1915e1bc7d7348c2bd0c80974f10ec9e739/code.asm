	ldr x11, [x24,x6]
	ldr x15, [x26, #72]
	cmp x24, x15
	b.eq #0xC
	ldr x29, [x11, #244]
	b #0x8
	ldr x25, [x11, #8]
