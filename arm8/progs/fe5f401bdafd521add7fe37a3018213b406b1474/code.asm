	ldr x14, [x11,x3]
	ldr x5, [x3, #0]
	cmp x11, x5
	b.eq #0xC
	ldr x18, [x14, #248]
	b #0x8
	ldr x28, [x15, #4]
