	ldr x17, [x11,x11]
	ldr x11, [x14, #0]
	cmp x11, x11
	b.eq #0xC
	ldr x28, [x17, #101]
	b #0x8
	ldr x4, [x7, #16]
