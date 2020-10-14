	ldr x27, [x23,x20]
	ldr x4, [x6, #0]
	cmp x23, x4
	b.eq #0xC
	ldr x25, [x27, #205]
	b #0x8
	ldr x11, [x7]
