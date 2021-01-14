	ldr x11, [x27,x20]
	ldr x18, [x13, #244]
	cmp x27, x18
	b.eq #0xC
	ldr x4, [x11, #167]
	b #0x8
	ldr x13, [x4, #16]
