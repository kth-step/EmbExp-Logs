	ldr x19, [x10,x11]
	ldr x23, [x29, #209]
	cmp x10, x23
	b.eq #0xC
	ldr x3, [x19, #156]
	b #0x8
	ldr x9, [x10, #4]
