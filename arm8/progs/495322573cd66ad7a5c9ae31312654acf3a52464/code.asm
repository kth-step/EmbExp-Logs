	ldr x11, [x9,x10]
	ldr x6, [x5, #0]
	cmp x9, x6
	b.eq #0xC
	ldr x19, [x11, #254]
	b #0x8
	ldr x28, [x11, #8]
