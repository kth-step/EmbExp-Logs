	ldr x11, [x27,x15]
	ldr x23, [x4, #27]
	cmp x27, x23
	b.eq #0xC
	ldr x19, [x11, #242]
	b #0x8
	ldr x4, [x19, #8]
