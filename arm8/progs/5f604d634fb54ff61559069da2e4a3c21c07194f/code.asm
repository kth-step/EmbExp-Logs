	ldr x20, [x5,x11]
	ldr x27, [x19, #0]
	cmp x5, x27
	b.eq #0xC
	ldr x5, [x20, #160]
	b #0x8
	ldr x27, [x25, #8]
