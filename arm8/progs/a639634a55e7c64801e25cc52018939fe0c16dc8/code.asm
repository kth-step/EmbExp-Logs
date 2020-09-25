	ldr x27, [x17,x29]
	ldr x11, [x18, #0]
	cmp x17, x11
	b.eq #0xC
	ldr x25, [x27, #143]
	b #0x8
	ldr x26, [x13, #16]
