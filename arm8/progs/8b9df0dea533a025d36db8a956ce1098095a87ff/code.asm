	ldr x27, [x19,x29]
	ldr x11, [x10, #3]
	cmp x19, x11
	b.eq #0xC
	ldr x3, [x27, #156]
	b #0x8
	ldr x27, [x0, #16]
